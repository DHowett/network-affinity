//
//  DHNAListController.m
//  Network Affinity
//
//  Created by Dustin Howett on 11/4/11.
//

#import "DHNAListController.h"

static int callback(void *c, void*a, void*cd, void*w) {
    return 0;
}

void *_CTServerConnectionCreate(CFAllocatorRef, int(*)(void*,void*,void*,void*), void*);
void _CTServerConnectionSetRATSelection(void*, void*, CFStringRef, CFStringRef);
void _CTServerConnectionGetRATSelection(void*, void*, CFStringRef*, CFStringRef*);

extern CFStringRef kCTRegistrationRATSelection0; // GSM
extern CFStringRef kCTRegistrationRATSelection1; // (Dual)
extern CFStringRef kCTRegistrationRATSelection2; // UMTS
extern CFStringRef kCTRegistrationRATSelection3; // CDMA 1x
extern CFStringRef kCTRegistrationRATSelection4; // CDMA 1x + EV-DO
extern CFStringRef kCTRegistrationRATSelection5; // CDMA Hybrid
extern CFStringRef kCTRegistrationRATSelection6; // LTE
extern CFStringRef kCTRegistrationRATSelection7; // Automatic

@implementation DHNAListController
- (id)specifiers {
    if(!_specifiers) {
        _specifiers = [[self loadSpecifiersFromPlistName:@"Network Affinity" target:self] retain];
    }
    return _specifiers;
}

- (NSArray *)networkAffinityValues:(PSSpecifier *)spec {
    return [NSArray arrayWithObjects:[NSNumber numberWithInt:0], [NSNumber numberWithInt:1], [NSNumber numberWithInt:2], [NSNumber numberWithInt:3], [NSNumber numberWithInt:4], [NSNumber numberWithInt:5], [NSNumber numberWithInt:6], [NSNumber numberWithInt:7], nil];
}

- (NSArray *)networkAffinityTitles:(PSSpecifier *)spec {
    return [NSArray arrayWithObjects:@"None?", @"GSM", @"Dual + UMTS", @"CDMA (1xRTT)", @"CDMA (1xRTT + EV-DO Rev. A)", @"CDMA (Hybrid)", @"LTE Only", @"Automatic", nil];
}

- (NSNumber *)getNetworkAffinity:(PSSpecifier *)spec {
    char *wtf;
    wtf = (char*)calloc(1,16);
    NSString *r1 = NULL, *r2 = NULL;
    void *co = _CTServerConnectionCreate(kCFAllocatorDefault, callback, wtf);
    _CTServerConnectionGetRATSelection(co, co, (CFStringRef*)&r1, (CFStringRef*)&r2);
    int x = 0;
    if([r1 isEqualToString:(id)kCTRegistrationRATSelection0]) {
        x = 1;
    } else if([r1 isEqualToString:(id)kCTRegistrationRATSelection1] || [r1 isEqualToString:(id)kCTRegistrationRATSelection2]) {
        x = 2;
    } else if([r1 isEqualToString:(id)kCTRegistrationRATSelection3]) {
        x = 3;
    } else if([r1 isEqualToString:(id)kCTRegistrationRATSelection4]) {
        x = 4;
    } else if([r1 isEqualToString:(id)kCTRegistrationRATSelection5]) {
        x = 5;
    } else if([r1 isEqualToString:(id)kCTRegistrationRATSelection6]) {
        x = 6;
    } else if([r1 isEqualToString:(id)kCTRegistrationRATSelection7]) {
        x = 7;
    }
    return [NSNumber numberWithInt:x];
}

- (void)setNetworkAffinity:(NSNumber *)affinity forSpecifier:(PSSpecifier *)specifier {
    char *wtf;
    wtf = (char*)calloc(1,16);
    CFStringRef r1 = NULL, r2 = NULL;
    switch([affinity intValue]) {
        case 0:
            r1 = r2 = NULL;
            break;
        case 1:
            r1 = kCTRegistrationRATSelection0;
            break;
        case 2:
            r1 = kCTRegistrationRATSelection2;
            r2 = kCTRegistrationRATSelection1;
            break;
        case 3:
            r1 = kCTRegistrationRATSelection3;
            break;
        case 4:
            r1 = kCTRegistrationRATSelection4;
            break;
        case 5:
            r1 = kCTRegistrationRATSelection5;
            break;
        case 6:
            r1 = kCTRegistrationRATSelection6;
            break;
        case 7:
            r1 = kCTRegistrationRATSelection7;
            break;
    }
    void *co = _CTServerConnectionCreate(kCFAllocatorDefault, callback, wtf);
    _CTServerConnectionSetRATSelection(co, co, r1, r2);
}
@end
