//
//  HMMapAnnotation.h
//  lv-165IOS
//
//  Created by Yurii Huber on 03.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

typedef enum : NSUInteger {
    senseLess = 0,
    badRating,
    goodRaing
} RatingForPin;

@interface HMMapAnnotation : NSObject <MKAnnotation>

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, assign)RatingForPin ratingForColor;

@end
