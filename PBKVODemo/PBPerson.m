//
//  PBPerson.m
//  PBKVODemo
//
//  Created by wentao lu on 2021/4/18.
//

#import "PBPerson.h"

@implementation PBPerson
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"keypath=%@", keyPath);
}
@end
