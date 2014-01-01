//
//  RMErrorRecoveryAttempter+PRIExtensions.h
//  GitHub
//
//  Created by Justin Spahr-Summers on 2013-07-24.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import "RMErrorRecoveryAttempter.h"

@class RACSignal;

@interface RMErrorRecoveryAttempter (PRIExtensions)

// Adds a recovery option with the given title.
//
// When recovery is attempted using this option, the given signal will be
// subscribed to. If the signal completes successfully, recovery is considered
// a success.
//
// localizedTitle - The title of the recovery option, used as a button title.
// recoverySignal - A signal to subscribe to for recovery. This signal must be
//                  reentrant on the main run loop, and must not be nil.
- (void)pri_addRecoveryOptionWithLocalizedTitle:(NSString *)localizedTitle recoverySignal:(RACSignal *)recoverySignal;

@end

// lol informal protocols
@interface NSObject (NSErrorRecoveryAttemptingPRIExtensions)

// Attempts error recovery.
//
// error               - The error to recover from.
// recoveryOptionIndex - The recovery option that was selected.
// presentedInSheet    - Whether the error was originally presented in a sheet.
//                       If NO, the error must have been presented in an
//                       application modal dialog.
//
// Returns a signal which synchronously completes or errors (using the original
// error).
- (RACSignal *)pri_attemptRecoveryFromError:(NSError *)error optionIndex:(NSUInteger)recoveryOptionIndex presentedInSheet:(BOOL)presentedInSheet;

@end
