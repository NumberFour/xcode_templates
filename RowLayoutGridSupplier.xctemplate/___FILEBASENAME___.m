//
//  ___FILENAME___
//  Enfore Library
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ NumberFour AG. All rights reserved.
//

#import "___FILEBASENAME___.h"

#import <N4iOSUIClasses/N4RowLayout.h>
#import <N4iOSUIClasses/N4RowLayoutTextCell.h>
#import <N4iOSUIClasses/N4RowLayoutImageCell.h>


@implementation ___FILEBASENAMEASIDENTIFIER___
{
	N4RowLayoutGrid *_grid;
}

#pragma mark - Required N4RowLayoutGridSupplier methods

- (N4RowLayoutGrid *)grid
{
	if (_grid != nil) {
    	return _grid;
    }
    
//    _grid = [N4RowLayoutGrid gridWithCells:@[
//            _iconCell, _titleCell, 
//            [NSNull null], _summaryCell,
//            [NSNull null], _footerCell]
//        layouts:@[
//        	@"T2A",
//            @"T2A",
//            @"T2A"]];
    
    return _grid;
}

- (void)setObjectValue:(id)objectValue isMeasuring:(BOOL)isMeasuring
{
	// Configure your cells as usual, but don't do heavy-lifting like loading images
    
    if (isMeasuring) {
    	return;
    }
    
	// Load images here ...
}
@end