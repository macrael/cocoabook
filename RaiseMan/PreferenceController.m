//
//  PreferenceController.m
//  RaiseMan
//
//  Created by MacRae Linton on 3/19/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "PreferenceController.h"


@implementation PreferenceController

- (id)init
{
	if (![super initWithWindowNibName:@"Preferences"])
		return nil;
	return self;
}

- (void)windowDidLoad
{
	NSLog(@"Nib file is loaded");
}

- (IBAction)changeBackgroundColor:(id)sender
{
	NSColor *color = [colorWell color];
	NSLog(@"Color changed to %@",color);
}
- (IBAction)changeNewEmptyDoc:(id)sender
{
	int state = [checkbox state];
	NSLog(@"Checkbox changed %d",state);
}
@end
