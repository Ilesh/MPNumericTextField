//
//  MPViewController.m
//  BasicExample
//
//  Created by Daniele Di Bernardo on 06/04/14.
//  Copyright (c) 2014 marzapower. All rights reserved.
//

#import "MPViewController.h"

@interface MPViewController ()

@end

@implementation MPViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  UIColor *placeholderColor = [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:0.5];
  _decimalField.placeholderColor = placeholderColor;
  _percentageField.placeholderColor = placeholderColor;
  _currencyField.placeholderColor = placeholderColor;
  
  _decimalField.type = MPNumericTextFieldDecimal;
  _percentageField.type = MPNumericTextFieldPercentage;
  _currencyField.type = MPNumericTextFieldCurrency;
  
  [_decimalField setNumericValue:@(10.2)];
  [_percentageField setNumericValue:@(5)];
}

- (void)getValues:(id)sender {
  
  NSString *message = [NSString stringWithFormat:@"Values are:\nDecimal: %.3f\nPercentage: %.3f\nCurrency: %.3f",
                       _decimalField.numericValue.floatValue,
                       _percentageField.numericValue.floatValue,
                       _currencyField.numericValue.floatValue];
  
  [[[UIAlertView alloc] initWithTitle:@"Get values"
                              message:message
                             delegate:nil
                    cancelButtonTitle:@"OK"
                     otherButtonTitles:nil] show];
}

@end
