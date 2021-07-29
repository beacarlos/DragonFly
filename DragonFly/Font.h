//
//  Font.h
//  pocFonts
//
//  Created by Brena Amorim on 28/07/21.
//

#import <UIKit/UIKit.h>


@interface Font : UIFont

-(instancetype) initWithFont: (UIFont *)font;

@property (nonatomic) UIFont* font;

/**
@abstract Returns the font object for standard interface items in large size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) large;

/**
@abstract Returns the font object for standard interface items in title 1 size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) title1;

/**
@abstract Returns the font object for standard interface items in title 2 size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) title2;

/**
@abstract Returns the font object for standard interface items in title 3 size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) title3;

/**
@abstract Returns the font object for standard interface items in headline size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) headline;

/**
@abstract Returns the font object for standard interface items in body size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) body;

/**
@abstract Returns the font object for standard interface items in callout size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) callout;

/**
@abstract Returns the font object for standard interface items in subhead size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) subhead;

/**
@abstract Returns the font object for standard interface items in footnote size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) footnote;

/**
@abstract Returns the font object for standard interface items in caption 1 size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) caption1;

/**
@abstract Returns the font object for standard interface items in caption 2 size.
@discussion That method respects the user’s selected content size category.
*/
-(UIFont *) caption2;
@end
