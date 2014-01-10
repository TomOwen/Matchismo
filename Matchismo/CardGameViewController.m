//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Tom Owen on 1/9/14.
//  Copyright (c) 2014 Tom Owen. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"



@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@property (nonatomic, strong) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

- (void) setFlipsCount:(int)flipsCount{
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipsCount];
}
- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        Card *nextCard = [self.deck drawRandomCard];
        if (nextCard) {
            [self.deck addCard:nextCard];
        } else {
            sender.hidden = YES;
        }
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
        }
    }
    self.flipsCount++;
}


@end
