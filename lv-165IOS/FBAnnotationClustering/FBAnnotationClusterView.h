//
//  FBAnnotationClusterView.h
//  lv-165IOS
//
//  Created by Admin on 12/7/15.
//  Copyright © 2015 SS. All rights reserved.
//

@import MapKit;
@import Foundation;
#import "FBAnnotationCluster.h"

@interface FBAnnotationClusterView : MKAnnotationView

@property (nonatomic) FBAnnotationCluster * annotation;
@property (nonatomic) UILabel * annotationLabel;

@end
