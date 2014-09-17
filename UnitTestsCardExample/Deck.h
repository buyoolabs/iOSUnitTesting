//
//  Deck.h
//  UnitTestsCardExample
//
//  Created by developers@buyoo.com on 17/09/14.
//  Copyright (c) 2014 Buyoo Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
