//
//  Person.m
//  RaiseMan
//
//  Created by MacRae Linton on 2/7/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "Person.h"


@implementation Person

- (id) init
{
	[super init];
	[self setExpectedRaise:0.0];
	[self setPersonName:@"New Person"];
	return self;
}

- (float)expectedRaise
{
	return expectedRaise;
}

- (void)setExpectedRaise:(float)x
{
	expectedRaise = x;
}

- (NSString *)personName
{
	return personName;
}

- (void)setPersonName:(NSString *) aName
{
	aName = [aName copy];
	[personName release];
	personName = aName;
}

- (void)setNilValueForKey:(NSString *)key
{
	if ([key isEqual:@"expectedRaise"]){
		[self setExpectedRaise:0];
	}
	else{
		[super setNilValueForKey:key];
	}
}

- (void)dealloc
{
	[personName release];
	[super dealloc];
}

@end
