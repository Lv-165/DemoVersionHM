//
//  UIView+HMUItableViewCell.m
//  lv-165IOS
//
//  Created by Yurii Huber on 01.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import "UIView+HMUItableViewCell.h"

@implementation UIView (HMUItableViewCell)

- (HMDownloadCellTableViewCell*) superCell {
    
    if (!self.superview) {
        return nil;
    }

    if ([self.superview isKindOfClass:[HMDownloadCellTableViewCell class]]) {
        return (HMDownloadCellTableViewCell*)self.superview;
    }

    return [self.superview superCell];
}

@end
