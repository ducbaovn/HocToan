//
//  DuLieuCauHoi.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "BaiTapTracNghiem.h"
#import "NoiDungBaiTap.h"

@implementation BaiTapTracNghiem

- (instancetype)initWithData: (NSArray*) data {
    self = [super init];
    NSMutableArray *loaiBai = [[NSMutableArray alloc]init];
    NSMutableArray *baiTap = [[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < [data count]; i++){
        NoiDungBaiTap *noiDungBaiTap = data[i];
        [loaiBai addObject: noiDungBaiTap.loaiBaiTap];
        [baiTap addObject: noiDungBaiTap];
    }
    self.soBai = [data count];
    self.loaiBaiTap = loaiBai;
    self.baiTap = baiTap;
    return self;
}

@end
