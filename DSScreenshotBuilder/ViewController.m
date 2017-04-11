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
    [[NSWorkspace sharedWorkspace] openFile:@"" withApplication:@"Finder"];
    
    //

}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
