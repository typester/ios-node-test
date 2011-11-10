#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = window_;

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)dealloc {
    self.window = nil;
    [super dealloc];
}

@end
