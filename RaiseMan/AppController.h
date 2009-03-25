//
//  AppController.h
//  RaiseMan
//
//  Created by MacRae Linton on 3/19/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class PreferenceController;

@interface AppController : NSObject {
	PreferenceController *preferenceController;
}
- (IBAction)showPreferencePanel:(id)sender;
- (IBAction)showAboutPanel:(id)sender;

@end
