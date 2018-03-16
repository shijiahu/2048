//
//  ViewController.m
//  204820482048
//
//  Created by shijia hu on 2/7/17.
//  Copyright © 2017 shijia hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UILabel *Tile1;
@property (strong, nonatomic) IBOutlet UILabel *Tile2;
@property (strong, nonatomic) IBOutlet UILabel *Tile3;
@property (strong, nonatomic) IBOutlet UILabel *Tile4;
@property (strong, nonatomic) IBOutlet UILabel *Tile5;
@property (strong, nonatomic) IBOutlet UILabel *Tile6;
@property (strong, nonatomic) IBOutlet UILabel *Tile7;
@property (strong, nonatomic) IBOutlet UILabel *Tile8;
@property (strong, nonatomic) IBOutlet UILabel *Tile9;
@property (strong, nonatomic) IBOutlet UILabel *Tile10;
@property (strong, nonatomic) IBOutlet UILabel *Tile11;
@property (strong, nonatomic) IBOutlet UILabel *Tile12;
@property (strong, nonatomic) IBOutlet UILabel *Tile13;
@property (strong, nonatomic) IBOutlet UILabel *Tile14;
@property (strong, nonatomic) IBOutlet UILabel *Tile15;
@property (strong, nonatomic) IBOutlet UILabel *Tile16;
@property (strong, nonatomic) IBOutlet UILabel *Score;


- (IBAction)resetTap:(UIButton *)sender;
- (IBAction)moveRight:(UIButton *)sender;
- (IBAction)moveLeft:(UIButton *)sender;
- (IBAction)moveUp:(UIButton *)sender;
- (IBAction)moveDown:(UIButton *)sender;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)resetIninit{
    [_Tile1 setText:@""];[_Tile1 setTag:0];
    [_Tile2 setText:@""];[_Tile2 setTag:0];
    [_Tile3 setText:@""];[_Tile3 setTag:0];
    [_Tile4 setText:@""];[_Tile4 setTag:0];
    [_Tile5 setText:@""];[_Tile5 setTag:0];
    [_Tile6 setText:@""];[_Tile6 setTag:0];
    [_Tile7 setText:@""];[_Tile7 setTag:0];
    [_Tile8 setText:@""];[_Tile8 setTag:0];
    [_Tile9 setText:@""];[_Tile9 setTag:0];
    [_Tile10 setText:@""];[_Tile10 setTag:0];
    [_Tile11 setText:@""];[_Tile11 setTag:0];
    [_Tile12 setText:@""];[_Tile12 setTag:0];
    [_Tile13 setText:@""];[_Tile13 setTag:0];
    [_Tile14 setText:@""];[_Tile14 setTag:0];
    [_Tile15 setText:@""];[_Tile15 setTag:0];
    [_Tile16 setText:@""];[_Tile16 setTag:0];
    _Tile1.backgroundColor = [self tileColor:0];
    _Tile2.backgroundColor = [self tileColor:0];
    _Tile3.backgroundColor = [self tileColor:0];
    _Tile4.backgroundColor = [self tileColor:0];
    _Tile5.backgroundColor = [self tileColor:0];
    _Tile6.backgroundColor = [self tileColor:0];
    _Tile7.backgroundColor = [self tileColor:0];
    _Tile8.backgroundColor = [self tileColor:0];
    _Tile9.backgroundColor = [self tileColor:0];
    _Tile10.backgroundColor = [self tileColor:0];
    _Tile11.backgroundColor = [self tileColor:0];
    _Tile12.backgroundColor = [self tileColor:0];
    _Tile13.backgroundColor = [self tileColor:0];
    _Tile14.backgroundColor = [self tileColor:0];
    _Tile15.backgroundColor = [self tileColor:0];
    _Tile16.backgroundColor = [self tileColor:0];
    
    [_Score setText:@"0"];
}

