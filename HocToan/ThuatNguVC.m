//
//  NoiDungBaiHocVaThuatNguViewController.m
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "ThuatNguVC.h"

@interface ThuatNguVC ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ThuatNguVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textView.text = self.nghiaThuatNgu;
	// Do any additional setup after loading the view.
}

@end
