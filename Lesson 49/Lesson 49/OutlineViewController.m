//
//  OutlineViewController.m
//  Lesson 49
//
//  Created by Lucas Derraugh on 2/23/13.
//  Copyright (c) 2013 Lucas Derraugh. All rights reserved.
//

#import "OutlineViewController.h"
#import "Person.h"

@implementation OutlineViewController

- (instancetype)init {
    if (self = [super init]) {
        _people = [[NSMutableArray alloc] init];
        Person *boss = [[Person alloc] initWithName:@"Yoda" age:900];
        [boss addChild:[[Person alloc] initWithName:@"Stephan" age:20]];
        [boss addChild:[[Person alloc] initWithName:@"Taylor" age:18]];
        [boss addChild:[[Person alloc] initWithName:@"Jesse" age:19]];
        
        [boss.children[0] addChild:[[Person alloc] initWithName:@"Lucas" age:18]];
        
        [_people addObject:boss];
    }
    return self;
}

#pragma mark NSOutlineView Data Source Methods

- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(Person *)item {
    return !item ? self.people.count : item.children.count;
}

- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(Person *)item {
    return !item ? YES : item.children.count != 0;
}

- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(Person *)item {
    return !item ? self.people[index] : item.children[index];
}

- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(Person *)item {
    if ([tableColumn.identifier isEqualToString:@"name"])
        return item.name;
    else if ([tableColumn.identifier isEqualToString:@"age"])
        return @(item.age);
    return @"Nobody's Here!";
}

@end
