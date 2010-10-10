//
//  SkypeBridge.m
//  call-with-skype
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright 2010 Adam Jarret. All rights reserved.
//

#import "SkypeBridge.h"


@implementation SkypeBridge

+ (NSString*) formatPhoneNumberForSkype:(NSString*)phoneNumber
{
	NSCharacterSet *charactersToRemove = [[ NSCharacterSet decimalDigitCharacterSet ] invertedSet ];
	
	NSString *numericOnly = [[ phoneNumber
							  componentsSeparatedByCharactersInSet:charactersToRemove ]
							 componentsJoinedByString:@""];
	
	NSString *prefix = @"+";
	
	if([numericOnly length] < 11)
		prefix = @"+1";
	
	return [NSString stringWithFormat:@"%@%@", prefix, numericOnly];
}

+ (void) callPhoneNumber:(NSString*)phoneNumber
{
	NSDictionary *scriptError = [[NSDictionary alloc] init]; 
	
	NSString *scriptSource = [NSString stringWithFormat: 
							  @"tell application \"Skype\" to send command \"CALL %@\" script name \"Call With Skype\"",
							  [SkypeBridge formatPhoneNumberForSkype:phoneNumber]]; 
	
	NSAppleScript *appleScript = [[NSAppleScript alloc] initWithSource:scriptSource]; 
	
	/* Run the script! */ 
	if(![appleScript executeAndReturnError:&scriptError]) 
		NSLog(@"AppleScript Error: %@", [scriptError description]); 
}



@end
