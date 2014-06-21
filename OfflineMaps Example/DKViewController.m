//
//  DKViewController.m
//  OfflineMaps Example
//
//  Created by Dmitriy Karachentsov on 21.06.14.
//  Copyright (c) 2014 Dmitriy Karachentsov. All rights reserved.
//

#import "DKViewController.h"
#import <MapBox/Mapbox.h>

@implementation DKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    RMMBTilesSource *offlineSource = [[RMMBTilesSource alloc] initWithTileSetResource:@"HongKong" ofType:@"mbtiles"];
    
    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:offlineSource];
    
    [mapView setZoom:11];
    
    [mapView setMinZoom:11];
    [mapView setMaxZoom:14];
    
    [mapView setShowLogoBug:NO];
    [mapView setHideAttribution:YES];
    
    mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    mapView.adjustTilesForRetinaDisplay = YES; // these tiles aren't designed specifically for retina, so make them legible
    
    [self.view addSubview:mapView];
}

@end
