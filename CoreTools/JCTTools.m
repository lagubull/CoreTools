//
//  JCTTools.m
//  CoreTools
//
//  Created by Javier Laguna on 11/01/2016.
//  Copyright © 2016 Javier Laguna. All rights reserved.
//

#import "JCTTools.h"

@implementation JCTTools

+ (void)versionedScaleFactor:(UILabel *)label
                      factor:(CGFloat)factor
                        size:(CGFloat)size
{
    if ([[[UIDevice currentDevice] systemVersion] intValue] < 6)
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        [label setMinimumFontSize:size];
        [label setAdjustsFontSizeToFitWidth:YES];
        [label setLineBreakMode:NSLineBreakByWordWrapping];
#pragma clang diagnostic pop
    }
    else
    {
        [label setMinimumScaleFactor: factor];
    }
}

+ (void)versionedTextAlignment:(UILabel *)label
                     alignment:(int)alignment
{
        [label setTextAlignment:alignment];
}

+ (void)showSingleButtonAlert:(NSString *)title
                      message:(NSString *)message
                   buttonText:(NSString *)buttonText
                     parentViewController:(NSObject *)parentViewController
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:parentViewController
                                          cancelButtonTitle:buttonText
                                          otherButtonTitles:nil];
    #pragma clang diagnostic pop
    
    [alert show];
}

+ (NSString *)date2String:(NSDate*)date
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yy HH:mm"];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    
    return stringFromDate;
}

@end
