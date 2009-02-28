//
//  Foo.m
//  RandomApp
//
//  Created by MacRae Linton on 2/28/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "Foo.h"


@implementation Foo

- (IBAction)generate: (id) sender
{
	//Generate a randome number
	int generated;
	generated = (random() % 100) +1;
	
	NSLog(@"generated = %d",generated);
	
	[textField setIntValue:generated];
}

-(IBAction)seed:(id)sender
{
	srandom(time(NULL));
	[textField setStringValue:@"Generator seeded"];
}

- (void)awakeFromNib
{
	NSCalendarDate *now;
	now = [NSCalendarDate calendarDate];
	[textField setObjectValue:now];
}

@end
