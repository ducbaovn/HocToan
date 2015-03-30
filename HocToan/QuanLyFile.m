//
//  QuanLyFile.m
//  HocToan
//
//  Created by MAC on 2/16/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "QuanLyFile.h"

@implementation QuanLyFile

- (void) setFilePaths {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    self.filePaths = [documentsDirectory stringByAppendingString:self.file];
}

- (instancetype) initWithFileName: (NSString *)fileName {
    self = [super init];
    if (self) {
        self.file = fileName;
        [self setFilePaths];
    }
    return self;
}

- (BOOL)fileExist {
    if ([[NSFileManager defaultManager] fileExistsAtPath:self.filePaths]){
        return YES;
    }
    else return NO;
}

- (NSString *)readFile {
    NSError *readError;
    NSString *fileContents = [[NSString alloc] initWithContentsOfFile:self.filePaths encoding:NSUnicodeStringEncoding error:&readError];
    
    return fileContents;
}

- (void)writeFile:(NSString *)fileContents {
    NSError *writeError;
    if (![self fileExist]) {
        [fileContents writeToFile:self.filePaths atomically:YES encoding:NSUnicodeStringEncoding  error: &writeError];
    } else {
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:self.filePaths];
        [fileHandle seekToEndOfFile];
        [fileHandle writeData:[fileContents dataUsingEncoding:NSUnicodeStringEncoding]];
    }
}

- (void)deleteFile {
    NSError *deleteError;
    if ([[NSFileManager defaultManager] removeItemAtPath:self.filePaths error:&deleteError]) {
        NSLog(@"Delete File successful");
    }
}

@end
