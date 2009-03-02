//
//  LotteryEntry.m
//  lottery
//
//  Created by MacRae Linton on 3/1/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry

- (void)prepareRandomNumbers{
	firstNumber = random() % 100 + 1;
	secondNumber = random() % 100 + 1;
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
