//
//  ViewController.m
//  button design
//
//  Created by mokako on 2015/12/26.
//  Copyright © 2015年 mocako. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithHex:@"#FDFAFC"];
    [self customButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)customButton{
    UIButton *but = [[UIButton alloc]initWithFrame:CGRectMake(0,0,60,60)];
    but.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    but.layer.cornerRadius = 30;
    but.clipsToBounds = YES;
    [but addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
    
    //base gradietion
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.type = kCAGradientLayerAxial;
    gradient.frame = but.bounds;
    gradient.colors = @[
                        (id)[UIColor colorWithHex:@"#EDEAE2"].CGColor,
                        (id)[UIColor colorWithHex:@"#FAFAFA"].CGColor
                        ];
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(0,1);
    [but.layer addSublayer:gradient];
    
    
    //but item
    UIView *ring = [[UIView alloc]initWithFrame:CGRectMake(0,0,40,40)];
    ring.userInteractionEnabled = NO;
    ring.center = CGPointMake(but.frame.size.width / 2,but.frame.size.height / 2);
    ring.backgroundColor = [UIColor colorWithHex:@"#FFFFFF"];
    ring.layer.cornerRadius = 20;
    //// but shadow
    ring.layer.shadowColor = [[UIColor colorWithHex:@"999999"]CGColor];
    ring.layer.shadowOpacity = 0.5;
    ring.layer.shadowRadius = 2.0;
    ring.layer.shadowOffset = CGSizeMake(0,5);
    //// but border
    ring.layer.borderColor = [[UIColor colorWithHex:@"999999" alpha:0.5] CGColor];
    ring.layer.borderWidth = 0.7;
    [but addSubview:ring];
    
    //but item 2
    UIView *ring2 = [[UIView alloc]initWithFrame:CGRectMake(0,0,40,40)];
    ring2.userInteractionEnabled = NO;
    ring2.center = CGPointMake(but.frame.size.width / 2,but.frame.size.height / 2);
    ring2.layer.cornerRadius = 20;
    ring2.clipsToBounds = YES;
    ring2.layer.borderColor = [[UIColor colorWithHex:@"FFFFFF" alpha:0.2] CGColor];
    ring2.layer.borderWidth = 2.0;
    
    [but addSubview:ring2];
    
    CAGradientLayer *gradient2 = [CAGradientLayer layer];
    gradient2.type = kCAGradientLayerAxial;
    gradient2.frame = ring2.bounds;
    gradient2.colors = @[
                         (id)[UIColor colorWithHex:@"#ffffff"].CGColor,
                        (id)[UIColor colorWithHex:@"#DDDAD2"].CGColor
                        ];
    gradient2.startPoint = CGPointMake(0, 0);
    gradient2.endPoint = CGPointMake(0,1);
    [ring2.layer addSublayer:gradient2];

    
    label = [[ShadowLabel alloc]initWithFrame:CGRectMake(0,0,40,40)];
    label.center = CGPointMake(but.frame.size.width / 2,but.frame.size.height / 2);
    label.text = @"ON";
    label.textColor = [UIColor colorWithHex:@"387403" alpha:0.5];
    label.font = [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:12];
    label.textAlignment = NSTextAlignmentCenter;
    [label setBlurShadow:CGSizeMake(0,0) radius:6.0f color:[UIColor colorWithHex:@"BEFF00"]];
    [but addSubview:label];

}

-(void)touch{
    if([label.text isEqualToString:@"ON"]){
        label.text = @"OFF";
        label.textColor = [UIColor colorWithHex:@"444444" alpha:0.5];
        [label setBlurShadow:CGSizeMake(0,0) radius:1.0f color:[UIColor colorWithHex:@"387403"]];
    }else{
        label.text = @"ON";
        label.textColor = [UIColor colorWithHex:@"387403" alpha:0.5];
        [label setBlurShadow:CGSizeMake(0,0) radius:6.0f color:[UIColor colorWithHex:@"BEFF00"]];
    }
}


@end
