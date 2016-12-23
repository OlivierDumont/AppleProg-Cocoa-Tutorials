//
//  DesktopEntity.h
//  Lesson 55
//
//  Created by Lucas Derraugh on 8/2/13.
//  Copyright (c) 2013 Lucas Derraugh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DesktopEntity : NSObject <NSPasteboardWriting, NSPasteboardReading>

@property (nonatomic) NSURL *fileURL;
@property (readonly) NSString *name;

- (instancetype)initWithFileURL:(NSURL *)fileURL;
+ (DesktopEntity *)entityForURL:(NSURL *)url;

@end


@interface DesktopImageEntity : DesktopEntity

@property (nonatomic) NSImage *image;

@end


@interface DesktopFolderEntity : DesktopEntity

@end
