//
//  HDLAppDelegate.h
//  InterpersonalRelationsPlatform
//
//  Created by 3001 on 14/10/17.
//  Copyright (c) 2014年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HDLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
