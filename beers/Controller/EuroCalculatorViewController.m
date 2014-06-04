//
//  EuroCalculatorViewController.m
//  beers
//
//  Created by Xavier Hernandez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroCalculatorViewController.h"

@implementation EuroCalculatorViewController

- (IBAction)processDigit:(id)sender {
	UIButton *b = sender;
	
	if(![sender isKindOfClass:[UIButton class]]){
		return;
	}
	
	NSLog(@"User clicked %@", [[b titleLabel] tag]);
//	NSLog(@"User clicked %@", b.titleLabel.text);
//	NSLog(@"User clicked %@", [[b titleLabel] text]);
//	NSLog(@"User clicked %@", [b.titleLabel text]);
	
}

@end
