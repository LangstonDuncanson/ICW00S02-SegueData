//
//  UserData.m
//  ICW-User
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "UserData.h"

@implementation UserData

-(id)initWithData:(NSString *)firstName andLast:(NSString *)lastName andHeight:(NSNumber *)height2{
    [self setFName:firstName];
    [self setLName:lastName];
    [self setHeight:height2];
    return self;
}

- (void) setFName:(NSString *)firstName{
    _fName = firstName;
}

- (void) setLName:(NSString *)lastName{
    _lName = lastName;
}

- (void) setHeight:(NSNumber *)height2{
    _height = height2;
}

-(NSString*) getFName{
    return _fName;
}

-(NSString*) getLName{
    return _lName;
}

-(NSNumber*) getHeight{
    return _height;
}

-(double) convertToMeters{
    double result = (([[self getHeight] doubleValue] * 2.54) * 0.01);
    return result;
}

@end
