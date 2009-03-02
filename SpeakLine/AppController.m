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
	voiceList = [[NSSpeechSynthesizer availableVoices] retain];
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
	[tableView setEnabled:NO];
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
	[tableView setEnabled:YES];
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender 
		 willSpeakPhoneme:(short)phonemeOpcode
{
	//NSLog(@"phoneme = %hi",phonemeOpcode);
}
- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender 
			willSpeakWord:(NSRange)characterRange 
				 ofString:(NSString *)string
{
	NSLog(@"speaking = %@",[string substringWithRange:characterRange]);
}

- (int)numberOfRowsInTableView:(NSTableView *)tv
{
	return [voiceList count];
}
- (id)tableView:(NSTableView *)tv
objectValueForTableColumn:(NSTableColumn *)tableColumn
			row:(int)row
{
	NSString *v = [voiceList objectAtIndex:row];
	NSDictionary *dict = [NSSpeechSynthesizer attributesForVoice:v];
	return [dict objectForKey:NSVoiceName];
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
	int row = [tableView selectedRow];
	if (row == -1){
		NSLog(@"no selection");
		return;
	}
	NSString *selectedVoice = [voiceList objectAtIndex:row];
	[speechSynth setVoice:selectedVoice];
	NSLog(@"New voice = %@",selectedVoice);
}

- (void)awakeFromNib
{
	NSLog(@"Awaking...");
	NSString *defaultVoice = [NSSpeechSynthesizer defaultVoice];
	int defaultRow = [voiceList indexOfObject:defaultVoice];
	[tableView selectRow:defaultRow	byExtendingSelection:NO];
	[tableView scrollRowToVisible:defaultRow];
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
	NSString *method = NSStringFromSelector(aSelector);
	NSLog(@"Delegate method send: %@",method);
	return [super respondsToSelector:aSelector];
}

@end
