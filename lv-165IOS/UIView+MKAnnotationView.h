//
//  UIView.h
//  lv-165IOS
//
//  Created by Ihor Zabrotsky on 12/2/15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@class MKAnnotationView;

@interface UIView (MKAnnotationView)

- (MKAnnotationView*) superAnnotationView;

@end
