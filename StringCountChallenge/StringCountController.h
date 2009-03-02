//
//  StringCountController.h
//  StringCountChallenge
//
//  Created by MacRae Linton on 3/1/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface StringCountController : NSObject {
	IBOutlet NSTextField *textField;
	IBOutlet NSTextField *outLabel;
}
- (IBAction)countCharacters:(id)sender;
@end
