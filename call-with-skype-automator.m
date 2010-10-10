//
//  call-with-skype-automator.m
//  call-with-skype
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright (c) 2010 Adam Jarret, All Rights Reserved.
//

#import "call-with-skype-automator.h"
#import "SkypeBridge.h"

@implementation call_with_skype_automator

- (id)runWithInput:(id)input fromAction:(AMAction *)anAction error:(NSDictionary **)errorInfo
{
	[SkypeBridge callPhoneNumber:[(NSArray*)input lastObject]];
	return input;
}

@end