- (UIColor *)tileColor:(NSUInteger)value {
    switch (value) {
        case 0:
            return [UIColor colorWithRed:228./255. green:233./255. blue:140./255. alpha:1];
        case 2:
            return [UIColor colorWithRed:238./255. green:228./255. blue:218./255. alpha:1];
        case 4:
            return [UIColor colorWithRed:237./255. green:224./255. blue:200./255. alpha:1];
        case 8:
            return [UIColor colorWithRed:242./255. green:177./255. blue:121./255. alpha:1];
        case 16:
            return [UIColor colorWithRed:245./255. green:149./255. blue:99./255. alpha:1];
        case 32:
            return [UIColor colorWithRed:246./255. green:124./255. blue:95./255. alpha:1];
        case 64:
            return [UIColor colorWithRed:246./255. green:94./255. blue:59./255. alpha:1];
        case 128:
        case 256:
        case 512:
        case 1024:
        case 2048:
            return [UIColor colorWithRed:237./255. green:207./255. blue:114./255. alpha:1];
        default:
            return [UIColor whiteColor];
    }
}

-(void)newTile{
    
    for(int j = 0;j<16;j++)
    {
        
        int i = rand()%16+1;
    
        NSLog(@"%d",i);
    
    if (i==1 && _Tile1.tag == 0) {
        [_Tile1 setText:@"2"];
        [_Tile1 setTag:1];
        _Tile1.backgroundColor = [self tileColor:2];
        break;
    }else if (i==2 && _Tile2.tag == 0) {
        [_Tile2 setText:@"2"];
        [_Tile2 setTag:1];
        _Tile2.backgroundColor = [self tileColor:2];
        break;
    }else if (i==3 && _Tile3.tag == 0) {
        [_Tile3 setText:@"2"];
        [_Tile3 setTag:1];
        _Tile3.backgroundColor = [self tileColor:2];
        break;
    }else if (i==4 && _Tile4.tag == 0) {
        [_Tile4 setText:@"2"];
        [_Tile4 setTag:1];
        _Tile4.backgroundColor = [self tileColor:2];
        break;
    }else if (i==5 && _Tile5.tag == 0) {
        [_Tile5 setText:@"2"];
        [_Tile5 setTag:1];
        _Tile5.backgroundColor = [self tileColor:2];
        break;
    }else if (i==6 && _Tile6.tag == 0) {
        [_Tile6 setText:@"2"];
        [_Tile6 setTag:1];
        _Tile6.backgroundColor = [self tileColor:2];
        break;
    }else if (i==7 && _Tile7.tag == 0) {
        [_Tile7 setText:@"2"];
        [_Tile7 setTag:1];
        _Tile7.backgroundColor = [self tileColor:2];
        break;
    }else if (i==8 && _Tile8.tag == 0) {
        [_Tile8 setText:@"2"];
        [_Tile8 setTag:1];
        _Tile8.backgroundColor = [self tileColor:2];
        break;
    }else if (i==9 && _Tile9.tag == 0) {
        [_Tile9 setText:@"2"];
        [_Tile9 setTag:1];
        _Tile9.backgroundColor = [self tileColor:2];
        break;
    }else if (i==10 && _Tile10.tag == 0) {
        [_Tile10 setText:@"2"];
        [_Tile10 setTag:1];
        _Tile10.backgroundColor = [self tileColor:2];
        break;
    }else if (i==11 && _Tile11.tag == 0) {
        [_Tile11 setText:@"2"];
        [_Tile11 setTag:1];
        _Tile11.backgroundColor = [self tileColor:2];
        break;
    }else if (i==12 && _Tile12.tag == 0) {
        [_Tile12 setText:@"2"];
        [_Tile12 setTag:1];
        _Tile12.backgroundColor = [self tileColor:2];
        break;
    }else if (i==13 && _Tile13.tag == 0) {
        [_Tile13 setText:@"2"];
        [_Tile13 setTag:1];
        _Tile13.backgroundColor = [self tileColor:2];
        break;
    }else if (i==14 && _Tile14.tag == 0) {
        [_Tile14 setText:@"2"];
        [_Tile14 setTag:1];
        _Tile14.backgroundColor = [self tileColor:2];
        break;
    }else if (i==15 && _Tile15.tag == 0) {
        [_Tile15 setText:@"2"];
        [_Tile15 setTag:1];
        _Tile15.backgroundColor = [self tileColor:2];
        break;
    }else if (i==16 && _Tile16.tag == 0) {
        [_Tile16 setText:@"2"];
        [_Tile16 setTag:1];
        _Tile16.backgroundColor = [self tileColor:2];
        break;
    }
    
    }
    NSLog(@"%ld-------1-------%@", (long)_Tile1.tag, _Tile1.text);
    NSLog(@"%ld-------2-------%@", (long)_Tile2.tag, _Tile2.text);
    NSLog(@"%ld-------3-------%@", (long)_Tile3.tag, _Tile3.text);
    NSLog(@"%ld-------4-------%@", (long)_Tile4.tag, _Tile4.text);
    NSLog(@"%ld-------5-------%@", (long)_Tile5.tag, _Tile5.text);
    NSLog(@"%ld-------6-------%@", (long)_Tile6.tag, _Tile6.text);
    NSLog(@"%ld-------7-------%@", (long)_Tile7.tag, _Tile7.text);
    NSLog(@"%ld-------8-------%@", (long)_Tile8.tag, _Tile8.text);
    NSLog(@"%ld-------9-------%@", (long)_Tile9.tag, _Tile9.text);
    NSLog(@"%ld------10-------%@", (long)_Tile10.tag, _Tile10.text);
    NSLog(@"%ld------11-------%@", (long)_Tile11.tag, _Tile11.text);
    NSLog(@"%ld------12-------%@", (long)_Tile12.tag, _Tile12.text);
    NSLog(@"%ld------13-------%@", (long)_Tile13.tag, _Tile13.text);
    NSLog(@"%ld------14-------%@", (long)_Tile14.tag, _Tile14.text);
    NSLog(@"%ld------15-------%@", (long)_Tile15.tag, _Tile15.text);
    NSLog(@"%ld------16-------%@", (long)_Tile16.tag, _Tile16.text);
}

