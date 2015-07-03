//
//  ViewController.m
//  MapView
//
//  Created by Rahul Garg on 28/07/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import "ViewController.h"
#import "Annotation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.mapView.delegate = self;
    
    _mapView.centerCoordinate = CLLocationCoordinate2DMake(37.32, -122.03);
    CLLocationCoordinate2D location;
    location.latitude = 28.57;
    location.longitude = 77.32;
    
    Annotation *annotation = [[Annotation alloc]initWithTitle:@"My Location" andCoordinate:location];
    [_mapView addAnnotation:annotation];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
    MKAnnotationView *annotationView = [views objectAtIndex:0];
    id <MKAnnotation> mp = [annotationView annotation];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 1500, 1500);
    [mv setRegion:region animated:YES];
    [mv selectAnnotation:mp animated:YES];
}

@end
