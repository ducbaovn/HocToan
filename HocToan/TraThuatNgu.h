//
//  TraThuatNgu.h
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TraThuatNgu : NSObject

@property (assign, nonatomic) NSUInteger soThuatNgu;
@property (strong, nonatomic) NSDictionary *tuDien;
@property (strong, nonatomic) NSArray *thuatNgu;
@property (strong, nonatomic) NSArray *giaiNghia;

- (instancetype)initWithData: (NSArray*) data;
@end
