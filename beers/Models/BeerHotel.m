//
//  BeerHotel.m
//  beers
//
//  Created by Xavier Hernandez on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerHotel.h"

@interface BeerHotel()

@property (nonatomic, strong) NSMutableDictionary *rooms;

@end

@implementation BeerHotel


//- (instancetype)init {
//	
//	self = [super init];
//	if(self){
//		_rooms = [[NSMutableDictionary alloc] init];
//	}
//	return self;
//	
//}

- (NSMutableDictionary *)rooms{
	if(_rooms==nil){
		_rooms= [[NSMutableDictionary alloc] init];
	}
	return _rooms;
}

- (void)addPerson:(Person *)p toRoom:(NSString *)room{
		
	[[self rooms] setObject:p forKey:room];
	
}

- (Person *)whoSleepsAtRoom:(NSString *)room{
	
	return [[self rooms] valueForKey:room];
	
}

- (NSString *)numberOfOccupiedRooms{
	return @"TODO";
}

@end
