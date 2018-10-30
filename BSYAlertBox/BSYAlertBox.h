//
//  BSYAlertBox.h
//  BSYAlertBoxDemo
//
//  Created by 白仕云 on 2018/5/16.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger,ViewAlignment){
    
    ViewAlignmentCenter,
    ViewAlignmentTop,
    ViewAlignmentBottom,
    ViewAlignmentLeft,
    ViewAlignmentRight,
};




@interface BSYAlertBox : NSObject

+(BSYAlertBox *)shareAlertBox;

/**
 居中显示
 */
-(void)showCenterAlertBoxWithText:(NSString *)text;


/**
 居上显示
 */
-(void)showTopAlertWithText:(NSString *)text;


/**
 居下显示
 */
-(void)showBottomAlertWithText:(NSString *)text;

/**
 居左显示
 */
-(void)showLeftAlertWithText:(NSString *)text;
/**
  居右显示
 */

-(void)showRightAlertWithText:(NSString *)text;

/**
 居中显示
 @param during 显示时间
 */
-(void)showCenterAlertBoxWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;

/**
 居上显示
 @param during 显示时间
 */
-(void)showTopAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;

/**
 居下显示
 @param during 显示时间
 */
-(void)showBottomAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;


/**
 居左显示
 @param during 显示时间
 */
-(void)showLeftAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;



/**
 居右显示
 @param during 显示时间
 */
-(void)showRightAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;
@end
