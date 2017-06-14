//
//  ViewController.m
//  XMAdScrollView
//
//  Created by 马方会 on 2017/6/14.
//  Copyright © 2017年 马方会. All rights reserved.
//

#import "ViewController.h"
#import "AdScrollView.h"
@interface ViewController ()<TopicDelegate>
@property (nonatomic,strong) AdScrollView * Topic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createui];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)createui{

    //实例化
    _Topic = [[AdScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 190)];
    //代理
    _Topic.Scrdelegate = self;
    //创建数据
    NSMutableArray * tempArray = [[NSMutableArray alloc]init];
    //本地图片
    //***********************//
    //key pic = 本地 UIImage
    //key title = 显示的标题 NSString
    //key isLoc = 是否本地图片 Bool
    //***********************//
    //    UIImage * image = [UIImage imageNamed:@"1.jpg"];
    //    [tempArray addObject:[NSDictionary dictionaryWithObjects:@[image ,@"PIC1",@YES] forKeys:@[@"pic",@"title",@"isLoc"]]];
    //    UIImage * image2 = [UIImage imageNamed:@"2.jpg"];
    //    [tempArray addObject:[NSDictionary dictionaryWithObjects:@[image2 ,@"PIC2",@YES] forKeys:@[@"pic",@"title",@"isLoc"]]];
    //网络图片
    //***********************//
    //key pic = 地址 NSString
    //key title = 显示的标题 NSString
    //key isLoc = 是否本地图片 Bool
    //key placeholderImage = 网络图片加载失败时显示的图片 UIImage
    //***********************//
    [tempArray addObject:[NSDictionary dictionaryWithObjects:@[@"http://zqmfcdn.huanhuba.com/ay_static/images/app_run/4dba4f6d7c22c792a37ccdbbdb441aa061701f5d.jpg" ,@"PIC3",@NO] forKeys:@[@"pic",@"title",@"isLoc"]]];
    [tempArray addObject:[NSDictionary dictionaryWithObjects:@[@"http://zqmfcdn.huanhuba.com/ay_static/images/app_run/4dba4f6d7c22c792a37ccdbbdb441aa061701f5d.jpg" ,@"PIC3",@NO] forKeys:@[@"pic",@"title",@"isLoc"]]];
    [tempArray addObject:[NSDictionary dictionaryWithObjects:@[@"http://zqmfcdn.huanhuba.com/ay_static/images/app_run/b47a47ed19c8a9ef1af17a6563e377fd11ecf0b6.jpg" ,@"PIC3",@NO] forKeys:@[@"pic",@"title",@"isLoc"]]];
    //网络图片加载失败
    //    UIImage * PlaceholderImage = [UIImage imageNamed:@"3.jpg"];
    //    [tempArray addObject:[NSDictionary dictionaryWithObjects:@[@"http://s.doyo.cn/img/52/cf/91779e9e784d2c000003.jpg" ,@"PIC4",@NO,PlaceholderImage] forKeys:@[@"pic",@"title",@"isLoc",@"placeholderImage"]]];
    
    //加入数据
    _Topic.pics = tempArray;
    //更新
    [_Topic upDate];
    [self.view addSubview:_Topic];
}
#pragma delegate
-(void)didClick:(id)data{
    
    NSLog(@"点击了%@",data);
}
-(void)currentPage:(int)page total:(NSUInteger)total{

    NSLog(@"%d--%lu",page,(unsigned long)total);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
