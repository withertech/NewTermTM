#import "NTMARootViewController.h"

@implementation NTMARootViewController {
	NSMutableArray *_objects;
	NSMutableArray *_colors;
}

- (void)loadView {
	[super loadView];

	_objects = [NSMutableArray arrayWithObjects:@"0 Black", @"1 Dark Red", @"2 Dark Green", @"3 Dark Yellow", @"4 Dark Blue", @"5 Dark Purple", @"6 Dark Cyan", @"7 Silver", @"8 Grey", @"9 Bright Red", @"10 Bright Green", @"11 Bright Yellow", @"12 Bright Blue", @"13 Bright Purple", @"14 Bright Cyan", @"15 White", nil];

	_colors = [NSMutableArray arrayWithObjects:[UIColor colorWithRed:(0/255.0) green:(0/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(128/255.0) green:(0/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(0/255.0) green:(128/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(0/255.0) green:(0/255.0) blue:(128/255.0) alpha:1.0], [UIColor colorWithRed:(128/255.0) green:(0/255.0) blue:(128/255.0) alpha:1.0], [UIColor colorWithRed:(0/255.0) green:(128/255.0) blue:(128/255.0) alpha:1.0], [UIColor colorWithRed:(192/255.0) green:(192/255.0) blue:(192/255.0) alpha:1.0], [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1.0], [UIColor colorWithRed:(255/255.0) green:(0/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(0/255.0) green:(255/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(0/255.0) alpha:1.0], [UIColor colorWithRed:(0/255.0) green:(0/255.0) blue:(255/255.0) alpha:1.0], [UIColor colorWithRed:(255/255.0) green:(0/255.0) blue:(255/255.0) alpha:1.0], [UIColor colorWithRed:(0/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0], [UIColor colorWithRed:(200/255.0) green:(200/255.0) blue:(200/255.0) alpha:1.0], nil];

	self.title = @"ANSI Color Codes";
}

#pragma mark - Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return _objects.count;
}


#pragma mark - Table View Delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"AnsiItem";
 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
 
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
 
    cell.textLabel.text = [_objects objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [_colors objectAtIndex:indexPath.row];
    return cell;
}

@end
