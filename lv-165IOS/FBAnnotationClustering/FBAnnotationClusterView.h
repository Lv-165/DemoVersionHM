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
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-property-synthesis"
@property(nonatomic) FBAnnotationCluster *annotation;
#pragma clang diagnostic pop

@property(nonatomic) UILabel *annotationLabel;

@end
