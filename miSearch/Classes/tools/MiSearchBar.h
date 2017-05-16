
#import <UIKit/UIKit.h>

@interface MiSearchBar : UISearchBar
@property (strong, nonatomic) UITextField *searchTextField;

-(id)initWithFrame:(CGRect)frame placeholder:(NSString *)placeholder;

@end
