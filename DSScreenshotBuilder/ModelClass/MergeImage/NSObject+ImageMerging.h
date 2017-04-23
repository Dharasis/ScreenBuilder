//
//  NSObject+ImageMerging.h
//  DSScreenshotBuilder
//
//  Created by Dharasis on 22/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
@interface NSObject (ImageMerging)
-(NSData*)mergeImageWith:(NSImage*)mainImage withChildImage:(NSImage*)overlay;
@end
