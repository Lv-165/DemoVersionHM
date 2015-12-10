//
//  HMAnnotationView.h
//  lv-165IOS
//
//  Created by Yurii Huber on 10.12.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>

@protocol HMAnnotationView <NSObject, MKAnnotation>

@property(assign, nonatomic)NSInteger idPlace;

@end
