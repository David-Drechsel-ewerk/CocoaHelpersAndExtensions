//
//  NSFileManager+PathHelpers.h
//  CocoaHelpersAndExtensions
//
//  Created by David Drechsel on 28.11.13.
//  Copyright (c) 2013 David Drechsel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (PathHelpers)

+(NSString*)pathToTemporaryFolder;
+(NSString*)pathToDocumentsFolder;

@end
