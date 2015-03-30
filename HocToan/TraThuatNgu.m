//
//  TraThuatNgu.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "TraThuatNgu.h"

@implementation TraThuatNgu

- (instancetype)initWithData: (NSArray*) data {
    self = [super init];
    NSMutableArray *thuatNgu = [[NSMutableArray alloc]init];
    NSMutableArray *giaiNghia = [[NSMutableArray alloc]init];
    [data sortedArrayUsingSelector:@selector(compare:)];
    for (NSString *str in data) {
        NSArray *strArray = [str componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        [thuatNgu addObject:strArray[0]];
        [giaiNghia addObject:strArray[1]];
    }
    self.soThuatNgu = [data count];
    self.thuatNgu = thuatNgu;
    self.giaiNghia = giaiNghia;
    self.tuDien = [NSDictionary dictionaryWithObjects:giaiNghia forKeys:thuatNgu];
    return self;
}

@end
