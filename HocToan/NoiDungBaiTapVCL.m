//
//  NoiDungBaiTapViewController.m
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "NoiDungBaiTapVCL.h"


@interface NoiDungBaiTapVCL ()

@end

@implementation NoiDungBaiTapVCL

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[NoiDungBaiTapCell class] forCellReuseIdentifier:@"NoiDungBaiTapCell"];
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(110, 5, 100, 20);
    [btn setTitle:@"Done!!" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(chamDiem) forControlEvents:UIControlEventTouchUpInside];
    [footerView addSubview:btn];
    self.tableView.tableFooterView = footerView;
    
    NSMutableArray *ans = [[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < [self.baiTap.de count]; i++) {
        [ans addObject:[NSNumber numberWithInt:0]];
    }
    self.ans = ans;
}

- (void) chamDiem {
    NSInteger numberRight = 0;
    for (NSInteger i = 0; i < [self.tableView numberOfRowsInSection:0]; i++){
        if ([self.baiTap.dapAn[i] integerValue] == [self.ans[i] integerValue]) numberRight++;
    }
    NSString *msg = [NSString stringWithFormat:@"Bạn làm đúng %d/20 câu", numberRight];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Điểm Số" message:msg delegate:self cancelButtonTitle:@"OK!!" otherButtonTitles: nil];
    [alert show];
}

#pragma mark - NoiDungBaiTapCell Delegate

- (void)selectedBut:(int)selectedBut atCell:(id)cell{
    [self.ans replaceObjectAtIndex:[self.tableView indexPathForCell:cell].row withObject:[NSNumber numberWithInt:selectedBut]];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.baiTap.soCau;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    NoiDungBaiTapCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NoiDungBaiTapCell" forIndexPath:indexPath];
    cell.delegate = self;
    cell.deLabel.text = self.baiTap.de[indexPath.row];
    cell.ans1Label.text = self.baiTap.ans1[indexPath.row];
    cell.ans2Label.text = self.baiTap.ans2[indexPath.row];
    cell.ans3Label.text = self.baiTap.ans3[indexPath.row];
    cell.ans4Label.text = self.baiTap.ans4[indexPath.row];
    
    UIFont *font = [UIFont systemFontOfSize:14];
    NSAttributedString *textLabel = [[NSAttributedString alloc]initWithString:self.baiTap.de[indexPath.row] attributes:@{NSFontAttributeName : font}];
    CGRect textBound = [textLabel boundingRectWithSize:CGSizeMake(280, 2000) options:NSStringDrawingUsesLineFragmentOrigin context:Nil];
    CGFloat labelHeight = ceilf(textBound.size.height);
    
    cell.deLabel.frame = CGRectMake(20, 15, 280, labelHeight);
    cell.but1.frame = CGRectMake(20, 15 + cell.deLabel.frame.size.height, 20, 20);
    cell.but2.frame = CGRectMake(20, 35 + cell.deLabel.frame.size.height, 20, 20);
    cell.but3.frame = CGRectMake(20, 55 + cell.deLabel.frame.size.height, 20, 20);
    cell.but4.frame = CGRectMake(20, 75 + cell.deLabel.frame.size.height, 20, 20);
    cell.ans1Label.frame = CGRectMake(45, 15 + cell.deLabel.frame.size.height, 255, 20);
    cell.ans2Label.frame = CGRectMake(45, 35 + cell.deLabel.frame.size.height, 255, 20);
    cell.ans3Label.frame = CGRectMake(45, 55 + cell.deLabel.frame.size.height, 255, 20);
    cell.ans4Label.frame = CGRectMake(45, 75 + cell.deLabel.frame.size.height, 255, 20);
    
    for(NSInteger i=0;i<[cell.radioButs count];i++){
        [cell.radioButs[i] setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
        [cell.radioButs[i] setSelected:NO];
    }
    if ([self.ans[indexPath.row] integerValue]){
        [cell.radioButs[[self.ans[indexPath.row] integerValue]-1] setBackgroundImage:[UIImage imageNamed:@"radio-on.png"] forState:UIControlStateNormal];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIFont *font = [UIFont systemFontOfSize:14];
    NSAttributedString *textLabel = [[NSAttributedString alloc]initWithString:self.baiTap.de[indexPath.row] attributes:@{NSFontAttributeName : font}];
    CGRect textBound = [textLabel boundingRectWithSize:CGSizeMake(280, 2000) options:NSStringDrawingUsesLineFragmentOrigin context:Nil];
    CGFloat labelHeight = ceilf(textBound.size.height);
    return (15*2 + labelHeight + 20*4);
}

@end
