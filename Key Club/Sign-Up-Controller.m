//
//  Sign-Up-Controller.m
//  Key Club
//
//  Created by Grant Goodman on 10/18/15.
//  Copyright © 2015 NeoTechnica Corporation. All rights reserved.
//

#import "Sign-Up-Controller.h"

@interface SU () <UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate>

@end

@implementation SU

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.schoolDistrictArray = @[@"One", @"Two", @"Three", @"Four", @"Five", @"Six"];
    self.gradeLevelArray = @[@"7th", @"8th", @"9th", @"10th", @"11th", @"12th"];
    
    self.schoolDistrictPickerView.tag = 100;
    self.gradeLevelPickerView.tag = 200;
    
    self.firstNameTextField.tag = 300;
    self.lastNameTextField.tag = 400;
    self.emailTextField.tag = 500;
    self.phoneNumberTextField.tag = 600;
    self.usernameTextField.tag = 700;
    self.passwordTextField.tag = 800;
    self.securityQuestionTextField.tag = 900;
    self.securityQuestionAnswerTextField.tag = 1000;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView.tag == 100)
    {
        return self.gradeLevelArray.count;
    }
    else if (pickerView.tag == 200)
    {
        return self.schoolDistrictArray.count;
    }
    else
    {
        @throw @"Could not find UIPickerView to base array information from.";
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView.tag == 100)
    {
        return self.schoolDistrictArray[row];
    }
    else if (pickerView.tag == 200)
    {
        return self.gradeLevelArray[row];
    }
    else
    {
        @throw @"Could not find UIPickerView to base array information from.";
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView.tag == 100)
    {
        NSLog(@"'%@' selected in the district picker view.", self.schoolDistrictArray[row]);
    }
    else if (pickerView.tag == 200)
    {
        NSLog(@"'%@' selected in the grade level picker view.", self.gradeLevelArray[row]);
    }
    else
    {
        @throw @"Could not find UIPickerView to base array information from.";
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
}

- (void)checkIfBothNamesArePresent
{
    if (![self.firstNameString isEqual: @""])
    {
        if (![self.lastNameString isEqual: @""])
        {
            NSString *trimmedFirstNameString = [self.firstNameString substringToIndex:1];
            
            self.generatedUserNameString = [self.lastNameString.lowercaseString stringByAppendingString:trimmedFirstNameString.lowercaseString];
            
            if (self.generatedUserNameString != NULL)
            {
                self.usernameTextField.text = self.generatedUserNameString;
            }
        }
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self checkIfBothNamesArePresent];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self checkIfBothNamesArePresent];
    
    if (textField.tag == 300)
    {
        self.firstNameString = textField.text;
    }
    
    if (textField.tag == 400)
    {
        self.lastNameString = textField.text;
    }
}

@end
