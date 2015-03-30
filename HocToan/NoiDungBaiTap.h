//
//  CauHoiTracNghiem.h
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NoiDungBaiTap : NSObject

@property (assign, nonatomic) NSUInteger soCau;
@property (assign, nonatomic) NSString *loaiBaiTap;
@property (strong, nonatomic) NSArray *de;
@property (strong, nonatomic) NSArray *ans1;
@property (strong, nonatomic) NSArray *ans2;
@property (strong, nonatomic) NSArray *ans3;
@property (strong, nonatomic) NSArray *ans4;
@property (strong, nonatomic) NSArray *dapAn;

- (instancetype)initWithData: (NSArray*)data;

@end
