//
//  GPSPlot.h
//  PotencialDeLucro
//
//  Created by Guilherme Pola on 06/10/14.
//  Copyright (c) 2014 BoomerangApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface GPSPlot : NSObject

@property (nonatomic, assign) CGFloat spacing;
@property (nonatomic, assign)CGFloat inicialX;
@property (nonatomic, assign)CGFloat widthGraph;
@property (nonatomic, assign)CGFloat inicialY;


-(instancetype)init;
-(void)printWithArrayReal: (NSArray *)arrayValue andView: (UIView *)viewPlot;

@end
