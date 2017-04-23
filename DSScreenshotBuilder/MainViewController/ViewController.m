//
//  ViewController.m
//  DSScreenshotBuilder
//
//  Created by Dharasis on 01/04/17.
//  Copyright © 2017 Dharasis. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
#pragma mark - Upload Image
- (IBAction)uploadImage:(NSButton *)sender {

 [UploadSS getScreenshot:^(NSImage *screenshotImage) {     
     NSImage* image = screenshotImage;
     self.centerImgView.image = nil;
     self.centerImgView.image = image;
     PrintLog(@"Image", image);
 }];
}
- (IBAction)saveToDiskButton:(id)sender {
    
    [SaveScreenshot saveScreenshotToDisk:[self mergeImageWith:self.imageView.image withChildImage:self.centerImgView.image]];
}

- (void) awakeFromNib{
}
- (void) photoAction
{
   

}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
