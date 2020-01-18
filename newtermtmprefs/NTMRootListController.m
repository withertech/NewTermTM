#import "NTMRootListController.h"
#import <CepheiPrefs/HBAppearanceSettings.h>
#include <spawn.h>
#include <signal.h>

@implementation NTMRootListController

#pragma mark - Constants

+ (NSString *)hb_specifierPlist {
	return @"Root";
}

#pragma mark - PSListController

- (void)viewDidLoad {
	[super viewDidLoad];

	HBAppearanceSettings *appearance = [[HBAppearanceSettings alloc] init];
	appearance.tintColor = [UIColor greenColor];
	appearance.navigationBarTintColor = [UIColor greenColor];
	appearance.navigationBarBackgroundColor = [UIColor blackColor];
	appearance.navigationBarTitleColor = [UIColor greenColor];
	appearance.statusBarTintColor = [UIColor greenColor];
	appearance.tableViewCellTextColor = [UIColor greenColor];
	appearance.tableViewCellBackgroundColor = [UIColor blackColor];
	appearance.tableViewCellSeparatorColor = [UIColor greenColor];
	appearance.tableViewCellSelectionColor = [UIColor greenColor];
	appearance.tableViewBackgroundColor = [UIColor blackColor];
	self.hb_appearanceSettings = appearance;
}

#pragma mark - Actions

-(void)reterm {
    pid_t pid;
    int status;
    const char *argv[] = {"killall", "NewTerm", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)argv, NULL);
    waitpid(pid, &status, WEXITED);
}

@end
