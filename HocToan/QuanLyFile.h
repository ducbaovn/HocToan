//
//  QuanLyFile.h
//  HocToan
//
//  Created by MAC on 2/16/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuanLyFile : NSObject

@property (strong, nonatomic) NSString *file;
@property (strong, nonatomic) NSString *filePaths;

- (void) setFilePaths;
- (instancetype) initWithFileName: (NSString *)fileName;
- (BOOL) fileExist;
- (NSString *)readFile;
- (void) writeFile: (NSString*) fileContents;
- (void) deleteFile;

@end
