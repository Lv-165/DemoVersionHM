//
//  HMCommentsTableViewController.h
//  lv-165IOS
//
//  Created by Yurii Huber on 09.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMCoreDataManager.h"

@interface HMCommentsTableViewController : UITableViewController

@property (strong, nonatomic) NSFetchedResultsController* fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext* managedObjectContext;

@property(strong, nonatomic)NSMutableArray *commentsArray;
@property(strong, nonatomic)NSString *description;

@end
