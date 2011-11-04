//
//  DHNARootController.m
//  Network Affinity
//
//  Created by Dustin Howett on 11/4/11.
//

#import "DHNARootController.h"
#import "DHNAListController.h"

@implementation DHNARootController
@synthesize rootListController = _rootListController;
- (void)loadView {
    [super loadView];
    [self pushViewController:[self rootListController] animated:NO];
}

- (void)dealloc {
    [_rootListController release];
    [super dealloc];
}

- (PSListController *)rootListController {
    if(!_rootListController) {
        PSSpecifier *spec = [[PSSpecifier alloc] init];
        [spec setTarget:self];
        spec.name = @"Network Affinity";
        _rootListController = [[DHNAListController alloc] initForContentSize:CGSizeZero];
        _rootListController.rootController = self;
        _rootListController.parentController = self;
        [_rootListController setSpecifier:spec];
        [spec release];
    }
    return _rootListController;
}
@end
