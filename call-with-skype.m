#import <Foundation/Foundation.h>
#import "DDCommandLineInterface.h"
#import "CallWithSkypeApp.h"

int main (int argc, const char * argv[])
{
    return DDCliAppRunWithClass([CallWithSkypeApp class]);
}
