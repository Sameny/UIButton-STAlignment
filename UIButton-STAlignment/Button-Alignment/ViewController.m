//
//  ViewController.m
//  Button-Alignment
//
//  Created by 泽泰 舒 on 2017/8/11.
//  Copyright © 2017年 舒泽泰. All rights reserved.
//

#import "UIButton+STAdd.h"
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button0;
@property (nonatomic, weak) IBOutlet UIButton *button1;
@property (nonatomic, weak) IBOutlet UIButton *button2;
@property (nonatomic, weak) IBOutlet UIButton *button3;
@property (nonatomic, weak) IBOutlet UIButton *button4;
@property (nonatomic, weak) IBOutlet UIButton *button5;
@property (nonatomic, weak) IBOutlet UIButton *button6;
@property (nonatomic, weak) IBOutlet UIButton *button7;
@property (nonatomic, weak) IBOutlet UIButton *button8;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    STContentAlignOrientation testOri = STContentAlignOrientationVertical;
//    STContentAlignOrientation testOri = STContentAlignOrientationHorizontal;
    CGFloat space = 10;
    BOOL imageAtHead = NO;
    [self.button0 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentTopLeft];
    [self.button1 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentTopCenter];
    [self.button2 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentTopRight];
    
    [self.button3 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentLeft];
    [self.button4 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentCenter];
    [self.button5 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentRight];
    
    [self.button6 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentBottomLeft];
    [self.button7 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentBottomCenter];
    [self.button8 alignmentWithContentAlignOrientation:testOri space:space imageAtHead:imageAtHead alignment:STContentAlignmentBottomRight];
    
    /*
     结论，UIButton的titleEdgeInsets 和 imageEdgeInsets 的 设置top为20时，并不是距离上边距为20，而是相对于原始的insets，整体向下偏移了10（不是20哦）
     也就是说，下面两者的效果是相等的
     self.button5.titleEdgeInsets = UIEdgeInsetsMake(10, 0, -10, 0);
     self.button5.titleEdgeInsets = UIEdgeInsetsMake(20, 0, 0, 0);
     
     正确的应该是
     self.button5.titleEdgeInsets = UIEdgeInsetsMake(20, 0, -20, 0);
     self.button5.titleEdgeInsets = UIEdgeInsetsMake(40, 0, 0, 0);
     */
    
//    CGSize btnSize = self.button5.bounds.size;
//    CGSize titleSize = self.button5.titleLabel.intrinsicContentSize;
//    CGSize imageSize = self.button5.imageView.image.size;
//
//    self.button5.titleEdgeInsets = UIEdgeInsetsMake(titleSize.height, 0, -titleSize.height, 0);
//    self.button4.imageEdgeInsets = UIEdgeInsetsMake(-imageSize.height, 0, 0, 0);
    
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[UIButton class]]) {
            ((UIButton *)view).titleLabel.backgroundColor = [UIColor blueColor];
        }
    }
}


@end
