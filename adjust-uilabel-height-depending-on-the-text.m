// FLT_MAX here simply means no constraint in height
CGSize maximumLabelSize = CGSizeMake(296, FLT_MAX);

CGSize expectedLabelSize = [yourString sizeWithFont:yourLabel.font constrainedToSize:maximumLabelSize lineBreakMode:yourLabel.lineBreakMode];   

//adjust the label the the new height.
CGRect newFrame = yourLabel.frame;
newFrame.size.height = expectedLabelSize.height;
yourLabel.frame = newFrame;
