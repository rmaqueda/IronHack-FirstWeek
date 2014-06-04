//
//  EuroConverter.m
//  beers
//
//  Created by Xavier Hernandez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverter.h"

#define CONVERT_VALUE 166.386;

@implementation EuroConverter

- (float)convertToEuro{
	return [EuroConverter convertFromPesetaToEuro:self.money];
}

- (int)convertToPeseta{
	return [EuroConverter convertFromEuroToPeseta:*(self.money)];
}

+ (int)convertFromEuroToPeseta:(float)euros{
	return euros * CONVERT_VALUE;
}

+ (float)convertFromPesetaToEuro:(int)peseta{
	return peseta / CONVERT_VALUE;
	
}

@end
