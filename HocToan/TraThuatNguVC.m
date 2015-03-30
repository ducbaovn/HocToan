//
//  TraThuatNguVC.m
//  HocToan
//
//  Created by MAC on 2/21/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "TraThuatNguVC.h"
#import "ThuatNguVC.h"
#import "TraThuatNgu.h"

@interface TraThuatNguVC ()

@end

@implementation TraThuatNguVC {
    NSMutableArray *filteredNames;
    UISearchDisplayController *searchController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    filteredNames = [NSMutableArray array];
    UISearchBar *searchBar = [[UISearchBar alloc]
                              initWithFrame:CGRectMake(0, 0, 320, 44)];
    self.tableView.tableHeaderView = searchBar;
    searchController = [[UISearchDisplayController alloc]
                        initWithSearchBar:searchBar
                        contentsController:self];
    searchController.delegate = self;
    searchController.searchResultsDataSource = self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView.tag == 1) {
        return self.traThuatNgu.soThuatNgu;
    }
    else {
        return [filteredNames count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TraThuatNguCell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
    if(tableView.tag == 1) {
        cell.textLabel.text = self.traThuatNgu.thuatNgu[indexPath.row];
    } else {
        cell.textLabel.text = filteredNames[indexPath.row];
    }
    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ThuatNguVC *thuatNgu = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"Thuat Ngu Segue"]) {
        if (searchController.active) {
            NSIndexPath *indexPath = [searchController.searchResultsTableView indexPathForCell:sender];
            thuatNgu.nghiaThuatNgu = [self.traThuatNgu.tuDien objectForKey: filteredNames[indexPath.row]];
            thuatNgu.navigationItem.title = filteredNames[indexPath.row];
        }
        else {
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            thuatNgu.nghiaThuatNgu = self.traThuatNgu.giaiNghia[indexPath.row];
            thuatNgu.navigationItem.title = self.traThuatNgu.thuatNgu[indexPath.row];
        }
    }
}

#pragma mark - Search Display Delegate

- (void)searchDisplayController:(UISearchDisplayController *)controller
  didLoadSearchResultsTableView:(UITableView *)tableView
{
    [tableView registerClass:[UITableViewCell class]
      forCellReuseIdentifier:@"TraThuatNguCell"];
}

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [filteredNames removeAllObjects];
    if (searchString.length > 0) {
        NSPredicate *predicate =
        [NSPredicate
         predicateWithBlock:^BOOL(NSString *name, NSDictionary *b) {
             NSRange range = [name rangeOfString:searchString
                                         options:NSCaseInsensitiveSearch];
             return range.location != NSNotFound;
         }];
        [filteredNames addObjectsFromArray: [[self.traThuatNgu.tuDien allKeys] filteredArrayUsingPredicate: predicate]];
        [filteredNames sortUsingSelector:@selector(compare:)];
    }
    return YES;
}


@end
