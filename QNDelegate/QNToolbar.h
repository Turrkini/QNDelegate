//
//  QNToolbar.h
//  QNDelegate
//
//  Created by iamtt on 15/11/23.
//  Copyright © 2015年 iamtt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QNToolbar;
//1.定义代理协议
@protocol QNToolbarDelegate <NSObject>

@optional
- (void)ClickDoneBtn:(UIBarButtonItem *)item;

@end

@interface QNToolbar : UIToolbar
//2.定义代理属性
@property (weak, nonatomic)id <QNToolbarDelegate> Clickdelegate;
+ (instancetype)toolbar;

@end
