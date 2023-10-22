#import "AppDelegate.h"
#import "playup_native-Swift.h"
#import <React/RCTBundleURLProvider.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  // Initialize your root view controller
  PlayupViewController *playupViewController = [[PlayupViewController alloc] init];
  DraftstarsViewController *draftstarsViewController = [[DraftstarsViewController alloc] init];
  self.window.rootViewController = playupViewController;
  
  [self.window makeKeyAndVisible];
  
  
  return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
