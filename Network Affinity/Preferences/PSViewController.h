/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: /System/Library/PrivateFrameworks/Preferences.framework/Preferences
 */

#import "PSController.h"

@class PSSpecifier, PSRootController, UIViewController;

@interface PSViewController : UIViewController <PSController> {
	UIViewController<PSController> *_parentController;	// 152 = 0x98
	PSRootController *_rootController;	// 156 = 0x9c
	PSSpecifier *_specifier;	// 160 = 0xa0
}
@property(retain) id parentController;	// G=0x9429; S=0x9419; converted property
@property(retain) PSRootController *rootController;	// G=0x9449; S=0x9439; converted property
@property(retain) PSSpecifier *specifier;	// G=0x9459; S=0x949d; converted property
- (BOOL)canBeShownFromSuspendedState;	// 0x9495
- (void)dealloc;	// 0x9591
- (void)didLock;	// 0x9475
- (void)didUnlock;	// 0x947d
- (void)didWake;	// 0x9481
- (void)formSheetViewDidDisappear;	// 0x9491
- (void)formSheetViewWillDisappear;	// 0x948d
- (void)forwardInvocation:(id)invocation;	// 0x9569
- (void)handleURL:(id)url;	// 0x9545
- (id)methodSignatureForSelector:(SEL)selector;	// 0x95dd
// converted property getter: - (id)parentController;	// 0x9429
- (void)popupViewDidDisappear;	// 0x9489
- (void)popupViewWillDisappear;	// 0x9485
- (void)pushController:(id)controller;	// 0x9521
- (id)readPreferenceValue:(id)value;	// 0x9505
// converted property getter: - (id)rootController;	// 0x9449
// converted property setter: - (void)setParentController:(id)controller;	// 0x9419
- (void)setPreferenceValue:(id)value specifier:(id)specifier;	// 0x94e5
// converted property setter: - (void)setRootController:(id)controller;	// 0x9439
// converted property setter: - (void)setSpecifier:(id)specifier;	// 0x949d
- (BOOL)shouldAutorotateToInterfaceOrientation:(int)interfaceOrientation;	// 0x9649
// converted property getter: - (id)specifier;	// 0x9459
- (void)statusBarWillAnimateByHeight:(float)statusBar;	// 0x9499
- (void)suspend;	// 0x9471
- (void)willBecomeActive;	// 0x946d
- (void)willResignActive;	// 0x9469
- (void)willUnlock;	// 0x9479
@end

