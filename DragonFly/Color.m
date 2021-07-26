//
//  Color.m
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import "Color.h"

@implementation Color

- (instancetype)init {
    self = [self initWithHex:@""];
    self = [self initWithRed:0 green:0 blue:0];
    return self;
}

-(instancetype)initWithHex:(NSString *)hex {
    self = [super init];
    if (self) {
        _hex = hex;
        
        NSString *colorString = [[_hex stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
        NSAssert([colorString length] == 6, @"[DragonFly] Color value is invalid. It should be a hex value of the form #RRGGBB");
    }
    return self;
}

-(instancetype)initWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue {
    self = [super init];
    if (self) {
        _red = red;
        _green = green;
        _blue = blue;
        
        NSAssert(red >= 0 && red <= 255, @"[DragonFly] Invalid red component");
        NSAssert(green >= 0 && green <= 255, @"[DragonFly] Invalid green component");
        NSAssert(blue >= 0 && blue <= 255, @"[DragonFly] Invalid blue component");
    }
    return self;
}

// MARK: - SET RANDOM COLOR
-(UIColor *)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

// MARK: - CONVERSION HEX TO UICOLOR
-(UIColor *) color {
    // Remove # and set hexString to uppercased
    NSString *colorString = [[_hex stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    
    // Verify if hex format is #RRGGBB
    alpha = 1.0f;
    if (([colorString length]) == 6) {
        red   = [self colorComponentFrom: colorString start: 0 length: 2];
        green = [self colorComponentFrom: colorString start: 2 length: 2];
        blue  = [self colorComponentFrom: colorString start: 4 length: 2];
    } else {
        red = _red / 255.0;
        green = _green / 255.0;
        blue = _blue / 255.0;
    }

    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

// Convert each part of hexString to RGB
-(CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length {
    NSString *substring = [string substringWithRange: NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

// MARK: - SET DARK COLOR
-(UIColor *)darker {
    // Remove # and set hexString to uppercased
    NSString *colorString = [[_hex stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    
    // Verify if hex format is #RRGGBB
    alpha = 1.0f;
    if (([colorString length]) == 6) {
        red   = [self colorComponentFrom: colorString start: 0 length: 2] * 0.9;
        green = [self colorComponentFrom: colorString start: 2 length: 2] * 0.9;
        blue  = [self colorComponentFrom: colorString start: 4 length: 2] * 0.9;
    } else {
        red = (_red / 255.0) * 0.9;
        green = (_green / 255.0) * 0.9;
        blue = (_blue / 255.0) * 0.9;
    }

    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

-(UIColor *)darkerHigh {
    // Remove # and set hexString to uppercased
    NSString *colorString = [[_hex stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    
    // Verify if hex format is #RRGGBB
    alpha = 1.0f;
    if (([colorString length]) == 6) {
        red   = [self colorComponentFrom: colorString start: 0 length: 2] * 0.75;
        green = [self colorComponentFrom: colorString start: 2 length: 2] * 0.75;
        blue  = [self colorComponentFrom: colorString start: 4 length: 2] * 0.75;
    } else {
        red = (_red / 255.0) * 0.75;
        green = (_green / 255.0) * 0.75;
        blue = (_blue / 255.0) * 0.75;
    }

    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

-(UIColor *)lighter {
    // Remove # and set hexString to uppercased
    NSString *colorString = [[_hex stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    
    // Verify if hex format is #RRGGBB
    alpha = 0.9f;
    if (([colorString length]) == 6) {
        red   = [self colorComponentFrom: colorString start: 0 length: 2];
        green = [self colorComponentFrom: colorString start: 2 length: 2];
        blue  = [self colorComponentFrom: colorString start: 4 length: 2];
    } else {
        red = _red / 255.0;
        green = _green / 255.0;
        blue = _blue / 255.0;
    }

    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

-(UIColor *)lighterHigh {
    // Remove # and set hexString to uppercased
    NSString *colorString = [[_hex stringByReplacingOccurrencesOfString: @"#" withString: @""] uppercaseString];
    CGFloat alpha, red, blue, green;
    
    // Verify if hex format is #RRGGBB
    alpha = 0.75f;
    if (([colorString length]) == 6) {
        red   = [self colorComponentFrom: colorString start: 0 length: 2];
        green = [self colorComponentFrom: colorString start: 2 length: 2];
        blue  = [self colorComponentFrom: colorString start: 4 length: 2];
    } else {
        red = _red / 255.0;
        green = _green / 255.0;
        blue = _blue / 255.0;
    }

    return [UIColor colorWithRed: red green: green blue: blue alpha: alpha];
}

+(CAGradientLayer *) gradient: (UIColor*)primaryColor secondaryColor:(UIColor*)secondaryColor view:(UIView*)view {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = view.bounds;
    gradient.colors = @[(id)[UIColor blueColor].CGColor, (id)[UIColor redColor].CGColor];
    return gradient;
}

@end

//Example #1
//Convert red hex color code FF0000 to RGB color:
//Hex = FF0000

//So the RGB colors are:
//R = FF(base 16) = 255 (base 10)
//G = 00 = 010
//B = 00 = 010

// Darker
//+ Escuro (Any): diminui 10% dos valores de R, G e B
//++ Escuro (Any High): diminui 25% dos valores de R, G e B
//    - Se um deles for 0, não muda

//Light - opacity
