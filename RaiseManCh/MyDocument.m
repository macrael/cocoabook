//
//  MyDocument.m
//  RaiseManCh
//
//  Created by MacRae Linton on 2/7/09.
//  Copyright Duke University 2009 . All rights reserved.
//

#import "MyDocument.h"

@implementation MyDocument

- (id)init
{
    self = [super init];
    if (self) {
		employees = [[NSMutableArray alloc]init];
    }
    return self;
}

//Action Methods
- (IBAction)deleteSelectedEmployees:(id)sender
{
	//Which row is slected
	NSIndexSet *rows = [tableView selectedRowIndexes];
	
	//Is there a selected row?
	if ([rows count]>0){
		unsigned int row = [rows lastIndex];
		while (row != NSNotFound){
			[employees removeObjectAtIndex:row];
			row = [rows indexLessThanIndex:row];
		}
		[tableView reloadData];
	}
	else {
		NSBeep();
	}

}

- (IBAction)createEmployee:(id)sender{
	Person *newEmployee = [[Person alloc]init];
	[employees addObject:newEmployee];
	[newEmployee release];
	[tableView reloadData];
}

//Datasource methods

- (int)numberOfRowsInTableView:(NSTabView *)aTableView
{
	return [employees count];
}

- (id)tableView:(NSTableView *)aTableView
		objectValueForTableColumn:(NSTableColumn *)aTableColumn
							  row:(int)rowIndex
{
	NSString *identifier = [aTableColumn identifier];
	Person * person = [employees objectAtIndex:rowIndex];
	return [person valueForKey:identifier];
}

- (void) tableView:(NSTableView *)aTableView
	setObjectValue:(id)anObject
	forTableColumn:(NSTableColumn *)aTableColumn
			   row:(int)rowIndex
{
	NSString *identifier = [aTableColumn identifier];
	Person * person = [employees objectAtIndex:rowIndex];
	[person setValue:anObject forKey:identifier];
}

- (void)tableView:(NSTableView *)aTableView
sortDescriptorsDidChange:(NSArray *)oldDescriptors
{
	NSArray *newDescriptors = [tableView sortDescriptors];
	[employees sortUsingDescriptors:newDescriptors];
	[tableView reloadData];
}



- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *) aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If the given outError != NULL, ensure that you set *outError when returning nil.

    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.

    // For applications targeted for Panther or earlier systems, you should use the deprecated API -dataRepresentationOfType:. In this case you can also choose to override -fileWrapperRepresentationOfType: or -writeToFile:ofType: instead.

    if ( outError != NULL ) {
		*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
	}
	return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type.  If the given outError != NULL, ensure that you set *outError when returning NO.

    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead. 
    
    // For applications targeted for Panther or earlier systems, you should use the deprecated API -loadDataRepresentation:ofType. In this case you can also choose to override -readFromFile:ofType: or -loadFileWrapperRepresentation:ofType: instead.
    
    if ( outError != NULL ) {
		*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
	}
    return YES;
}

@end
