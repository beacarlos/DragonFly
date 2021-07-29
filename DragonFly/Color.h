//
//  Color.h
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import <UIKit/UIKit.h>


@interface Color : UIColor
/**
@abstract Returns the UIColor object receiving a String of a hexadecimal code.
*/
-(instancetype) initWithHex:(NSString *)hex;

/**
@abstract Returns the UIColor object receiving red, green, blue components.
*/
-(instancetype) initWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

@property (strong, nonatomic) NSString *hex;
@property (nonatomic) NSInteger red;
@property (nonatomic) NSInteger green;
@property (nonatomic) NSInteger blue;

/**
@abstract A random color object defined by colorWithHue, saturation, brightness and an alpha value of 1.0.
@discussion That method returns a random UIColor with hue ranging from 0 to 1, saturation ranging from 0.5 to 1.0 to avoid white color selection, and brightness ranging from 0.5 to 1.0 to avoid black color selection.
*/
+(UIColor *) randomColor;

/**
@abstract Returns the UIColor object from a hexadecimal or RGB code.
@discussion That method converts from two codes:
 - Hexadecimal: Convert a color in #RRGGBB or RRGGBB format to UIColor.
 - RGB: Converts a color in RGB format (red, green and blue) to UIColor.
*/
-(UIColor *) color;

/**
@abstract Returns the UIColor object of the color passed in the initializer in a darker tone.
@discussion That method darkens the color by modifying the red, green, and blue color components.
*/
-(UIColor *) darker;

/**
@abstract Returns the UIColor object of the color passed in the initializer in a lighter tone.
@discussion That method lightens the color by modifying the alpha component.
*/
-(UIColor *) lighter;

-(UIColor *) darkerHigh;
-(UIColor *) lighterHigh;

/**
@abstract Returns the CAGradientLayer object of the colors parameters.
@discussion That method creates a CAGradientLayer with the parameters passed. Converting them to CGColors and passing them through an NSArray
*/
+(CAGradientLayer *)gradient: (UIColor *)firstColor secondColor:(UIColor *)secondColor;
@end