-(void)move: (UILabel*)A with: (UILabel*)B with: (UILabel*)C with: (UILabel*)D{
    //only one tile has number
    if(A.tag==1 && B.tag !=1 && C.tag != 1 && D.tag!=1){
        [D setText:A.text];
        D.backgroundColor = [self tileColor:[A.text intValue]];
        A.backgroundColor = [self tileColor:0];
        [A setText:@""];
        [A setTag:0];
        [D setTag:1];
    }else if(A.tag!=1 && B.tag ==1 && C.tag != 1 && D.tag!=1){
        D.backgroundColor = [self tileColor:[B.text intValue]];
        B.backgroundColor = [self tileColor:0];
        [D setText:B.text];
        [D setTag:1];
        [B setText:@""];
        [B setTag:0];
    }else if(A.tag!=1 && B.tag !=1 && C.tag == 1 && D.tag!=1){
        D.backgroundColor = [self tileColor:[C.text intValue]];
        C.backgroundColor = [self tileColor:0];
        [D setText:C.text];
        [D setTag:1];
        [C setText:@""];
        [C setTag:0];
    }else if( A.tag==1 && B.tag ==1 && C.tag != 1 && D.tag!=1){
        //two tiles have numbers
        //AB
        if(A.text == B.text){
            
            [D setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            A.backgroundColor = [self tileColor:0];
            B.backgroundColor = [self tileColor:0];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [B setText:@""];
            [B setTag:0];
            [A setText:@""];
            [A setTag:0];
            [D setTag:1];
            
        }else if(A.text != B.text){
            [D setText:B.text];
            [C setText:A.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [A setText:@""];
            [A setTag:0];
            [B setTag:0];
            [C setTag:1];
            [D setTag:1];
        }
    }else if( A.tag==1 && B.tag !=1 && C.tag == 1 && D.tag!=1){//AC
        if(A.text == C.text){
            [D setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            A.backgroundColor = [self tileColor:0];
            C.backgroundColor = [self tileColor:0];
            [C setText:@""];
            [A setText:@""];
            [C setTag:0];
            [A setTag:0];
            [D setTag:1];
        }else if(A.text != C.text){
            [D setText:C.text];
            [C setText:A.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
            [D setTag:1];
        }
    }else if( A.tag==1 && B.tag !=1 && C.tag != 1 && D.tag==1){//AD
        if(A.text == D.text){
            [D setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
        }else if(A.text != D.text){
            [C setText:A.text];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
            [C setTag:1];
        }
    }else if( A.tag!=1 && B.tag ==1 && C.tag == 1 && D.tag!=1){//BC
        if(C.text == B.text){
            [D setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:0];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [C setText:@""];
            [C setTag:0];
            [B setTag:0];
            [D setTag:1];
        }else if(C.text != B.text){
            [D setText:C.text];
            [C setText:B.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [B setTag:0];
            [D setTag:1];
        }
    }else if( A.tag!=1 && B.tag == 1 && C.tag != 1 && D.tag == 1){//BD
        if(D.text == B.text){
            [D setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [B setTag:0];
        }else if(D.text != B.text){
            [C setText:B.text];
            [C setTag:1];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [B setTag:0];
        }
    }else if( A.tag!=1 && B.tag !=1 && C.tag == 1 && D.tag==1){//CD
        if(C.text == D.text){
            [D setText:[NSString stringWithFormat: @"%d",[C.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:0];
            [C setText:@""];
            [C setTag:0];
        }
    }else if( A.tag==1 && B.tag ==1 && C.tag == 1 && D.tag!=1){
        //three tiles have numbers
        //ABC
        if(C.text == B.text){
            [D setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [C setText:A.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [A setText:@""];
            [A setTag:0];
            [B setTag:0];
            [D setTag:1];
        }else if(C.text != B.text){
            if(A.text == B.text){
                [D setText:C.text];
                [D setTag:1];
                [C setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
                [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
                D.backgroundColor = [self tileColor:[D.text intValue]];
                C.backgroundColor = [self tileColor:[C.text intValue]];
                A.backgroundColor = [self tileColor:0];
                B.backgroundColor = [self tileColor:0];
                [B setText:@""];
                [A setText:@""];
                [A setTag:0];
                [B setTag:0];
            }else if (A.text!=B.text) {
                [D setText:C.text];
                [D setTag:1];
                [C setText:B.text];
                [B setText:A.text];
                D.backgroundColor = [self tileColor:[D.text intValue]];
                C.backgroundColor = [self tileColor:[C.text intValue]];
                B.backgroundColor = [self tileColor:[B.text intValue]];
                A.backgroundColor = [self tileColor:0];
                [A setTag:0];
                [A setText:@""];
            }
            
        }
    }else if( A.tag==1 && B.tag ==1 && C.tag != 1 && D.tag==1){
        //ABD
        if(D.text == B.text){
            [D setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [C setText:A.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [B setTag:0];
            [A setText:@""];
            [A setTag:0];
            [C setTag:1];
        }else if(D.text != B.text){
            if(A.text == B.text){
                [C setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
                [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
                [C setTag:1];
                C.backgroundColor = [self tileColor:[C.text intValue]];
                A.backgroundColor = [self tileColor:0];
                B.backgroundColor = [self tileColor:0];
                [A setTag:0];
                [A setText:@""];
                [B setTag:0];
                [B setText:@""];
            }else if (A.text!=B.text) {
                [C setText:B.text];
                [C setTag:1];
                [B setText:A.text];
                C.backgroundColor = [self tileColor:[C.text intValue]];
                B.backgroundColor = [self tileColor:[B.text intValue]];
                A.backgroundColor = [self tileColor:0];
                [A setTag:0];
                [A setText:@""];
            }
            
        }
    }else if( A.tag==1 && B.tag !=1 && C.tag == 1 && D.tag==1){
        //ACD
        if(D.text == C.text){
            [D setText:[NSString stringWithFormat: @"%d",[C.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [C setText:A.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
        }else if(D.text != C.text){
            if(C.text == A.text){
                [C setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
                [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
                C.backgroundColor = [self tileColor:[C.text intValue]];
                A.backgroundColor = [self tileColor:0];
                [A setTag:0];
                [A setText:@""];
            }else if(C.text != A.text){
                [B setText:A.text];
                B.backgroundColor = [self tileColor:[B.text intValue]];
                A.backgroundColor = [self tileColor:0];
                [B setTag:1];
                [A setTag:0];
                [A setText:@""];
            }
        }
    }
    //BCD
    else if( A.tag!=1 && B.tag ==1 && C.tag == 1 && D.tag==1){
        if(D.text == C.text){
            [D setText:[NSString stringWithFormat: @"%d",[C.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [C setText:B.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [B setTag:0];
        }else if(D.text != C.text){
            if(C.text == B.text){
                [C setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
                [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
                C.backgroundColor = [self tileColor:[C.text intValue]];
                B.backgroundColor = [self tileColor:0];
                [B setTag:0];
                [B setText:@""];
            }
        }
    }
    //ABCD
    else if( A.tag==1 && B.tag ==1 && C.tag == 1 && D.tag==1){
        if(D.text == C.text && A.text == B.text){
            [D setText:[NSString stringWithFormat: @"%d",[C.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [C setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            B.backgroundColor = [self tileColor:0];
            [B setText:@""];
            [A setText:@""];
            [A setTag:0];
            [B setTag:0];
        }else if(D.text == C.text && A.text != B.text){
            [D setText:[NSString stringWithFormat: @"%d",[C.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            [C setText:B.text];
            [B setText:A.text];
            D.backgroundColor = [self tileColor:[D.text intValue]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            B.backgroundColor = [self tileColor:[B.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
        }else if(D.text != C.text && A.text == B.text){
            [B setText:[NSString stringWithFormat: @"%d",[A.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            B.backgroundColor = [self tileColor:[B.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
        }else if (D.text != C.text && A.text != B.text && B.text==C.text){
            [C setText:[NSString stringWithFormat: @"%d",[B.text intValue]*2]];
            [_Score setText:[NSString stringWithFormat: @"%d",[_Score.text intValue]+10]];
            C.backgroundColor = [self tileColor:[C.text intValue]];
            A.backgroundColor = [self tileColor:0];
            [A setText:@""];
            [A setTag:0];
        }
    }
    
}


- (IBAction)resetTap:(UIButton *)sender {
    
    [self resetIninit];
    
    int i,j,t;
    int a[20];
    for(i = 0; i < 16; )
    {
        t = rand()%(16-1+1)+1;
        for(j = 0; j < i; j ++)
            if(a[j] == t) break;
        if(j == i)//不重复
            a[i++] = t;//记录随机数。
    }

   // NSLog(@"%d %d", a[0],a[1]);
    
    if (a[0] == 1) {[_Tile1 setText:@"2"];[_Tile1 setTag:1];_Tile1.backgroundColor = [self tileColor:2];}
    if (a[0] == 2) {[_Tile2 setText:@"2"];[_Tile2 setTag:1];_Tile2.backgroundColor = [self tileColor:2];}
    if (a[0] == 3) {[_Tile3 setText:@"2"];[_Tile3 setTag:1];_Tile3.backgroundColor = [self tileColor:2];}
    if (a[0] == 4) {[_Tile4 setText:@"2"];[_Tile4 setTag:1];_Tile4.backgroundColor = [self tileColor:2];}
    if (a[0] == 5) {[_Tile5 setText:@"2"];[_Tile5 setTag:1];_Tile5.backgroundColor = [self tileColor:2];}
    if (a[0] == 6) {[_Tile6 setText:@"2"];[_Tile6 setTag:1];_Tile6.backgroundColor = [self tileColor:2];}
    if (a[0] == 7) {[_Tile7 setText:@"2"];[_Tile7 setTag:1];_Tile7.backgroundColor = [self tileColor:2];}
    if (a[0] == 8) {[_Tile8 setText:@"2"];[_Tile8 setTag:1];_Tile8.backgroundColor = [self tileColor:2];}
    if (a[0] == 9) {[_Tile9 setText:@"2"];[_Tile9 setTag:1];_Tile9.backgroundColor = [self tileColor:2];}
    if (a[0] == 10) {[_Tile10 setText:@"2"];[_Tile10 setTag:1];_Tile10.backgroundColor = [self tileColor:2];}
    if (a[0] == 11) {[_Tile11 setText:@"2"];[_Tile11 setTag:1];_Tile11.backgroundColor = [self tileColor:2];}
    if (a[0] == 12) {[_Tile12 setText:@"2"];[_Tile12 setTag:1];_Tile12.backgroundColor = [self tileColor:2];}
    if (a[0] == 13) {[_Tile13 setText:@"2"];[_Tile13 setTag:1];_Tile13.backgroundColor = [self tileColor:2];}
    if (a[0] == 14) {[_Tile14 setText:@"2"];[_Tile14 setTag:1];_Tile14.backgroundColor = [self tileColor:2];}
    if (a[0] == 15) {[_Tile15 setText:@"2"];[_Tile15 setTag:1];_Tile15.backgroundColor = [self tileColor:2];}
    if (a[0] == 16) {[_Tile16 setText:@"2"];[_Tile16 setTag:1];_Tile16.backgroundColor = [self tileColor:2];}
    if (a[1] == 1) {[_Tile1 setText:@"2"];[_Tile1 setTag:1];_Tile1.backgroundColor = [self tileColor:2];}
    if (a[1] == 2) {[_Tile2 setText:@"2"];[_Tile2 setTag:1];_Tile2.backgroundColor = [self tileColor:2];}
    if (a[1] == 3) {[_Tile3 setText:@"2"];[_Tile3 setTag:1];_Tile3.backgroundColor = [self tileColor:2];}
    if (a[1] == 4) {[_Tile4 setText:@"2"];[_Tile4 setTag:1];_Tile4.backgroundColor = [self tileColor:2];}
    if (a[1] == 5) {[_Tile5 setText:@"2"];[_Tile5 setTag:1];_Tile5.backgroundColor = [self tileColor:2];}
    if (a[1] == 6) {[_Tile6 setText:@"2"];[_Tile6 setTag:1];_Tile6.backgroundColor = [self tileColor:2];}
    if (a[1] == 7) {[_Tile7 setText:@"2"];[_Tile7 setTag:1];_Tile7.backgroundColor = [self tileColor:2];}
    if (a[1] == 8) {[_Tile8 setText:@"2"];[_Tile8 setTag:1];_Tile8.backgroundColor = [self tileColor:2];}
    if (a[1] == 9) {[_Tile9 setText:@"2"];[_Tile9 setTag:1];_Tile9.backgroundColor = [self tileColor:2];}
    if (a[1] == 10) {[_Tile10 setText:@"2"];[_Tile10 setTag:1];_Tile10.backgroundColor = [self tileColor:2];}
    if (a[1] == 11) {[_Tile11 setText:@"2"];[_Tile11 setTag:1];_Tile11.backgroundColor = [self tileColor:2];}
    if (a[1] == 12) {[_Tile12 setText:@"2"];[_Tile12 setTag:1];_Tile12.backgroundColor = [self tileColor:2];}
    if (a[1] == 13) {[_Tile13 setText:@"2"];[_Tile13 setTag:1];_Tile13.backgroundColor = [self tileColor:2];}
    if (a[1] == 14) {[_Tile14 setText:@"2"];[_Tile14 setTag:1];_Tile14.backgroundColor = [self tileColor:2];}
    if (a[1] == 15) {[_Tile15 setText:@"2"];[_Tile15 setTag:1];_Tile15.backgroundColor = [self tileColor:2];}
    if (a[1] == 16) {[_Tile16 setText:@"2"];[_Tile16 setTag:1];_Tile16.backgroundColor = [self tileColor:2];}
    
}

- (IBAction)moveRight:(UIButton *)sender {
    
    [self move:_Tile1 with:_Tile2 with:_Tile3 with:_Tile4];
    [self move:_Tile5 with:_Tile6 with:_Tile7 with:_Tile8];
    [self move:_Tile9 with:_Tile10 with:_Tile11 with:_Tile12];
    [self move:_Tile13 with:_Tile14 with:_Tile15 with:_Tile16];
    
    NSLog(@"Right");

    [self newTile];
}

- (IBAction)moveLeft:(UIButton *)sender {
    [self move:_Tile4 with:_Tile3 with:_Tile2 with:_Tile1];
    [self move:_Tile8 with:_Tile7 with:_Tile6 with:_Tile5];
    [self move:_Tile12 with:_Tile11 with:_Tile10 with:_Tile9];
    [self move:_Tile16 with:_Tile15 with:_Tile14 with:_Tile13];
    
    NSLog(@"Left");
    
    int i = 1;
    if (i==1) {
        [self newTile];
    }
}

- (IBAction)moveUp:(UIButton *)sender {
    [self move:_Tile13 with:_Tile9 with:_Tile5 with:_Tile1];
    [self move:_Tile14 with:_Tile10 with:_Tile6 with:_Tile2];
    [self move:_Tile15 with:_Tile11 with:_Tile7 with:_Tile3];
    [self move:_Tile16 with:_Tile12 with:_Tile8 with:_Tile4];
   
    NSLog(@"UP");
    
    int i = 1;
    if (i==1) {
        [self newTile];
    }
    
}

- (IBAction)moveDown:(UIButton *)sender {
    [self move:_Tile1 with:_Tile5 with:_Tile9 with:_Tile13];
    [self move:_Tile2 with:_Tile6 with:_Tile10 with:_Tile14];
    [self move:_Tile3 with:_Tile7 with:_Tile11 with:_Tile15];
    [self move:_Tile4 with:_Tile8 with:_Tile12 with:_Tile16];
    NSLog(@"Down");
    int i = 1;
    if (i==1) {
        [self newTile];
    }
}
@end
