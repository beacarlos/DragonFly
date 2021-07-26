//
//  Color.h
//  pocColors
//
//  Created by Brena Amorim on 22/07/21.
//

#import <UIKit/UIKit.h>


@interface Color : UIColor

-(instancetype) initWithHex:(NSString *)hex;
-(instancetype) initWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

//+(id)initRGB:(NSString *)rgb;

@property (strong, nonatomic) NSString *hex;
@property (nonatomic) NSInteger red;
@property (nonatomic) NSInteger green;
@property (nonatomic) NSInteger blue;

-(UIColor *) randomColor;
-(UIColor *) color;
-(UIColor *) darker;
-(UIColor *) lighter;
-(UIColor *) darkerHigh;
-(UIColor *) lighterHigh;
//+(CAGradientLayer *) gradient: (UIColor*)primaryColor secondaryColor:(UIColor*)secondaryColor view:(UIView*)view;
@end


