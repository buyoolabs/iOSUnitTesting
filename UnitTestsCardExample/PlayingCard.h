//
//  PlayingCard.h
//  UnitTestsCardExample
//
//  Created by developers@buyoo.com on 17/09/14.
//  Copyright (c) 2014 Buyoo Labs. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
