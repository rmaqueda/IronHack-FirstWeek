//
//  beersAppDelegate.m
//  beers
//
//  Created by Xavier Hernandez on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"
#import "BeerHotel.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
	 self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
	*/
	
//	Beer *mahou = [[Beer alloc] init];
//	beer *moritz = [[beer alloc] init];
//	beer *estrellaDamm = [[beer alloc] init];
	
//	[mahou setName:@"Mahou"];
//	[mahou setColor:@"Rubia"];
//	[mahou setGrade:4];
//	moritz->name = @"Moritz";
//	estrellaDamm->name = @"Estrella Damm";
	
//	Person *someone = [[Person alloc] init];
//	
//	[someone setName:@"Xavier Hernandez"];
//	[someone setAge:25];
//	[someone setAddress:@"Calle Alamedia 1"];
//	
//	Person *Groucho = [[Person alloc] initWithName:@"Grouch Marx"];
//	Person *Pablo = [[Person alloc] initWithName:@"Pablo" andAddress:@"San Francisco" andAge:25 andMarried:YES];
//	Person *Zeppo = [[Person alloc] initWithName:@"Zeppo Marx" andAddress:@"Moscow" andAge:25];
	
//	NSLog(@"Name: %@",Groucho.name);
	
//	NSArray *personList = [NSArray arrayWithObjects:Groucho,Pablo,Zeppo,nil];
//	NSArray *personList2 = @[Groucho,Pablo,Zeppo];
//
//	for(NSString *p in personList2)
//	{
//		NSLog(@"Name: %@\n", p.name);
//	}
	
//	NSLog("Name: %@\n",[someone name]);
	
//	NSMutableArray *partyList = [NSMutableArray arrayWithObjects:Groucho,Pablo, nil];
//	
//	for (int i=1; i<=100; i++) {
//		NSString *s = [NSString stringWithFormat:@"Persona %d",i];
//		Person *p = [Person personWithName:s];
//		[partyList addObject:p];
//		NSLog(@"- %@",p.name);
//	}
	
	
	
	
	Person *person = [[Person alloc] initWithName:@"Xavier Hernandez"];
	NSString *room = [NSString stringWithFormat:@"101"];
	
	BeerHotel *hotel = [[BeerHotel alloc] init];
	[hotel addPerson:person toRoom:room];
	
	
	Person *guest = [hotel whoSleepsAtRoom:room];
	NSLog(@"Name: %@",[guest name]);
	
	
	//Person *guestName = [hotel valueForKey:room];
	//NSLog(@"Guest: %@", [guestName name]);
	
	
	[[hotel rooms] valueForKey:@"101"];

	NSLog(@"Hotel Room: %@", [[[hotel rooms] valueForKey:@"101"] name]);
	
	
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
