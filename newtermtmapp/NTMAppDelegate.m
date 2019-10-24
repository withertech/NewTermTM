#import "NTMAppDelegate.h"

@implementation NTMAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
Class NTMRootListController;
    NSString *path = @"/Library/PreferenceBundles/NewTermTMPrefs.bundle";
    NSBundle *bundleToLoad = [NSBundle bundleWithPath:path];
    if ((NTMRootListController = bundleToLoad.principalClass)) {
	_rootViewController = [[UINavigationController alloc] initWithRootViewController:[[NTMRootListController alloc] init]];
	_window.rootViewController = _rootViewController;
	[_window makeKeyAndVisible];
}
}

@end
