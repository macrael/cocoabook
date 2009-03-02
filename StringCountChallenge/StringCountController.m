//
//  StringCountController.m
//  StringCountChallenge
//
//  Created by MacRae Linton on 3/1/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "StringCountController.h"


@implementation StringCountController
- (IBAction)countCharacters:(id)sender
{
	NSString *string = [textField stringValue];
	int count = [string length];
	[outLabel setStringValue:[NSString stringWithFormat:@"\"%@\" has %d characters",
							  string, count]];
}
@end
