//
//  MyDocument.h
//  RaiseMan
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright Duke University 2009 . All rights reserved.
//


#import <Cocoa/Cocoa.h>
@class Person;

@interface MyDocument : NSDocument
{
	NSMutableArray *employees;
	IBOutlet NSTableView *tableView;
	IBOutlet NSArrayController *employeeController;
}
- (IBAction)createEmployee:(id)sender;
- (void)setEmployees:(NSMutableArray *)a;
- (void)insertObject:(Person *)p inEmployeesAtIndex:(int)index;
- (void)removeObjectFromEmployeesAtIndex:(int)index;
- (void)startObservingPerson:(Person *)person;
- (void)stopObservingPerson:(Person *)person;
@end
