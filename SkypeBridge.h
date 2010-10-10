//
//  SkypeBridge.h
//  call-with-skype
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright 2010 Adam Jarret. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface SkypeBridge : NSObject
{
}

+ (void) callPhoneNumber:(NSString*)phoneNumber;
+ (NSString*) formatPhoneNumberForSkype:(NSString*)phoneNumber;

@end
