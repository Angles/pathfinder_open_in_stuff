//
//  OpenInTextWrangler.m
//  pathfinder_open_in_textwrangler
//
//  Created by orta therox on 06/09/2010.
//  Copyright 2010 wgrids. All rights reserved.
//

#import "OpenInTextWrangler.h"


@implementation OpenInTextWrangler

@synthesize host;

+ (id)plugin:(id<NTPathFinderPluginHostProtocol>)pathfinder_host;
{
  OpenInTextWrangler* result = [[self alloc] init];
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
  menuItem = [[[NSMenuItem alloc] initWithTitle:@"Open in TextWrangler" action:@selector(pluginAction:) keyEquivalent:@"t"] autorelease];
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
    //[URLArray addObject:[item URL]];
    if ([item URL])
      [URLArray addObject:[item URL]];
  }
  NSWorkspace *ws = [NSWorkspace sharedWorkspace];
  if ((URLArray) && ([URLArray count] > 0)) {
    [ws openURLs:URLArray withAppBundleIdentifier:@"com.barebones.textwrangler" options:NSWorkspaceLaunchAsync additionalEventParamDescriptor:nil launchIdentifiers:nil];
  }
  
  return nil;
}


@end
