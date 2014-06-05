//
//  HotelTests.m
//  beers
//
//  Created by Xavier Hernandez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerHotel.h"

@interface HotelTests : XCTestCase

@end

@implementation HotelTests

- (void)testCanCreateHotel{
	
	BeerHotel *hotel = [[BeerHotel alloc] init];
	
}

- (void)testCantAddPerson{
	
	Person *person = [[Person alloc] initWithName:@"Xavier Hernandez"];
	NSString *room = [NSString stringWithFormat:@"101"];
	
	BeerHotel *hotel = [[BeerHotel alloc] init];
	[hotel addPerson:person toRoom:room];
	
	NSLog(@"Hotel Room: %@", [[[hotel rooms] valueForKey:@"101"] name]);
	
	XCTAssertEqualObjects([[[hotel rooms] valueForKey:@"101"] name], [person name], @"");
		
}

- (void)testCanAssignRoom{
	
	Person *person = [[Person alloc] initWithName:@"Xavier Hernandez"];
	NSString *room = [NSString stringWithFormat:@"101"];
	
	BeerHotel *hotel = [[BeerHotel alloc] init];
	[hotel addPerson:person toRoom:room];
	
	Person *guest = [hotel whoSleepsAtRoom:room];
	NSLog(@"Name: %@",[guest name]);
	
	XCTAssertEqualObjects([person name], [guest name], @"");
	
}

@end
