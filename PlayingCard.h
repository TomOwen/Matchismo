//
//  PlayingCard.h
//  Matchismo
//
//  Created by Tom Owen on 1/9/14.
//  Copyright (c) 2014 Tom Owen. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;

@end
