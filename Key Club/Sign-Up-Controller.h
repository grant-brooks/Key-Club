//
//  Sign-Up-Controller.h
//  Key Club
//
//  Created by Grant Goodman on 10/18/15.
//  Copyright © 2015 NeoTechnica Corporation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SU : UIViewController


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                  Interface Builder UI Elements                                                  */

@property (weak, nonatomic) IBOutlet UIPickerView * gradeLevelPickerView;
@property (weak, nonatomic) IBOutlet UIPickerView * schoolDistrictPickerView;

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *statusSegmentedControl;

@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *securityQuestionTextField;
@property (weak, nonatomic) IBOutlet UITextField *securityQuestionAnswerTextField;

//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                      Interface Builder Actions                                                  */


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                  Non-Interface Builder UI Elements                                              */


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                         View Controllers                                                        */


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                                  Strings                                                        */

@property (strong, nonatomic) NSString * firstNameString;
@property (strong, nonatomic) NSString * lastNameString;
@property (strong, nonatomic) NSString * generatedUserNameString;

//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                              Arrays                                                             */

@property (strong, nonatomic) NSArray * gradeLevelArray;
@property (strong, nonatomic) NSArray * schoolDistrictArray;

//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                           Boolean Values														   */


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                Other Non-Interface Builder Elements                                             */


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//


/*                                                            Method Definitions												   */


//-//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//--//-//

@end
