//
//  EuroConverterViewController.m
//  beers
//
//  Created by Xavier Hernandez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"

#define CONVERT_MONEY 1

@interface EuroConverterViewController()

@property (weak, nonatomic) IBOutlet UITextField *txtAmount;

@end

@implementation EuroConverterViewController

- (IBAction)convertMoney:(id)sender {
	
	NSLog(@"%@", [[self txtAmount] text]);
	
	CGFloat amount = (CGFloat)[[self.txtAmount text] floatValue];
	
	NSLog(@"%f", [EuroConverter convertFromPesetaToEuro:amount]);
	
	[EuroConverter convertFromPesetaToEuro:amount];
}

@end
