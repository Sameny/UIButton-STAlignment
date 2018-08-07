//
//  STButton.h
//  Button-Alignment
//
//  Created by 泽泰 舒 on 2017/8/11.
//  Copyright © 2017年 舒泽泰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STButton : UIButton

@property (nonatomic, assign) BOOL st_autoUpdateAlignment; // if yes, the alignment can auto update after updating text or image;

@property (nonatomic, readonly) CGFloat spaceBetweenImageAndText;

@end
