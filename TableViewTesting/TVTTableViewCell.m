//
//  TVTTableViewCell.m
//  TableViewTesting

#import "TVTTableViewCell.h"

@implementation TVTTableViewCell
    - (void)setFrame:(CGRect)frame {
        frame.origin.x += 50;
        frame.size.width -= 2 * 50;
        [super setFrame:frame];
    }

    - (void)layoutSubviews{
        [super layoutSubviews];

        if(self.top && self.down)
        {
            self.layer.cornerRadius = 10;
            self.layer.masksToBounds = YES;
        }
        else if (self.top)
        {
            CAShapeLayer *shape = [[CAShapeLayer alloc] init];
            shape.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height) byRoundingCorners:UIRectCornerTopLeft|UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)].CGPath;
            self.layer.mask = shape;
            self.layer.masksToBounds = YES;
        }
        else if (self.down)
        {
            CAShapeLayer *shape = [[CAShapeLayer alloc] init];
            shape.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height) byRoundingCorners:UIRectCornerBottomLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)].CGPath;
            self.layer.mask = shape;
            self.layer.masksToBounds = YES;
        }
    }
@end