//
//  Annotation.m
//  MapView
//
//  Created by Rahul Garg on 29/07/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation

-(id)initWithTitle:(NSString *)title andCoordinate:(CLLocationCoordinate2D)coordinate2d{
    self.title = title;
    self.coordinate =coordinate2d;
    return self;
}

@end
