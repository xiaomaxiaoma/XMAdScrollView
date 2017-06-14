//
//  AdScrollView.h
//  XMAdScrollView
//
//  Created by 马方会 on 2017/6/14.
//  Copyright © 2017年 马方会. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TopicDelegate<NSObject>
-(void)didClick:(id)data;
-(void)currentPage:(int)page total:(NSUInteger)total;
@end
@interface AdScrollView : UIScrollView<UIScrollViewDelegate>{
    UIButton * pic;
    bool flag;
    int scrollTopicFlag;
    NSTimer * scrollTimer;
    int currentPage;
    CGSize imageSize;
    UIImage *image;
}
@property(nonatomic,strong)NSArray * pics;
@property(nonatomic,retain)id<TopicDelegate> Scrdelegate;
-(void)releaseTimer;
-(void)upDate;
@end
