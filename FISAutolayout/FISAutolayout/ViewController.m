//
//  ViewController.m
//  FISAutolayout
//
//  Created by Guang on 10/15/15.
//  Copyright © 2015 Guang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonLeft;
@property (weak, nonatomic) IBOutlet UIButton *buttonRight;
@property (weak, nonatomic) IBOutlet UITextView *textV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.buttonLeft.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant: 10].active = YES;
    self.buttonLeft.backgroundColor = [UIColor greenColor];
    [self.buttonLeft.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant: -10].active = YES;
    
    
    [self.buttonRight.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant: -10].active = YES;
    self.buttonRight.backgroundColor = [UIColor blueColor];
    [self.buttonRight.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant: -10].active = YES;
    
    
    [self.textV.topAnchor constraintEqualToAnchor:self.view.topAnchor constant: 50].active = YES;
    [self.textV.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    [self.textV.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant: -10].active = YES;
    [self.textV.bottomAnchor constraintEqualToAnchor:self.buttonRight.topAnchor constant: -20].active = YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
