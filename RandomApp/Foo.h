//
//  Foo.h
//  RandomApp
//
//  Created by MacRae Linton on 2/28/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Foo : NSObject {
	IBOutlet NSTextField *textField;
}
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;

@end
