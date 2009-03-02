//
//  Person.h
//  RaiseMan
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
	NSString *personName;
	float expectedRaise;
}
@property (copy) NSString *personName;
@property float expectedRaise;

@end
