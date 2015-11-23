//
//  ViewController.m
//  QNDelegate
//
//  Created by iamtt on 15/11/23.
//  Copyright © 2015年 iamtt. All rights reserved.
//

#import "ViewController.h"
#import "QNToolbar.h"

@interface ViewController () <QNToolbarDelegate> //1.遵守代理协议
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) UIDatePicker *datePicker;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.datePicker = [[UIDatePicker alloc] init];
  
  //将datepicker模式设为date模式
  self.datePicker.datePickerMode = UIDatePickerModeDate;
  
  self.textField.inputView = self.datePicker;
  
  QNToolbar *toolbar = [QNToolbar toolbar];
  
  //2.设置代理对象
  toolbar.Clickdelegate = self;
  
  self.textField.inputAccessoryView = toolbar;
  
}

#pragma mark - QNToolbar delegate
//3.实现代理方法
- (void)ClickDoneBtn:(UIBarButtonItem *)item
{
  //获取datePicker当前显示的时间
  NSDate *date = self.datePicker.date;
  
  //将时间格式转化成字符串格式
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  dateFormatter.dateFormat = @"yyyyMMdd";
  NSString *dateStr = [dateFormatter stringFromDate:date];
  
  //设置textField的内容
  self.textField.text = dateStr;
  
}

@end
