//
//  ___FILENAME___
//  Enfore Library
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ NumberFour AG. All rights reserved.
//

#import "___FILEBASENAME___.h"

#import <N4iOSUIClasses/NSObject+N4Binding.h>
#import <N4iOSUIClasses/N4DocumentSection.h>
#import <N4iOSUIClasses/N4FormFieldset.h>
#import <N4iOSUIClasses/N4FormField.h>


@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Initialization & Deallocation

- (id)init
{
	if ((self = [super init])) {
	}
	return self;
}



#pragma mark - UIViewController methods

- (void)viewDidLoad
{
	[super viewDidLoad];
    [self configureForm];
}



#pragma mark - Private methods

- (void)configureForm
{
    N4Form *form = [N4Form new];
	
    N4DocumentSection *section;
    N4FormFieldset *fieldset;
    
	section = section = [N4DocumentSection section];
    section.headerTitle = @"Section 1";
    {
        fieldset = [N4FormFieldset fieldset];
        {
            [fieldset addField:[N4FormField fieldWithLabelAndText:@"Field 1"]];
        }
        [section addFieldset:fieldset];
        
		fieldset = [N4FormFieldset fieldset];
        {
            [fieldset addField:[N4FormField fieldWithLabelAndText:@"Field 1"]];
            [fieldset addField:[N4FormField fieldWithLabelAndText:@"Field 2"]];
        }
        [section addFieldset:fieldset];
    }
    [form addSection:section];
    
	section = [N4DocumentSection section];
    section.headerTitle = @"Section 2";
    {
        fieldset = [N4FormFieldset fieldset];
        {
            [fieldset addField:[N4FormField fieldWithLabelAndText:@"Field 1"]];
        }
        [section addFieldset:fieldset];
    }
    [form addSection:section];
    
    self.form = form;
}
@end