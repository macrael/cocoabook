//
//  Person.h
//  RaiseMan
//
//  Created by MacRae Linton on 2/7/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Person : NSObject {
	NSString *personName;
	float expectedRaise;
}

-(float) expectedRaise;
-(void) setExpectedRaise:(float)x;
-(NSString *) personName;
-(void)setPersonName:(NSString *) aName;

@end
