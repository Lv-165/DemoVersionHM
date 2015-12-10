//
//  HMCommentsTableViewController.h
//  lv-165IOS
//
//  Created by Yurii Huber on 10.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMCoreDataManager.h"

@interface HMCommentsTableViewController : UITableViewController

@property(strong, nonatomic)NSMutableArray *commentsArray;
@property(strong, nonatomic)NSString *descriptionString;

@property (strong, nonatomic) Place *create;

@end

