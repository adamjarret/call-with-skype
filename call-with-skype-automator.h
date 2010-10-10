//
//  call-with-skype-automator.h
//  call-with-skype-automator
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright (c) 2010 Adam Jarret, All Rights Reserved.
//

#import <Cocoa/Cocoa.h>
#import <Automator/AMBundleAction.h>

@interface call_with_skype_automator : AMBundleAction 
{
}

- (id)runWithInput:(id)input fromAction:(AMAction *)anAction error:(NSDictionary **)errorInfo;

@end
