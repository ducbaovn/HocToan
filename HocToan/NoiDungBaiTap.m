//
//  CauHoiTracNghiem.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "NoiDungBaiTap.h"
#import "BaiTapTracNghiem.h"

@implementation NoiDungBaiTap

- (instancetype)initWithData: (NSArray*)data{
    self = [super init];
    
    NSMutableArray *de = [NSMutableArray array];
    NSMutableArray *ans1 = [NSMutableArray array];
    NSMutableArray *ans2 = [NSMutableArray array];
    NSMutableArray *ans3 = [NSMutableArray array];
    NSMutableArray *ans4 = [NSMutableArray array];
    NSMutableArray *dapAn = [NSMutableArray array];
    for(NSInteger i = 1; i < [data count]; i++){
        NSArray *cau = [data[i] componentsSeparatedByCharactersInSet: [NSCharacterSet newlineCharacterSet]];
        [de addObject:cau[0]];
        [ans1 addObject:cau[1]];
        [ans2 addObject:cau[2]];
        [ans3 addObject:cau[3]];
        [ans4 addObject:cau[4]];
        [dapAn addObject:cau[5]];
    }
    
    self.soCau = [data count] - 1;
    self.loaiBaiTap = data[0];
    self.de = de;
    self.ans1 = ans1;
    self.ans2 = ans2;
    self.ans3 = ans3;
    self.ans4 = ans4;
    self.dapAn = dapAn;
    return self;
}

@end
