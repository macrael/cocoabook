//
//  MyDocument.h
//  RaiseManCh
//
//  Created by MacRae Linton on 2/7/09.
//  Copyright Duke University 2009 . All rights reserved.
//


#import <Cocoa/Cocoa.h>
#import "Person.h"

@interface MyDocument : NSDocument
{
	NSMutableArray *employees;
	IBOutlet NSTableView *tableView;
}
- (IBAction)createEmployee:(id)sender;
- (IBAction)deleteSelectedEmployees:(id)sender;

@end
