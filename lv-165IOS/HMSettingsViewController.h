//
//  HMSettingsViewController.h
//  lv-165IOS
//
//  Created by Ihor Zabrotsky on 11/30/15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMSettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlForMapType;
@property (nonatomic, strong) NSNumber *mapType;

- (IBAction)segmentedControlForMapTypeValueChanged:(id)sender;
- (IBAction)actionDownloadsCountries:(id)sender;

@end
