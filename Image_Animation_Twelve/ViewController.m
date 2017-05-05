//
//  ViewController.m
//  Image_Animation_Twelve
//
//  Created by Apple on 10/05/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.aEFAnimationVC = ({
        EFAnimationViewController *aEFAnimationVC = [[EFAnimationViewController alloc] init];
        [self.view addSubview:aEFAnimationVC.view];
        [self addChildViewController:aEFAnimationVC];
        [aEFAnimationVC didMoveToParentViewController:self];
        aEFAnimationVC;
    });
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc
{
    [_aEFAnimationVC.view removeFromSuperview];
    [_aEFAnimationVC removeFromParentViewController];
}
@end
