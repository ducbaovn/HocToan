//
//  BaiTapViewController.m
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "BaiTapViewController.h"
#import "NoiDungBaiTapVCL.h"
#import "ChuongTrinhHoc.h"

@interface BaiTapViewController ()

@property (strong, nonatomic) NSArray *duLieuCell;

@end

@implementation BaiTapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.baiTapTracNghiem.soBai;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BaiTapCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
    cell.textLabel.text = self.baiTapTracNghiem.loaiBaiTap[indexPath.row];
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    NoiDungBaiTapVCL *noiDungBaiTap = segue.destinationViewController;
    noiDungBaiTap.baiTap = self.baiTapTracNghiem.baiTap[indexPath.row];
    noiDungBaiTap.navigationItem.title = self.baiTapTracNghiem.loaiBaiTap[indexPath.row];
}

@end
