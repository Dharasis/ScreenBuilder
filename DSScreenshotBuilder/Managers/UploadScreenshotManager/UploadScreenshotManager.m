//
//  UploadScreenshotManager.m
//  DSScreenshotBuilder
//
//  Created by Dharasis on 22/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import "UploadScreenshotManager.h"


static UploadScreenshotManager*   uploadSSInstance = NULL;

@implementation UploadScreenshotManager

#pragma  mark - Singleton Class Implementation.
+(UploadScreenshotManager *)getUploadSSInstance
{
    if (!uploadSSInstance)
        uploadSSInstance = [[UploadScreenshotManager alloc] init];
    
    return uploadSSInstance;
}

-(id)init
{
    self = [super init];
    if (self)
    {
        
    }
    return self;
}

+(id)alloc
{
    @synchronized([UploadScreenshotManager class])
    {
        NSAssert(uploadSSInstance == nil, @"Attempted to allocate a second instance of a ZinfinityIAPiOSHandler Class.");
        return [super alloc];
        
    }
    return nil;
}


#pragma mark - Get ScreenShot
-(void)getScreenshot :(void (^)(NSImage *screenshotImage))completion {
    
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    // Configure your panel the way you want it
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:NO];
    [panel setAllowsMultipleSelection:YES];
    [panel setAllowedFileTypes:[NSArray arrayWithObject:@"png"]];
    
    [panel beginWithCompletionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            for (NSURL *fileURL in [panel URLs]) {
                NSImage* image=[[NSImage  alloc]initWithContentsOfURL:fileURL];
                completion(image);
               
            }
        }
        
        // [panel release];
    }];
   
}


@end
