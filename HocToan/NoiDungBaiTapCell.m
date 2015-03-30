//
//  NoiDungBaiTapCell.m
//  HocToan
//
//  Created by MAC on 2/10/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "NoiDungBaiTapCell.h"

@implementation NoiDungBaiTapCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        CGRect deLabelRect = CGRectMake(20, 15, 280, 25);
        self.deLabel = [[UILabel alloc] initWithFrame:deLabelRect];
        self.deLabel.textAlignment = NSTextAlignmentLeft;
        self.deLabel.font = [UIFont systemFontOfSize:14];
        self.deLabel.textColor = [UIColor blueColor];
        self.deLabel.numberOfLines = 0;
        [self.contentView addSubview:self.deLabel];
        
        CGRect but1Rect = CGRectMake(20, 15 + self.deLabel.frame.size.height, 20, 20);
        self.but1 = [[UIButton alloc]initWithFrame:but1Rect];
        [self.but1 setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
        [self.but1 addTarget:self action:@selector(radioButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:self.but1];
        
        CGRect but2Rect = CGRectMake(20, 35 + self.deLabel.frame.size.height, 20, 20);
        self.but2 = [[UIButton alloc]initWithFrame:but2Rect];
        [self.but2 setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
        [self.but2 addTarget:self action:@selector(radioButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:self.but2];
        
        CGRect but3Rect = CGRectMake(20, 55 + self.deLabel.frame.size.height, 20, 20);
        self.but3 = [[UIButton alloc]initWithFrame:but3Rect];
        [self.but3 setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
        [self.but3 addTarget:self action:@selector(radioButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:self.but3];
        
        CGRect but4Rect = CGRectMake(20, 75 + self.deLabel.frame.size.height, 20, 20);
        self.but4 = [[UIButton alloc]initWithFrame:but4Rect];
        [self.but4 setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
        [self.but4 addTarget:self action:@selector(radioButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:self.but4];
        
        CGRect ans1LabelRect = CGRectMake(45, 15 + self.deLabel.frame.size.height, 255, 20);
        self.ans1Label = [[UILabel alloc]initWithFrame:ans1LabelRect];
        self.ans1Label.font = [UIFont systemFontOfSize:14];
        self.ans1Label.textColor = [UIColor blueColor];
        [self.contentView addSubview:self.ans1Label];
        
        CGRect ans2LabelRect = CGRectMake(45, 35 + self.deLabel.frame.size.height, 255, 20);
        self.ans2Label = [[UILabel alloc]initWithFrame:ans2LabelRect];
        self.ans2Label.font = [UIFont systemFontOfSize:14];
        self.ans2Label.textColor = [UIColor blueColor];
        [self.contentView addSubview:self.ans2Label];
        
        CGRect ans3LabelRect = CGRectMake(45, 55 + self.deLabel.frame.size.height, 255, 20);
        self.ans3Label = [[UILabel alloc]initWithFrame:ans3LabelRect];
        self.ans3Label.font = [UIFont systemFontOfSize:14];
        self.ans3Label.textColor = [UIColor blueColor];
        [self.contentView addSubview:self.ans3Label];
        
        CGRect ans4LabelRect = CGRectMake(45, 75 + self.deLabel.frame.size.height, 255, 20);
        self.ans4Label = [[UILabel alloc]initWithFrame:ans4LabelRect];
        self.ans4Label.font = [UIFont systemFontOfSize:14];
        self.ans4Label.textColor = [UIColor blueColor];
        [self.contentView addSubview:self.ans4Label];
    
        self.radioButs = [NSMutableArray arrayWithObjects:self.but1, self.but2, self.but3, self.but4, Nil];
    }
    return self;
}


-(void) radioButtonClicked:(UIButton *) sender{
	NSInteger selectedBut = 0;
    for(NSInteger i=0;i<[self.radioButs count];i++){
		[self.radioButs[i] setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
        [self.radioButs[i] setSelected: NO];
	}
	[sender setBackgroundImage:[UIImage imageNamed:@"radio-on.png"] forState:UIControlStateNormal];
    [sender setSelected:YES];
    for(NSInteger i=0;i<[self.radioButs count];i++){
        if ([self.radioButs[i] isSelected]) selectedBut = i+1;
    }
    [_delegate selectedBut:selectedBut atCell: self];
}


-(void)clearAll{
	for(int i=0;i<[self.radioButs count];i++){
		[[self.radioButs objectAtIndex:i] setBackgroundImage:[UIImage imageNamed:@"radio-off.png"] forState:UIControlStateNormal];
		
	}
    
}

@end
