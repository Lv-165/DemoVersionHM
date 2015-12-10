//
//  HMCommentsTableViewController.m
//  lv-165IOS
//
//  Created by Yurii Huber on 10.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import "HMCommentsTableViewController.h"
#import "HMDynamicTableViewCell.h"
#import "Place.h"
#import "Description.h"
#import "Comments.h"
#import "DescriptionInfo.h"
#import "Countries.h"
#import "Comments.h"
#import <MapKit/MapKit.h>

@interface HMCommentsTableViewController ()

@end

static NSString* const CellIdentifier = @"DynamicTableViewCell";

@implementation HMCommentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *array = self.create.descript.allObjects;
    //NSArray *commentsArray = self.create.comments.allObjects;
    self.commentsArray = self.create.comments.allObjects;
    
    Description *description = [array objectAtIndex:0];
    DescriptionInfo *descriptionInfo = description.descriptInfo;
    //Comments *comments = commentsArray;
    
    self.descriptionString = descriptionInfo.descriptionString;
    
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
}

# pragma mark - Cell Setup

- (void)setUpCell:(HMDynamicTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        cell.label.text = self.descriptionString;
    }
    else  if (indexPath.row >= 1){
        Comments *comments = [self.commentsArray objectAtIndex:(indexPath.row-1)];
        cell.label.text = comments.comment;
    }
}

# pragma mark - UITableViewControllerDelegate

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.descriptionString) {
        return [self.commentsArray count] + 1;
    }
    else {
        return [self.commentsArray count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HMDynamicTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [self setUpCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    static HMDynamicTableViewCell *cell = nil;
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    });
    
    [self setUpCell:cell atIndexPath:indexPath];
    
    return [self calculateHeightForConfiguredSizingCell:cell];
}

- (CGFloat)calculateHeightForConfiguredSizingCell:(UITableViewCell *)sizingCell {
    [sizingCell layoutIfNeeded];
    
    CGSize size = [sizingCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}

@end
