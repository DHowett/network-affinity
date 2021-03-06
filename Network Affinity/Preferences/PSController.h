/**
 * This header is generated by class-dump-z 0.2a.
 * class-dump-z is Copyright (C) 2009 by KennyTM~, licensed under GPLv3.
 *
 * Source: /System/Library/PrivateFrameworks/Preferences.framework/Preferences
 */

@protocol PSController <NSObject>
@property(retain) id parentController;	// converted property
@property(retain) id rootController;	// converted property
@property(retain) id specifier;	// converted property
- (BOOL)canBeShownFromSuspendedState;
- (void)didLock;
- (void)didUnlock;
- (void)didWake;
- (void)handleURL:(id)url;
// converted property getter: - (id)parentController;
- (void)pushController:(id)controller;
- (id)readPreferenceValue:(id)value;
// converted property getter: - (id)rootController;
// converted property setter: - (void)setParentController:(id)controller;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
// converted property setter: - (void)setRootController:(id)controller;
// converted property setter: - (void)setSpecifier:(id)specifier;
// converted property getter: - (id)specifier;
- (void)statusBarWillAnimateByHeight:(float)statusBar;
- (void)suspend;
- (void)willBecomeActive;
- (void)willResignActive;
- (void)willUnlock;
@end

