//
//  BeerListTests.m
//  beers
//
//  Created by Xavier Hernandez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "Beer.h"

@interface BeerListTests : XCTestCase

@end

@implementation BeerListTests

- (void)testCanCreateABeerList{
	BeerList *allBeers = [[BeerList alloc] init];
	
	XCTAssertNotNil(allBeers, @"");
	XCTAssertEqual(0, [allBeers count], @"");
}

- (void)testCanCreateABeerListKVC{
	BeerList *allBeers = [[BeerList alloc] init];
	
	XCTAssertNotNil(allBeers, @"");
	XCTAssertEqual(0, [allBeers count], @"");
}

- (void)testCanAddABeerToTheList {
	BeerList *allBeers = [[BeerList alloc] init];
	
	XCTAssertNotNil(allBeers, @"");
	XCTAssertEqual(0, [allBeers count], @"");
	
	Beer *EstrellaDamm = [[Beer alloc] init];
	[allBeers addBeer:EstrellaDamm];
	
	XCTAssertEqual(1, [allBeers count], @"");
}

- (void)testCanAddABeerToTheListKVC {
	BeerList *allBeers = [[BeerList alloc] init];
	
	XCTAssertNotNil(allBeers, @"");
	XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"");
	
	Beer *EstrellaDamm = [[Beer alloc] init];
	[allBeers addBeer:EstrellaDamm];
	
	XCTAssertEqual(1, [allBeers count], @"");
}

- (void)testCanRemoveBeerToTheList {
	
	BeerList *beerList = [[BeerList alloc] init];
	Beer *EstrellaDamm = [[Beer alloc] init];
	[beerList addBeer:EstrellaDamm];
	[beerList removeBeer:EstrellaDamm];
	
	XCTAssertEqual(0, [beerList count], @"");
}

- (void)testCanCountBeerList{
	
	BeerList *beerList = [[BeerList alloc] init];
	Beer *EstrellaDamm = [[Beer alloc] init];
	[beerList addBeer:EstrellaDamm];
	
	XCTAssertEqual(1, [beerList count], @"");
	
}

- (void)testCantChangeCountOfBeers{
	
	BeerList *beerList = [[BeerList alloc] init];
	Beer *EstrellaDamm = [[Beer alloc] init];
	[beerList addBeer:EstrellaDamm];
	
	XCTAssertEqual(1, [beerList count], @"");
	
}

- (void)testAllBeers{
	
	BeerList *allBeers = [[BeerList alloc] init];
	
	for (int i=0; i<100; i++) {
		Beer *b = [[Beer alloc] init];
		//b.name = [NSString stringWithFormat:@"Beer %i",i]; // other way to do it
		[b setName:[NSString stringWithFormat:@"Beer %i",i]];
		NSLog(@"Beer: %@\n",b.name);
		[allBeers addBeer:b];
	}
	
	XCTAssertEqual(100, [allBeers count], @"");
	
	int i = 0;
	
	for(Beer *beerToTest in [allBeers allBeers]){
		NSString *s = [NSString stringWithFormat:@"Beer %i",i];
		XCTAssertEqualObjects([beerToTest name], s, @"Failed 🙉");
		i++;
	}
	
	[[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		Beer *beerToTest = (Beer *)obj;
		NSLog(@"%@ %d", beerToTest.name, idx);
	}];
	
}

- (void)testAllBeersKVC{
	
	BeerList *allBeers = [[BeerList alloc] init];
	
	for (int i=0; i<100; i++) {
		Beer *b = [[Beer alloc] init];
		//b.name = [NSString stringWithFormat:@"Beer %i",i]; // other way to do it
		[b setName:[NSString stringWithFormat:@"Beer %i",i]];
		NSLog(@"Beer: %@\n",b.name);
		[allBeers addBeer:b];
	}
	
	XCTAssertEqual(100, [allBeers count], @"");
	
	NSString *property = @"name";
	
	[[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		Beer *beerToTest = (Beer *)obj;
		NSLog(@"%@ %d", [beerToTest valueForKey:property], idx);
	}];
	
}


@end
