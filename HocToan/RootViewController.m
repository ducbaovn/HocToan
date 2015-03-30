//
//  RootViewController.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "RootViewController.h"
#import "ChuongTrinhHocVC.h"
#import "TraThuatNguVC.h"
#import "BaiTapViewController.h"
#import "SachViewController.h"
#import "RootData.h"
#import "ChuongTrinhHoc.h"
#import "TraThuatNgu.h"

@interface RootViewController ()

@property (strong, nonatomic) RootData *rootData;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Hoc Toan";
    self.rootData = [[RootData alloc]init];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.rootData.cellData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = Nil;
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"ChuongTrinhHocRootCell" forIndexPath:indexPath];
        cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        cell.textLabel.text = self.rootData.cellData[indexPath.row];
    }
    if (indexPath.row == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"TraThuatNguRootCell" forIndexPath:indexPath];
        cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        cell.textLabel.text = self.rootData.cellData[indexPath.row];
    }
    if (indexPath.row == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"BaiTapRootCell" forIndexPath:indexPath];
        cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        cell.textLabel.text = self.rootData.cellData[indexPath.row];
    }
    if (indexPath.row == 3) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"SachRootCell" forIndexPath:indexPath];
        cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
        cell.textLabel.text = self.rootData.cellData[indexPath.row];
    }
    return cell;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    if (indexPath.row == 0) {
        ChuongTrinhHocVC *chuongTrinhHoc = segue.destinationViewController;
        chuongTrinhHoc.chuongTrinhHoc = self.rootData.data[indexPath.row];
        chuongTrinhHoc.navigationItem.title = self.rootData.cellData[indexPath.row];
    }
    if (indexPath.row == 1) {
        TraThuatNguVC *traThuatNgu = segue.destinationViewController;
        traThuatNgu.traThuatNgu = self.rootData.data[indexPath.row];
        traThuatNgu.navigationItem.title = self.rootData.cellData[indexPath.row];
    }
    if (indexPath.row == 2) {
        BaiTapViewController *baiTapVCL = segue.destinationViewController;
        baiTapVCL.baiTapTracNghiem = self.rootData.data[indexPath.row];
        baiTapVCL.navigationItem.title = self.rootData.cellData[indexPath.row];
    }
    if (indexPath.row == 3) {
        SachViewController *SachVCL = segue.destinationViewController;
        SachVCL.sachThamKhao = self.rootData.data[indexPath.row];
        SachVCL.navigationItem.title = self.rootData.cellData[indexPath.row];
    }
}



@end
