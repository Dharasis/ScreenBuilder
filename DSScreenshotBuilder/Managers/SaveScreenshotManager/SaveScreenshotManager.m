//
//  SaveScreenshotManager.m
//  DSScreenshotBuilder
//
//  Created by Dharasis on 22/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import "SaveScreenshotManager.h"

static SaveScreenshotManager*   saveScreenshotManagerInstance = NULL;
@implementation SaveScreenshotManager
+(SaveScreenshotManager *)getSaveScreenshotManagerInstance;
{
    if(!saveScreenshotManagerInstance)
        saveScreenshotManagerInstance = [[SaveScreenshotManager alloc]init];
        
   
    return saveScreenshotManagerInstance;
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
    @synchronized([SaveScreenshotManager class])
    {
        NSAssert(saveScreenshotManagerInstance == nil, @"Attempted to allocate a second instance of a saveScreenshotManagerInstance Class.");
        return [super alloc];
        
    }
    return nil;
}

-(void)saveScreenshotToDisk:(NSData*)imageDate{
    
// /Users/dharasis/Desktop/iphone-frame.png
    [imageDate writeToFile: @"/Users/dharasis/Desktop/ScreenshotBuilder.png" atomically: NO];

    
}

@end
