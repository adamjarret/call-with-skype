//
//  CallWithSkypeApp.h
//  call-with-skype
//
//  Created by Adam Jarret on 10/10/10.
//  Copyright 2010 Adam Jarret. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDCommandLineInterface.h"

@interface CallWithSkypeApp : NSObject <DDCliApplicationDelegate>
{
    NSString * _phoneNumber;
}

@end
