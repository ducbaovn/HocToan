//
//  Lvl2TableViewController.h
//  HocToan
//
//  Created by MAC on 2/9/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuickLook/QuickLook.h>
#import "ChuongTrinhHoc.h"

@interface ChuongTrinhHocVC : UITableViewController <QLPreviewControllerDelegate, QLPreviewControllerDataSource>

@property (strong, nonatomic) ChuongTrinhHoc *chuongTrinhHoc;

@end
