//
//  MyDocument.h
//  RaiseMan
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright Duke University 2009 . All rights reserved.
//


#import <Cocoa/Cocoa.h>

@interface MyDocument : NSDocument
{
	NSMutableArray *employees;
}
- (void)setEmployees:(NSMutableArray *)a;
@end
