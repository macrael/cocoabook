//
//  ToDoController.h
//  DataSourceChallenge
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ToDoController : NSObject {
	IBOutlet NSTableView *toDoTableView;
	IBOutlet NSTextField *newItemField;
	NSMutableArray *items;
}

- (IBAction)createNewItem:(id)sender;

@end
