//
//  Sach.m
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "Sach.h"

@implementation Sach

- (instancetype) initWithData: (NSArray*)data{
    self = [super init];
    
    NSMutableArray *tenSach = [NSMutableArray array];
    NSMutableArray *tacGia = [NSMutableArray array];
    NSMutableArray *nhaXuatBan = [NSMutableArray array];
    NSMutableArray *ngayXuatBan = [NSMutableArray array];
    for(NSInteger i = 0; i < [data count]; i++) {
        NSArray *sach = [data[i] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        [tenSach addObject: sach[0]];
        [tacGia addObject: sach[1]];
        [nhaXuatBan addObject: sach[2]];
        [ngayXuatBan addObject: sach[3]];
    }
    self.soSach = [data count];
    self.tenSach = tenSach;
    self.tacGia = tacGia;
    self.nhaXuatBan = nhaXuatBan;
    self.ngayXuatBan = ngayXuatBan;
    
    return self;
}

@end
