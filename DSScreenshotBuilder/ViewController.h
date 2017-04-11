//
//  ViewController.h
//  DSScreenshotBuilder
//
//  Created by Dharasis on 01/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <MediaLibrary/MediaLibrary.h>
@interface ViewController : NSViewController
{
    
    IBOutlet id mImageBrowser;
    NSMutableArray * mImages;
    NSMutableArray * mImportedImages;
}

@property (strong) IBOutlet NSImageView *imageView;
@property(nonatomic,strong)MLMediaLibrary *mediaLibrary;
@end

