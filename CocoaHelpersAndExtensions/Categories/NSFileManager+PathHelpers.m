//
//  NSFileManager+PathHelpers.m
//  CocoaHelpersAndExtensions
//
//  Created by David Drechsel on 28.11.13.
//  Copyright (c) 2013 David Drechsel. All rights reserved.
//

#import "NSFileManager+PathHelpers.h"

@implementation NSFileManager (PathHelpers)

+(NSString*)pathToTemporaryFolder
{
  return NSTemporaryDirectory();
}

+(NSString*)pathToDocumentsFolder
{
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *documentsDirectory = [paths firstObject]; // Get documents folder
  return documentsDirectory;
}

@end
