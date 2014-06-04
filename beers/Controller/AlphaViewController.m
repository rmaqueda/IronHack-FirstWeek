//
//  AlphaViewController.m
//  beers
//
//  Created by Xavier Hernandez on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation AlphaViewController

- (IBAction)drag:(id)sender {
	
	UISlider *slider = (UISlider *)sender;
	[[self image] setAlpha:[slider value]];
	//self.image.alpha = slider.value;
	
}

- (IBAction)changePic:(id)sender {
	
	static BOOL toggle = NO;
	
	toggle = !toggle;
	
	if(toggle){
		
		[[self image] setImage:[UIImage imageNamed:@"pushed_weblogo_v0.png"]];
		
	} else {
		
		[[self image] setImage:[UIImage imageNamed:@"pushed-logol-square-yellow.png"]];
		
	}
	
	
}

#define IMAGE_URL @"https://pushed.co/assets/pushed/media/pushed_hello@2x.png"

- (IBAction)loadImageFromUrl:(id)sender {
	
	NSURL *url = [NSURL URLWithString:IMAGE_URL];
	
	NSData *data = [NSData dataWithContentsOfURL:url];
	
	[[self image] setImage:[UIImage imageWithData:data]];
	
}

@end
