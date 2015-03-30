//
//  ChuongTrinhHoc.h
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChuongTrinhHoc : NSObject

@property (assign, nonatomic) NSUInteger soBaiHoc;
@property (strong, nonatomic) NSArray *tenBaiHoc;
@property (strong, nonatomic) NSArray *noiDungBaiHoc;

- (instancetype)initWithData: (NSArray*) data;
@end
