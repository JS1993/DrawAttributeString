//
//  DrawAttributeStingView.m
//  demo3_DrawAttributeString
//
//  Created by  江苏 on 16/2/24.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "DrawAttributeStingView.h"

@implementation DrawAttributeStingView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    NSString * message=@"I am a message";
    [message drawAtPoint:CGPointMake(20, 30) withAttributes:@{NSFontAttributeName:[UIFont italicSystemFontOfSize:30],NSForegroundColorAttributeName:[UIColor redColor],NSBackgroundColorAttributeName:[UIColor greenColor]}];
    message=@"I am a long long long long.....";
    [message drawInRect:CGRectMake(20, 80, 280, 160) withAttributes:@{NSFontAttributeName:[UIFont italicSystemFontOfSize:26],NSForegroundColorAttributeName:[UIColor purpleColor],NSBackgroundColorAttributeName:[UIColor lightGrayColor]}];
    message=@"ABCDEFGHIJKLMNOPQRSTUVWXYZ,ABCDEFGHIJKLMNOPQRSTUVWXYZ,ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    CGRect r=[message boundingRectWithSize:CGSizeMake(280, 999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont italicSystemFontOfSize:26]} context:nil];
    r.origin=CGPointMake(20, 300);
    [message drawInRect:r withAttributes:@{NSFontAttributeName:[UIFont italicSystemFontOfSize:26],NSBackgroundColorAttributeName:[UIColor purpleColor]}];
    
}


@end
