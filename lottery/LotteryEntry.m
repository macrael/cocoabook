//
//  LotteryEntry.m
//  lottery
//
//  Created by MacRae Linton on 3/1/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry

- (id)init
{
	return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

- (id)initWithEntryDate:(NSCalendarDate *)theDate{
	if (![super init]){
		return nil;
	}
	
	NSAssert(theDate != nil,@"Argument must be non-nil");
	entryDate = theDate;
	firstNumber = random() % 100 + 1;
	secondNumber = random() % 100 + 1;
	return self;
}
- (void)setEntryDate:(NSCalendarDate *)date{
	entryDate = date;
}
- (NSCalendarDate *)entryDate{
	return entryDate;
}
- (int)firstNumber{
	return firstNumber;
}
- (int)secondNumber{
	return secondNumber;
}
- (NSString *)description
{
	NSString *result;
	result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
			  [entryDate descriptionWithCalendarFormat:@"%b %d %Y"],
			  firstNumber,secondNumber];
	return result;
}

@end
