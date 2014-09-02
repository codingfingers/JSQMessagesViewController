//
//  JSQMessagesCollectionViewCellCenteredMedia.m
//  JSQMessages
//
//  Created by Pierluigi Cifani on 17/6/14.
//  Copyright (c) 2014 Hexed Bits. All rights reserved.
//

#import "JSQMessagesCollectionViewCellCenteredMedia.h"

@implementation JSQMessagesCollectionViewCellCenteredMedia

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSQMessagesCollectionViewCellCenteredMedia class])
                          bundle:[NSBundle mainBundle]];
}

+ (NSString *)cellReuseIdentifier;
{
    return NSStringFromClass([JSQMessagesCollectionViewCellCenteredMedia class]);
}

#pragma mark - Initialization

- (void) awakeFromNib
{
    [super awakeFromNib];
    
    self.mediaHandler = [JSQMessagesMediaHandler mediaHandlerWithCell:self];
}

#pragma mark - UITableViewCell

-(void)prepareForReuse
{
    [super prepareForReuse];
    
    [self.mediaHandler cellWillBeReused];
}

@end
