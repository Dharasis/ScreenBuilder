//
//  UploadScreenshotManager.h
//  DSScreenshotBuilder
//
//  Created by Dharasis on 22/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#define UploadSS  [UploadScreenshotManager getUploadSSInstance]

@interface UploadScreenshotManager : NSObject
+(UploadScreenshotManager *)getUploadSSInstance;
-(void)getScreenshot :(void (^)(NSImage *screenshotImage))completion;


@end
