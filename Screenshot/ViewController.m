//
//  ViewController.m
//  Screenshot
//
//  Created by zhoushejun on 13-7-28.
//  Copyright (c) 2013年 zhou. All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setBgImg];
    [self screenshot];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBgImg{
    
    UIImageView *imgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"QQ20130728-7.png"]];
    [self.view addSubview:imgV];
}
- (void)screenshot{

    //将整个self.view大小的图层形式创建一张图片image
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    //然后将该图片保存到图片库
    UIImageWriteToSavedPhotosAlbum(image,self,nil,nil);
}

@end
