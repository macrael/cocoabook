//
//  DelegateController.m
//  DelegateChallenge
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "DelegateController.h"


@implementation DelegateController

- (NSSize)windowWillResize:(NSWindow *)sender
					toSize:(NSSize)frameSize
{
	frameSize.height = frameSize.width *2;
	int width = frameSize.width;
	int height = frameSize.height;
	[widthField setIntValue:width];
	[heightField setIntValue:height];
	return frameSize;
}

@end
