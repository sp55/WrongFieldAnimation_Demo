//
//  ViewController.m
//  WrongFieldAnimation_Demo
//
//  Created by admin on 16/8/1.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//http://www.jianshu.com/p/9e72d874ab76
//当密码输入不匹配左右抖动
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)WrongAction:(UIButton *)sender {
    if (![_textField.text isEqualToString:@"123"]) {
        CAKeyframeAnimation *anim = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
        anim.repeatCount = 2;
        anim.values = @[@-5,@5,@-5];
        [_textField.layer addAnimation:anim forKey:nil];
    }
    
}



@end
