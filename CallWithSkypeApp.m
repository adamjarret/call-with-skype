//
//  CallWithSkypeApp.m
//  call-with-skype
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright 2010 Adam Jarret. All rights reserved.
//

#import "CallWithSkypeApp.h"


@implementation CallWithSkypeApp

- (id) init;
{
    self = [super init];
    if (self == nil)
        return nil;
    
    return self;
}

- (NSString*) formatPhoneNumberForSkype
{
	NSCharacterSet *charactersToRemove =
	[[ NSCharacterSet decimalDigitCharacterSet ] invertedSet ];
	
	NSString *trimmedReplacement =
	[[ _phoneNumber componentsSeparatedByCharactersInSet:charactersToRemove ] componentsJoinedByString:@""];
	
	return trimmedReplacement;
}

#pragma mark -
#pragma mark DDCliApplicationDelegate methods

- (void) application: (DDCliApplication *) app
    willParseOptions: (DDGetoptLongParser *) optionsParser;
{
    DDGetoptOption optionTable[] = 
    {
        // Long         Short   Argument options
        {@"phoneNumber",        'n',    DDGetoptRequiredArgument},
        {nil,           0,      0},
    };
    [optionsParser addOptionsFromTable: optionTable];
}

- (int) application: (DDCliApplication *) app
   runWithArguments: (NSArray *) arguments;
{
    ddprintf(@"phoneNumber: %@\n", [self formatPhoneNumberForSkype]);
    return EXIT_SUCCESS;
}

@end
