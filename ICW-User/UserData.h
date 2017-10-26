//
//  UserData.h
//  ICW-User
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserData : NSObject

@property (nonatomic,strong) NSString *fName;
@property (nonatomic,strong) NSString *lName;
@property (nonatomic,strong) NSNumber *height;

-(id)initWithData:(NSString *)firstName andLast: (NSString *) lastName andHeight: (NSNumber *) height2;
-(void) setFName:(NSString *)firstName;
-(void) setLName:(NSString *)lastName;
-(void) setHeight:(NSNumber *)height2;
-(NSString*)getFName;
-(NSString*)getLName;
-(NSNumber*)getHeight;
-(double)convertToMeters;

@end
