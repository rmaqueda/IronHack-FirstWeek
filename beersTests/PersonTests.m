//
//  PersonTests.m
//  beers
//
//  Created by Xavier Hernandez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

#define ERR_MSG @"Failed 🙉"
#define TEST_NAME @"Xavier Hernandez"
#define TEST_ADDRESS @"Calle Abantos 4"
#define TEST_AGE 18

- (void)testCanCreateAPerson {
	
	Person *p = [[Person alloc] init];
	
	XCTAssertNotNil(p, ERR_MSG);
	XCTAssertEqualObjects(nil, p.name, @"Expected %@, found %@ 🙉",nil,p.name);
	XCTAssertEqual(0, p.age, @"Expected %@, found %@ 🙉",0,p.age);
	
}

- (void)testCanCreateAPersonWithName {
		
	Person *p = [[Person alloc] initWithName:TEST_NAME];
	
	XCTAssertNotNil(p, ERR_MSG);
	XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ 🙉",TEST_NAME,p.name);
	
}

- (void)testCanCreateAPersonWithNameAndAddress {
	
	Person *p = [[Person alloc] initWithName:TEST_NAME andAddress:TEST_ADDRESS andAge:TEST_AGE];
	
	XCTAssertNotNil(p, ERR_MSG);
	XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ 🙉",TEST_NAME,p.name);
	XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"Expected %@, found %@ 🙉",TEST_ADDRESS,p.address);
	
}

- (void)testCanCreateAPersonWithNameAndAddressAndAge {
	
}

- (void)testCanCreatPersonClassWithMethodPersonWithName {
	
	Person *p = [Person personWithName:TEST_NAME];
	
	XCTAssertNotNil(p, ERR_MSG);
	XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@, found %@ 🙉",TEST_NAME,p.name);
}

@end
