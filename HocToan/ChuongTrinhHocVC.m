//
//  Lvl2TableViewController.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "ChuongTrinhHocVC.h"

@implementation ChuongTrinhHocVC


- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.chuongTrinhHoc.soBaiHoc;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ChuongTrinhHocCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.font = [UIFont preferredFontForTextStyle: UIFontTextStyleBody];
    cell.textLabel.text = self.chuongTrinhHoc.tenBaiHoc[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    QLPreviewController* preview = [[QLPreviewController alloc]init];
    preview.dataSource = self;
    [preview setCurrentPreviewItemIndex:indexPath.row];
    [self presentViewController:preview animated:NO completion:Nil];
}


#pragma mark - QLDataSource Method

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller {
    return self.chuongTrinhHoc.soBaiHoc;
}

- (id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index {
    NSString *pdfPath = [[NSBundle mainBundle] pathForResource:self.chuongTrinhHoc.noiDungBaiHoc[index] ofType:@"pdf"];
    return [NSURL fileURLWithPath:pdfPath];
}

@end
