//
//  FBAnnotationClusterView.m
//  lv-165IOS
//
//  Created by Admin on 12/7/15.
//  Copyright © 2015 SS. All rights reserved.
//

#import "FBAnnotationClusterView.h"

@interface FBAnnotationClusterView ()

@end

@implementation FBAnnotationClusterView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation
         reuseIdentifier:(NSString *)reuseIdentifier {
  self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
  if (self != nil) {

    FBAnnotationCluster *clusterAnnotation = (FBAnnotationCluster *)annotation;
    self.annotationLabel =
        [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
    self.annotationLabel.layer.borderWidth = 3;
    self.annotationLabel.layer.cornerRadius = 17.5;
    self.annotationLabel.font = [UIFont systemFontOfSize:14.0];

    self.annotationLabel.text = [NSString
        stringWithFormat:@"%lu",
                         (unsigned long)clusterAnnotation.annotations.count];
    self.annotationLabel.textAlignment = NSTextAlignmentCenter;

    self.annotationLabel.layer.borderColor =
        [[UIColor colorWithRed:0.4379 green:0.6192 blue:0.7767 alpha:1.0]
            CGColor];
    self.annotationLabel.backgroundColor = [UIColor clearColor];

    self.canShowCallout = NO;
    self.draggable = NO;
    self.annotationLabel.userInteractionEnabled = YES;
    [self addSubview:self.annotationLabel];
  }

  return self;
}

@end
