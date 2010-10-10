//
//  CallWithSkypeApp.m
//  call-with-skype
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright 2010 Adam Jarret. All rights reserved.
//

#import "CallWithSkypeApp.h"
#import "SkypeBridge.h"


@implementation CallWithSkypeApp

- (id) init;
{
    self = [super init];
    if (self == nil)
        return nil;
    
    return self;
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
	[SkypeBridge callPhoneNumber:_phoneNumber];
    return EXIT_SUCCESS;
}

@end
