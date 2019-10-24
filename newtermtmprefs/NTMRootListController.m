#include "NTMRootListController.h"
#include <spawn.h>
#include <signal.h>

@implementation NTMRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)reterm {
    pid_t pid;
    int status;
    const char *argv[] = {"killall", "NewTerm", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)argv, NULL);
    waitpid(pid, &status, WEXITED);
}

@end
