//
//  SaveScreenshotManager.h
//  DSScreenshotBuilder
//
//  Created by Dharasis on 22/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>


#define SaveScreenshot  [SaveScreenshotManager getSaveScreenshotManagerInstance]
@interface SaveScreenshotManager : NSObject
+(SaveScreenshotManager *)getSaveScreenshotManagerInstance;
-(void)saveScreenshotToDisk:(NSData*)imageDate;
@end
