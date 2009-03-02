//
//  AppController.m
//  SpeakLine
//
//  Created by MacRae Linton on 3/1/09.
//  Copyright 2009 Duke University. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init
{
	[super init];
	
	speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
	[speechSynth setDelegate:self];
	return self;
}

- (IBAction)sayIt:(id)sender
{
	NSString *string = [textField stringValue];
	if ([string length] == 0) {
		NSLog(@"string from %@ is of zero-length",string);
		return;
	}
	[speechSynth startSpeakingString:string];
	NSLog(@"Have started to say: %@",string);
	[stopButton setEnabled:YES];
	[startButton setEnabled:NO];
}
- (IBAction)stopIt:(id)sender
{
	NSLog(@"stopping");
	[speechSynth stopSpeaking];
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender
		didFinishSpeaking:(BOOL)complete
{
	NSLog(@"complete = %d",complete);
	[stopButton setEnabled:NO];
	[startButton setEnabled:YES];
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender 
		 willSpeakPhoneme:(short)phonemeOpcode
{
	NSLog(@"phoneme = %hi",phonemeOpcode);
}
- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender 
			willSpeakWord:(NSRange)characterRange 
				 ofString:(NSString *)string
{
	NSLog(@"speaking = %@",[string substringWithRange:characterRange]);
}



@end
