//
//  ChuongTrinhHoc.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "ChuongTrinhHoc.h"

@implementation ChuongTrinhHoc

- (instancetype) initWithData: (NSArray *) data{
    self = [super init];
    NSMutableArray *tenBaiHoc = [[NSMutableArray alloc]init];
    NSMutableArray *noiDungBaiHoc = [[NSMutableArray alloc]init];
    for (NSString *str in data) {
        NSArray *strArray = [str componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        [tenBaiHoc addObject:strArray[0]];
        [noiDungBaiHoc addObject:strArray[1]];
    }
    self.soBaiHoc = [data count];
    self.tenBaiHoc = tenBaiHoc;
    self.noiDungBaiHoc = noiDungBaiHoc;
    return self;
}

@end
