//
//  Sach.h
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Sach : NSObject

@property (assign, nonatomic) NSUInteger soSach;
@property (strong, nonatomic) NSArray *tenSach;
@property (strong, nonatomic) NSArray *tacGia;
@property (strong, nonatomic) NSArray *nhaXuatBan;
@property (strong, nonatomic) NSArray *ngayXuatBan;

- (instancetype)initWithData: (NSArray*)data;

@end
