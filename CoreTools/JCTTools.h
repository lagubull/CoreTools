//
//  JCTTools.h
//  CoreTools
//
//  Created by Javier Laguna on 11/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import <Foundation/Foundation.h>

@import  UIKit;

@interface JCTTools : NSObject

+ (void)versionedScaleFactor:(UILabel *)label
                      factor:(CGFloat)factor
                        size:(CGFloat)size;

+ (void)versionedTextAlignment:(UILabel *)label
                     alignment:(int)alignment;

+ (void)showSingleButtonAlert:(NSString *)title
                      message:(NSString *)message
                   buttonText:(NSString *)buttonText
         parentViewController:(NSObject *)parentViewController;

+ (NSString *)date2String:(NSDate*)date;
    
@end
