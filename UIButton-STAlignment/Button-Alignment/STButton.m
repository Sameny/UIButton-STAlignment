//
//  STButton.m
//  Button-Alignment
//
//  Created by 泽泰 舒 on 2017/8/11.
//  Copyright © 2017年 舒泽泰. All rights reserved.
//

#import "UIButton+STAdd.h"
#import "STButton.h"

@interface STButton ()

@property (nonatomic, assign) BOOL alignDidSetted;
@property (nonatomic, assign) STContentAlignOrientation alignOrientation;
@property (nonatomic, assign) STContentAlignment contentAlignment;
@property (nonatomic, assign) BOOL imageAtHead;
@property (nonatomic, assign) CGFloat spaceBetweenImageAndText;

@end

@implementation STButton

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    if (_st_autoUpdateAlignment && _alignDidSetted) {
        [self alignmentWithContentAlignOrientation:_alignOrientation space:_contentAlignment imageAtHead:_imageAtHead alignment:_spaceBetweenImageAndText];
    }
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state {
    if (_st_autoUpdateAlignment && _alignDidSetted) {
        [self alignmentWithContentAlignOrientation:_alignOrientation space:_contentAlignment imageAtHead:_imageAtHead alignment:_spaceBetweenImageAndText];
    }
}

- (void)alignmentWithContentAlignOrientation:(STContentAlignOrientation)alignOrientation space:(CGFloat)space imageAtHead:(BOOL)imageAtHead alignment:(STContentAlignment)alignment {
    self.alignDidSetted = YES;
    self.alignOrientation = alignOrientation;
    self.contentAlignment = alignment;
    self.imageAtHead = imageAtHead;
    self.spaceBetweenImageAndText = space;
    [super alignmentWithContentAlignOrientation:alignOrientation space:space imageAtHead:imageAtHead alignment:alignment];
}

@end
