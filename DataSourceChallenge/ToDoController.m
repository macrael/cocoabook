//
//  ToDoController.m
//  DataSourceChallenge
//
//  Created by MacRae Linton on 3/2/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "ToDoController.h"


@implementation ToDoController

- (id)init
{
	items = [[NSMutableArray alloc] init];
	return [super init];
}

- (IBAction)createNewItem:(id)sender
{
	NSString *newItem = [newItemField stringValue];
	[items addObject:newItem];
	[newItemField setStringValue:@""];
	NSLog(@"Added \"%@\" to table",newItem);
	[toDoTableView reloadData];
}

- (int)numberOfRowsInTableView:(NSTableView *)tv
{
	return [items count];
}
- (id)tableView:(NSTableView *)tv
objectValueForTableColumn:(NSTableColumn *)tableColumn
			row:(int)row
{
	NSString *item = [items objectAtIndex:row];
	return item;
}

- (void)tableView:(NSTableView *)tv
   setObjectValue:(id)anObject
   forTableColumn:(NSTableColumn *)aTableColumn
			  row:(int)rowIndex
{
	[items replaceObjectAtIndex:rowIndex withObject:anObject];
}

@end
