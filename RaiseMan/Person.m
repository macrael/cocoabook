//
//  Person.m
//  RaiseMan
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "Person.h"


@implementation Person

- (id)init
{
	[super init];
	expectedRaise = 5.0;
	personName = @"New Person";
	return self;
}

- (void)setNilValueForKey:(NSString *)key
{
	if ([key  isEqual:@"expectedRaise"]){
		[self setExpectedRaise:0.0];
	}else{
		[super setNilValueForKey:key];
	}
}


- (void)dealloc
{
	[personName release];
	[super dealloc];
}

@synthesize personName;
@synthesize expectedRaise;
@end
