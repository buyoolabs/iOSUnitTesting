//
//  DeckTestCase.m
//  UnitTestsCardExample
//
//  Created by developers@buyoo.com on 17/09/14.
//  Copyright (c) 2014 Buyoo Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Deck.h"

@interface DeckTestCase : XCTestCase

@end

@implementation DeckTestCase

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDrawCardFromEmptyDeckAnswerdsNoCard
{
    Deck *deck = [[Deck alloc]init];
    Card *drawnCard = [deck drawRandomCard];
    XCTAssertNil(drawnCard, @"Should not crash; just answer a nil object");
}

- (void)testOneCardDeckShoulAnswerThatCard
{
    Deck *deck = [[Deck alloc]init];
    Card *card = [[Card alloc]init];
    card.contents = @"test";
    [deck addCard:card];
    Card *drawnCard = [deck drawRandomCard];
    XCTAssertEqualObjects(card, drawnCard, @"Should have drawn the same we added");
}

- (void)testDrawnRandomCardsAreDifferent
{
    Deck *deck = [[Deck alloc]init];
    Card *card1 = [[Card alloc]init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc]init];
    card2.contents = @"two";
    [deck addCard:card1];
    [deck addCard:card2];
    Card *drawnCard1 = [deck drawRandomCard];
    Card *drawnCard2 = [deck drawRandomCard];
    XCTAssertNotNil(drawnCard1, @"Should hace found a card");
    XCTAssertNotNil(drawnCard2, @"Should hace found another card");
    XCTAssertNotEqualObjects(drawnCard1, drawnCard2, @"The cards must be differents");
}

- (void)testDeckWithMultipleCardsWillRandomlyDrawThemAll
{
    Deck *deck = [[Deck alloc] init];
    int numberOfCards = 16;  // arbitrary number > 1
    Card *card;
    for (int index = 0; index < numberOfCards; index++)
    {
        card = [[Card alloc] init];
        card.contents = [NSString stringWithFormat:@"%d", index];
        [deck addCard:card];
    }
    Card *randomlyDrawnCard;
    for (int index = 0; index < numberOfCards; index++)
    {
        randomlyDrawnCard = [deck drawRandomCard];
        XCTAssertNotNil(randomlyDrawnCard, @"Should have found a card.");
    }
    randomlyDrawnCard = [deck drawRandomCard];
    XCTAssertNil(randomlyDrawnCard, @"No more cards left.");
}


@end
