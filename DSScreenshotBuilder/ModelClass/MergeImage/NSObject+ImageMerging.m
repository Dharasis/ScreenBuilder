//
//  NSObject+ImageMerging.m
//  DSScreenshotBuilder
//
//  Created by Dharasis on 22/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import "NSObject+ImageMerging.h"

@implementation NSObject (ImageMerging)


-(NSData*)mergeImageWith:(NSImage*)mainImage withChildImage:(NSImage*)overlay
{
   
    float width = mainImage.size.width;
    float height = mainImage.size.height;
    
    NSImage *finalImage = [[NSImage alloc] initWithSize:NSMakeSize(width,height)];
    
   
    [finalImage lockFocus];
    
    // draw the base image
    [mainImage drawInRect:NSMakeRect(0, 0, width, height)
                 fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1.0];
    
    // draw the overlay image at some offset point
    [overlay drawInRect:NSMakeRect(10, 10, [overlay size].width, [overlay size].height)
               fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1.0];
    
    [finalImage unlockFocus];
    
    NSData *finalData = [finalImage TIFFRepresentation];
    
//    [[[NSBitmapImageRep imageRepWithData:finalData] representationUsingType:NSJPEGFileType properties:nil] writeToFile:[NSString stringWithFormat:@"/path/to/folder/new_image.jpg"] atomically:YES];
    
    return finalData;
//    
}


@end
