//
//  HMServerManager.h
//  lv-165IOS
//
//  Created by roman on 27.11.15.
//  Copyright © 2015 SS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"

@protocol HMCoreDataDelegate;
@class NSManagedObjectContext;

@interface HMServerManager : NSObject
@property (strong, nonatomic) Reachability* reachability;
@property (assign, nonatomic,readwrite) BOOL isServerReachable;

+ (HMServerManager*) sharedManager;

- (void)getContinentsWithonSuccess:(void(^)(NSArray* countries)) success
                         onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure;

- (void)getCountriesWithonSuccess:(void(^)(NSArray* continents)) success
                         onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure;

- (void)getPlacesByCountryWithISO:(NSString *)iso
                 onSuccess:(void(^)(NSDictionary* places)) success
                 onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure;

- (void)getPlaceWithID:(NSString *)placeID
             onSuccess:(void(^)(NSDictionary* places)) success
             onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure;

- (void)getPlacesByContinentName:(NSString *)continentName
                  onSuccess:(void(^)(NSDictionary* places)) success
                  onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure;

@property (weak, nonatomic) NSDictionary <HMCoreDataDelegate>* delegate;
@property (strong, nonatomic) NSManagedObjectContext* managedObjectContext;

@end