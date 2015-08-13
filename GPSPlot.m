//
//  GPSPlot.m
//  PotencialDeLucro
//
//  Created by Guilherme Pola on 06/10/14.
//  Copyright (c) 2014 BoomerangApps. All rights reserved.
//

#import "GPSPlot.h"

@implementation GPSPlot
-(instancetype)init
{
    self = [super init];
    
    if (self) {
        _spacing = 0;
        NSLog(@"WOLOlo");

    }
    
    return self;
}

-(void)printWithArrayReal: (NSArray *)arrayValue andView: (UIView *)viewPlot{
   
    for (int i = 0 ; i < viewPlot.subviews.count; i++) {
        
        
            [[viewPlot.subviews objectAtIndex:i] removeFromSuperview];
            i--;
            
        }
    
    NSArray *arrColor = @[ [UIColor colorWithRed:40/255.0 green:170/255.0 blue:225/255.0 alpha:1.0],
                           [UIColor colorWithRed:235/255.0 green:30/255.0 blue:120/255.0 alpha:1.0],
                           [UIColor colorWithRed:140/255 green:198/255.0 blue:160/255.0 alpha:1.0],
                           [UIColor yellowColor],
                           [UIColor greenColor]];
    
    if(!viewPlot)
    {
        return;
    }
    
    //Captura a altura da view. Esta altura será usada para calcular o deslocamento
    CGFloat parentHeight = viewPlot.frame.size.height - self.inicialY;
    CGFloat barOffset = parentHeight;
    
    NSInteger nValues = arrayValue.count;
    for(int i = 0; i < nValues; i++)
    {

        //Recebe o tamanho do seguimento da barra a ser impressa
        double barHeight = [[arrayValue objectAtIndex:i] doubleValue];

        //Cria o seguimento de barra a ser inserido
        UIView *bar = [[UIView alloc] initWithFrame:CGRectMake(self.inicialX, (barOffset - barHeight), self.widthGraph, barHeight)];
        bar.tag = i + 100;
        [bar setBackgroundColor:[arrColor objectAtIndex:i % arrColor.count]];

        [viewPlot addSubview:bar];
        

        //Cria o deslogamento para a inclusão da próxima barra
        barOffset -= barHeight + _spacing;
    }
}
@end
