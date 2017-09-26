//
//  ViewController.m
//  Interactive Blur Sample
//
//  Created by Tamás Zahola on 2017. 09. 26..
//  Copyright © 2017. Tamás Zahola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIVisualEffectView* blurView;

@end

@implementation ViewController {
    UIViewPropertyAnimator* _animator;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBlurEffect* blur = (UIBlurEffect*)self.blurView.effect;
    NSAssert([blur isKindOfClass:UIBlurEffect.class], @"Wrong class from Interface Builder: %@", blur.class);
    
    self.blurView.effect = nil;
    _animator = [[UIViewPropertyAnimator alloc] initWithDuration:1 curve:UIViewAnimationCurveLinear animations:^{
        self.blurView.effect = blur;
    }];
}

- (IBAction)sliderValueChander:(UISlider*)slider {
    _animator.fractionComplete = slider.value;
}

@end

