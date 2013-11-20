//
//  CBImageCompressor.h
//  CompressImage
//
//  Created by ly on 13-11-5.
//  Copyright (c) 2013年 ly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBImageCompressor : NSObject

+ (void)compressImage:(UIImage *)image limitSize:(NSUInteger)size maxSide:(CGFloat)length
           completion:(void (^)(NSData *data))block;

+ (UIImage *)imageWithMaxSide:(CGFloat)length sourceImage:(UIImage *)image;

@end
