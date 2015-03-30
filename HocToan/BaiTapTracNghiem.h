//
//  DuLieuCauHoi.h
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaiTapTracNghiem : NSObject

@property (assign, nonatomic) NSUInteger soBai;
@property (strong, nonatomic) NSArray *loaiBaiTap;
@property (strong, nonatomic) NSArray *baiTap;

- (instancetype)initWithData: (NSArray*)data;

@end
