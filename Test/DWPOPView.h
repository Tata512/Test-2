//
//  DWPOPView.h
//  DWPOP-UP
//
//  Created by DavidWang on 15/11/10.
//  Copyright © 2015年 DavidWang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pop.h"

@interface DWPOPView : UIView

-(void)setAdapterView:(UIView *)addview;
-(void)setAdapterView:(UIView *)addview springBounciness:(CGFloat) springBounciness springSpeed:(CGFloat) springSpeed;
-(void)showanimation;
-(void)setDWBackgroundColor:(UIColor *)color;
@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com