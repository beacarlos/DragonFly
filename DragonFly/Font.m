//
//  Font.m
//  pocFonts
//
//  Created by Brena Amorim on 28/07/21.
//

#import "Font.h"

@implementation Font

- (instancetype) init {
    self = [self initWithFont: [UIFont systemFontOfSize: 17]];
    
    return self;
}

- (instancetype) initWithFont: (UIFont *)font {
    self = [super init];
    if (self) {
        _font = font;
    }
    NSLog(@"Font was initialized!");
    return self;
}

-(UIFont *) large {
    return [_font fontWithSize: 34];
}

-(UIFont *) title1 {
    return [_font fontWithSize: 28];
}

-(UIFont *) title2 {
    return [_font fontWithSize: 22];
}

-(UIFont *) title3 {
    return [_font fontWithSize: 20];
}

-(UIFont *) headline {
    UIFontDescriptor *fontDesc = [_font.fontDescriptor fontDescriptorWithSymbolicTraits: UIFontDescriptorTraitBold];
    return [UIFont fontWithDescriptor:fontDesc size:17];
}

-(UIFont *) body {
    return [_font fontWithSize: 17];
}

-(UIFont *) callout {
    return [_font fontWithSize: 16];
}

-(UIFont *) subhead {
    return [_font fontWithSize: 16];
}

-(UIFont *) footnote {
    return [_font fontWithSize: 13];
}

-(UIFont *) caption1 {
    return [_font fontWithSize: 12];
}

-(UIFont *) caption2 {
    return [_font fontWithSize: 11];
}
@end

