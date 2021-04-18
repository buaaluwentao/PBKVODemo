//
//  ViewController.m
//  PBKVODemo
//
//  Created by wentao lu on 2021/4/18.
//

#import "ViewController.h"
#import "PBPerson.h"
#import "PBDog.h"

//KVO的实现原理：新建被观察者类型的子类，将被观察者对象is-a指针指向新建子类。

@interface ViewController ()
@property (nonatomic, strong) PBPerson *person;
@property (nonatomic, strong) PBDog *dog;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _person = [[PBPerson alloc] init];
    _dog = [[PBDog alloc] init];
    
    //_dog isa 改变为新建子类
    [_dog addObserver:_person forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _dog.name = @"hashiqi";
}


@end
