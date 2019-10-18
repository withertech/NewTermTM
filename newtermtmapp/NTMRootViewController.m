#import "NTMRootViewController.h"

@implementation NTMRootViewController {
	NSMutableArray *_objects;
}

- (void)loadView {
	[super loadView];

Class NTMRootListController;
    NSString *path = @"/Library/PreferenceBundles/NewTermTMPrefs.bundle";
    NSBundle *bundleToLoad = [NSBundle bundleWithPath:path];
    if ((NTMRootListController = bundleToLoad.principalClass)) {
        UIViewController * vc = [[NTMRootListController alloc] init];
        [self presentViewController:vc animated:NO completion:nil];
    }

	_objects = [NSMutableArray array];

	self.title = @"NewTerm Theme Manager";
}

#pragma mark - Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

	if (!cell) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	}

	NSDate *date = _objects[indexPath.row];
	cell.textLabel.text = date.description;
	return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	[_objects removeObjectAtIndex:indexPath.row];
	[tableView deleteRowsAtIndexPaths:@[ indexPath ] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)loadBundle
{
   
}

@end
