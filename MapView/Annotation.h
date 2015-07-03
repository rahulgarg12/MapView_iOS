//
//  Annotation.h
//  MapView
//
//  Created by Rahul Garg on 29/07/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject<MKAnnotation>

@property (nonatomic, strong) NSString *title;

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;

- (id)initWithTitle:(NSString *)title andCoordinate:(CLLocationCoordinate2D)coordinate2d;

@end
