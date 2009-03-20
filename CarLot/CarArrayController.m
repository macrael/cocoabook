//
//  CarArrayController.m
//  CarLot
//
//  Created by MacRae Linton on 3/19/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "CarArrayController.h"


@implementation CarArrayController

- (id)newObject
{
	id newObj = [super newObject];
	NSDate *now = [NSDate date];
	[newObj setValue:now forKey:@"datePurchased"];
	return newObj;
}

@end
