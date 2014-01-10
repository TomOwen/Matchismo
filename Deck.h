//
//  Deck.h
//  Matchismo
//
//  Created by Tom Owen on 1/10/14.
//  Copyright (c) 2014 Tom Owen. All rights reserved.
//

@import Foundation;
#import "Card.h"
@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
