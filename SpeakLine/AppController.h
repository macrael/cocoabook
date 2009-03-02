//
//  AppController.h
//  SpeakLine
//
//  Created by MacRae Linton on 3/1/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AppController : NSObject {
	IBOutlet NSTextField *textField;
}
- (IBAction)sayIt:(id)sender;
- (IBAction)stopIt:(id)sender;

@end
