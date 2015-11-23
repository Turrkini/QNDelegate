//
//  QNToolbar.m
//  QNDelegate
//
//  Created by iamtt on 15/11/23.
//  Copyright © 2015年 iamtt. All rights reserved.
//

#import "QNToolbar.h"


@implementation QNToolbar

+ (instancetype)toolbar
{
  return [[[NSBundle mainBundle] loadNibNamed:@"QNToolbar" owner:nil options:nil] lastObject];
}
//3.发送代理消息
- (IBAction)DoneClick:(id)sender
{
  if ([self.Clickdelegate respondsToSelector:@selector(ClickDoneBtn:)]) {
    [self.Clickdelegate ClickDoneBtn:sender];
  }
}

@end
