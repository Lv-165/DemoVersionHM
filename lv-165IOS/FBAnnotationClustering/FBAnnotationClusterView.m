//
//  FBAnnotationClusterView.m
//  lv-165IOS
//
//  Created by Admin on 12/7/15.
//  Copyright © 2015 SS. All rights reserved.
//

#import "FBAnnotationClusterView.h"

static CGFloat kMaxViewWidth = 150.0;

static CGFloat kViewWidth = 90;
static CGFloat kViewLength = 100;

static CGFloat kLeftMargin = 15.0;
static CGFloat kRightMargin = 5.0;
static CGFloat kTopMargin = 5.0;

@interface FBAnnotationClusterView()

@end

@implementation FBAnnotationClusterView


- (UILabel *)makeiOSLabel{
  self.annotationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
  self.annotationLabel.font = [UIFont systemFontOfSize:9.0];
  self.annotationLabel.textColor = [UIColor whiteColor];
  
  self.annotationLabel.layer.cornerRadius = 8;
  [self.annotationLabel sizeToFit]; // get the right vertical size

  // compute the optimum width of our annotation, based on the size of our annotation label
  CGFloat optimumWidth =
      self.annotationLabel.frame.size.width + kRightMargin + kLeftMargin;
  CGRect frame = self.frame;
  if (optimumWidth < kViewWidth)
    frame.size = CGSizeMake(kViewWidth, kViewLength);
  else if (optimumWidth > kMaxViewWidth)
    frame.size = CGSizeMake(kMaxViewWidth, kViewLength);
  else
    frame.size = CGSizeMake(optimumWidth, kViewLength);
  self.frame = frame;

   self.annotationLabel.lineBreakMode = NSLineBreakByTruncatingTail;
   self.annotationLabel.backgroundColor = [UIColor clearColor];
  CGRect newFrame =  self.annotationLabel.frame;
  newFrame.origin.x = kLeftMargin;
  newFrame.origin.y = kTopMargin;
  newFrame.size.width = self.frame.size.width - kRightMargin - kLeftMargin;
   self.annotationLabel.frame = newFrame;
self.annotationLabel.userInteractionEnabled = YES;
  return  self.annotationLabel;
}


- (id)initWithAnnotation:(id<MKAnnotation>)annotation
         reuseIdentifier:(NSString *)reuseIdentifier {
  self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
  if (self != nil) {
    FBAnnotationCluster *clusterAnnotation = (FBAnnotationCluster *)self.annotation;
    // offset the annotation so it won't obscure the actual lat/long location
    self.centerOffset = CGPointMake(50.0, 50.0);
    self.annotationLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)clusterAnnotation.annotations.count];
  }

  return self;
}

@end
