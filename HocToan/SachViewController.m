//
//  BaiTapVaSachVCL.m
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "SachViewController.h"
#import "SachCell.h"

@interface SachViewController ()


@end

@implementation SachViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UINib *Nib = [UINib nibWithNibName:@"SachCell" bundle:Nil];
    [self.tableView registerNib:Nib forCellReuseIdentifier:@"SachCell"];
    self.tableView.rowHeight = 116;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.sachThamKhao.soSach;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SachCell";
    SachCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.tenSachLabel.text = self.sachThamKhao.tenSach[indexPath.row];
    cell.tacGiaLabel.text = self.sachThamKhao.tacGia[indexPath.row];
    cell.nXBLabel.text = self.sachThamKhao.nhaXuatBan[indexPath.row];
    cell.ngayXBLabel.text = self.sachThamKhao.ngayXuatBan[indexPath.row];
    return cell;
}

@end
