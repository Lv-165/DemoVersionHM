//
//  HMCoreDataViewController.h
//  lv-165IOS
//
//  Created by AG on 11/28/15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMCoreDataManager.h"
#import "HMCoreDataViewController.h"

@interface HMCoreDataViewController : UITableViewController <NSFetchedResultsControllerDelegate>


@property (strong, nonatomic) NSManagedObjectContext* managedObjectContext;
@property (strong, nonatomic) NSFetchedResultsController* fetchedResultsController;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (strong, nonatomic) NSString *searchString;

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end
