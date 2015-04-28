//
//  main.m
//  Parse Json data
//
//  Created by Ferrakkem Bhuiyan on 28/04/2015.
//  Copyright (c) 2015 Ferrakkem Bhuiyan. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *jSonData = @{@"username" :@ "8801710540786",@"profile-status":@" ",@"email":@"mansur@divine-it.net",
                                   @"imei" :@"355810055390325",@"profile-name":@" ",@"fb-user":@" ",@"profile-pic":@" ",
                                   @"type":@"signup",@"app-version":@"1.8.9",@"opcode":@"1000"};
      
        
        NSData *jsonDicData =[NSJSONSerialization dataWithJSONObject:jSonData options:NSJSONWritingPrettyPrinted error:Nil];
    

        NSLog(@" %@",[[NSString alloc] initWithData:jsonDicData encoding:NSUTF8StringEncoding]);
       
        
        NSDictionary *decodeDict =[NSJSONSerialization JSONObjectWithData:jsonDicData options:0 error:Nil];
        
        
        assert([jSonData isEqual:decodeDict]);
        
    }
    return 0;
}
