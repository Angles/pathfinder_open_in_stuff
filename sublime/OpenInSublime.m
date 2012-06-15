//
//  OpenInSublime.m
//  pathfinder_open_in_sublime
//
//  Created by orta therox on 06/09/2010.
//  Copyright 2010 wgrids. All rights reserved.
//

#import "OpenInSublime.h"


@implementation OpenInSublime

@synthesize host;

+ (id)plugin:(id<NTPathFinderPluginHostProtocol>)pathfinder_host;
{
  OpenInSublime* result = [[self alloc] init];
  result.host = pathfinder_host;
  
  return [result autorelease];
}

- (NSMenuItem*)contextualMenuItem;
{
	return [self menuItem];
}

- (NSMenuItem*)menuItem;
{
  NSMenuItem* menuItem;
	
  // must hard code since PathFinder 6 forgets preferences user sets for 3rd party plugins 
  menuItem = [[[NSMenuItem alloc] initWithTitle:@"Open in Sublime" action:@selector(pluginAction:) keyEquivalent:@"s"] autorelease];
  [menuItem setTarget:self];
  [menuItem setKeyEquivalentModifierMask: NSControlKeyMask | NSCommandKeyMask];
  return menuItem;
}

- (void)pluginAction:(id)sender;
{
  [self processItems:nil parameter:nil];
}

- (BOOL)validateMenuItem:(NSMenuItem*)menuItem;
{
  return [[[self host] selection:nil browserID:nil] count] > 0;
}

- (id)processItems:(NSArray*)items parameter:(id)parameter;
{
  if (!items)
    items = [self.host  selection:nil browserID:nil];
	
  NSMutableArray *URLArray = [NSMutableArray arrayWithCapacity:[items count]];
  id<NTFSItem> item;
  NSEnumerator* enumerator = [items objectEnumerator];
  // make an array of [item URL]
  while ((item = [enumerator nextObject]))
  {
    if ([item URL])
      [URLArray addObject:[item URL]];
  }
  NSWorkspace *ws = [NSWorkspace sharedWorkspace];
  if ((URLArray) && ([URLArray count] > 0)) {
    [ws openURLs:URLArray withAppBundleIdentifier:@"com.sublimetext.2" options:NSWorkspaceLaunchAsync additionalEventParamDescriptor:nil launchIdentifiers:nil];
  }
	
  return nil;
}


@end
