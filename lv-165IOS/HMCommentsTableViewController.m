//
//  HMCommentsTableViewController.m
//  lv-165IOS
//
//  Created by Yurii Huber on 09.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import "HMCommentsTableViewController.h"
#import "Place.h"
#import "Description.h"
#import "Comments.h"
#import "DescriptionInfo.h"
#import "Countries.h"

@interface HMCommentsTableViewController () <UITableViewDataSource>

@end

@implementation HMCommentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Countries"];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (self.description) {
        return [self.commentsArray count] + 1;
    }
    else {
        return [self.commentsArray count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* identifier = @"Cell";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];

    if (indexPath.row == 0) {
        cell.textLabel.text = self.description;
    }
    else {
        cell.textLabel.text = [self.commentsArray objectAtIndex:indexPath.row - 1];
    }
    
    return cell;
}

#pragma mark - Core Data - 

- (NSManagedObjectContext* )managedObjectContext {
    if (!_managedObjectContext) {
        _managedObjectContext = [[HMCoreDataManager sharedManager]managedObjectContext];
    }
    return _managedObjectContext;
}

@end
