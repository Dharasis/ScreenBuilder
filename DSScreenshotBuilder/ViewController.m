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
- (IBAction)uploadImage:(NSButton *)sender {

    //Open Finder
   // [[NSWorkspace sharedWorkspace] openFile:@"" withApplication:@"Finder"];
   // NSString* path = @"/Users/user/Downloads/";
    //NSArray *fileURLs = [NSArray arrayWithObjects:[NSURL fileURLWithPath:path], nil];
    //[[NSWorkspace sharedWorkspace] activateFileViewerSelectingURLs:fileURLs];
    //
    [self photoAction];
}
- (void) awakeFromNib
{
    mImages = [[NSMutableArray alloc] init];
    mImportedImages = [[NSMutableArray alloc] init];
    
    [mImageBrowser setAnimates:YES];
}
- (void) photoAction
{
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    
    // Configure your panel the way you want it
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:NO];
    [panel setAllowsMultipleSelection:YES];
    [panel setAllowedFileTypes:[NSArray arrayWithObject:@"png"]];
    
    [panel beginWithCompletionHandler:^(NSInteger result){
        if (result == NSFileHandlingPanelOKButton) {
            
            for (NSURL *fileURL in [panel URLs]) {
                // Do what you want with fileURL
                // ...
                
            
            }
        }
        
       // [panel release];
    }];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
