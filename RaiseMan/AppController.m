//
//  AppController.m
//  RaiseMan
//
//  Created by MacRae Linton on 3/19/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "AppController.h"
#import "PreferenceController.h"


@implementation AppController

- (IBAction)showPreferencePanel:(id)sender
{
	//is preferenceController nil?
	if (!preferenceController) {
		preferenceController = [[PreferenceController alloc]init];
	}
	NSLog(@"showing %@",preferenceController);
	[preferenceController showWindow:self];
}
@end
