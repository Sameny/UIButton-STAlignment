//
//  UIButton+STAdd.h
//  Button-Alignment
//
//  Created by 泽泰 舒 on 2017/8/11.
//  Copyright © 2017年 舒泽泰. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, STContentAlignOrientation) {
    STContentAlignOrientationVertical,
    STContentAlignOrientationHorizontal,
};

typedef NS_ENUM(NSUInteger, STContentAlignment) {
    STContentAlignmentLeft,
    STContentAlignmentCenter,
    STContentAlignmentRight,
    
    STContentAlignmentTopLeft,
    STContentAlignmentTopCenter,
    STContentAlignmentTopRight,
    
    STContentAlignmentBottomLeft,
    STContentAlignmentBottomCenter,
    STContentAlignmentBottomRight,
};

@interface UIButton (STAdd)

- (void)verticalAlignmentWithSpace:(CGFloat)space imageAtTop:(BOOL)imageAtTop;
- (void)horizontalAlignmentWithSpace:(CGFloat)space imageAtLeft:(BOOL)imageAtLeft;


/**
 水平方向设置UIButton中的文字和图片对齐方式
 
 @param space 文案和图片之间的间距
 @param imageAtTop YES:图片在上
 @param alignment 整体内容对齐方式
 */
- (void)verticalAlignmentWithSpace:(CGFloat)space imageAtTop:(BOOL)imageAtTop alignment:(STContentAlignment)alignment;

/**
 水平方向设置UIButton中的文字和图片对齐方式

 @param space 文案和图片之间的间距
 @param imageAtLeft YES:图片在左
 @param alignment 整体内容对齐方式
 */
- (void)horizontalAlignmentWithSpace:(CGFloat)space imageAtLeft:(BOOL)imageAtLeft alignment:(STContentAlignment)alignment;


/**
 设置UIButton中的文字和图片对齐方式
 
 @param alignOrientation 垂直／水平放置文案和图片
 @param space 文案和图片之间的间距
 @param imageAtHead YES:图片在前(上／左)
 @param alignment 整体内容对齐方式
 */
- (void)alignmentWithContentAlignOrientation:(STContentAlignOrientation)alignOrientation space:(CGFloat)space imageAtHead:(BOOL)imageAtHead alignment:(STContentAlignment)alignment;

@end
