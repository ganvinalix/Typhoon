////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2013, Jasper Blues & Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////


#import "ExtendedMiddleAgesAssembly.h"
#import "Knight.h"
#import "TyphoonDefinition+Infrastructure.h"
#import "CampaignQuest.h"
#import "TyphoonInjections.h"
#import "TyphoonShorthand.h"

@implementation ExtendedMiddleAgesAssembly

- (id)yetAnotherKnight
{
    return [TyphoonDefinition withClass:[Knight class] properties:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(damselsRescued) with:InjectionWithObjectFromString(@"296000")];
    }];
}

- (id)environmentDependentQuest
{
    return [TyphoonDefinition withClass:[CampaignQuest class] properties:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(imageUrl) with:InjectionWithObjectFromString(@"www.foobar.com/quest")];
    }];
}


@end