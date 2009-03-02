//
//  AppController.m
//  KVCFun
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "AppController.h"


@implementation AppController

@synthesize fido;

- (id)init
{
	[super init];
	[self setValue:[NSNumber numberWithInt:5]
			forKey:@"fido"];
	NSNumber *n = [self valueForKey:@"fido"];
	NSLog(@"fido = %@",n);
	return self;
}

- (IBAction)incrementFido:(id)sender
{
	[self setFido:[self fido] +1];
	NSLog(@"incrementing Fido: %d",fido);
}
@end
