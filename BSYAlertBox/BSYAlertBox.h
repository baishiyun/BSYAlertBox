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


/**
 居中显示
 */
-(void)initCenterAlertBoxWithText:(NSString *)text;


/**
 居上显示
 */
-(void)initTopAlertWithText:(NSString *)text;


/**
 居下显示
 */
-(void)initBottomAlertWithText:(NSString *)text;

/**
 居左显示
 */
-(void)initLeftAlertWithText:(NSString *)text;
/**
  居右显示
 */

-(void)initRightAlertWithText:(NSString *)text;

/**
 居中显示
 @param during 显示时间
 */
-(void)initCenterAlertBoxWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;

/**
 居上显示
 @param during 显示时间
 */
-(void)initTopAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;

/**
 居下显示
 @param during 显示时间
 */
-(void)initBottomAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;


/**
 居左显示
 @param during 显示时间
 */
-(void)initLeftAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;



/**
 居右显示
 @param during 显示时间
 */
-(void)initRightAlertWithText:(NSString *)text During:(CGFloat)during textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor;
@end
