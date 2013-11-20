//
//  CBViewController.m
//  CompressImage
//
//  Created by ly on 13-11-5.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import "CBViewController.h"
#import "CBImageCompressor.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIImage *img = [UIImage imageNamed:@"a.jpg"];
    
    NSLog(@"begin");
    [CBImageCompressor compressImage:img limitSize:512*1024*8 maxSide:400 completion:^(NSData *data) {
        NSLog(@"In: %f", data.length/1024/8.0);
    }];
    NSLog(@"end");
}


@end
