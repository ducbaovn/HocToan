//
//  NoiDungBaiTapCell.h
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NoiDungBaiTapCellDelegate

-(void)selectedBut:(int)selectedBut atCell: (id)cell;

@end


@interface NoiDungBaiTapCell : UITableViewCell


@property (strong, nonatomic) UILabel *deLabel;
@property (strong, nonatomic) UILabel *ans1Label;
@property (strong, nonatomic) UILabel *ans2Label;
@property (strong, nonatomic) UILabel *ans3Label;
@property (strong, nonatomic) UILabel *ans4Label;
@property (strong, nonatomic) UIButton *but1;
@property (strong, nonatomic) UIButton *but2;
@property (strong, nonatomic) UIButton *but3;
@property (strong, nonatomic) UIButton *but4;
@property (copy, nonatomic) NSMutableArray *radioButs;
@property (retain, nonatomic) id<NoiDungBaiTapCellDelegate> delegate;





@end
