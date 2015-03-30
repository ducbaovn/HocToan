//
//  NoiDungBaiTapViewController.h
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoiDungBaiTap.h"
#import "NoiDungBaiTapCell.h"

@interface NoiDungBaiTapVCL : UITableViewController<NoiDungBaiTapCellDelegate>

@property (strong, nonatomic) NoiDungBaiTap *baiTap;
@property (strong, nonatomic) NSMutableArray *ans;

@end
