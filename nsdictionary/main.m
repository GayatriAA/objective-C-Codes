//
//  main.m
//  nsdictionary
//
//  Created by Student P_08 on 03/02/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //simple dictionary with literal syntax
        
        NSDictionary *simpledic=@{@"1":@"s1",@"2":@"s2",@"3":@"s4"};
        NSLog(@"%@",simpledic);
        
        NSDictionary *firstDic = [NSDictionary dictionaryWithObjectsAndKeys:@"object1",@"key1",@"object2",@"key2",@"object3",@"key3",@"object3",@"key4",nil];
        
        //log dictionary
        NSLog(@"%@",firstDic);
       
        //using fast Enumeration
        for (id key in firstDic)
        {
            NSLog(@"key is %@ for %@",key,firstDic[key]);
        }
       
        //searching object for given key
        NSString *myobject = [firstDic objectForKey:@"key3"];
        
        NSLog(@"object is %@ for key3",myobject);
        
        //searching all keys for object
        NSLog(@"All keys for object : %@",[firstDic allKeysForObject:@"object3'"]);
    
        //Mutable Dictionary
        
        NSMutableDictionary *changableDic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"prod1",@"1",@"prod2",@"3",@"prod4",@"4",nil];
        
        NSArray *rollarray=@[@"1",@"2",@"3",@"4"];
        NSArray *namearray=@[@"A",@"B",@"C",@"D"];
        NSLog(@"%@",changableDic);
        
        [changableDic setObject:@"new Product" forKey:@"4"];
         NSLog(@"%@",changableDic);
        
        [changableDic removeObjectForKey:@"2"];
         NSLog(@"%@",changableDic);
     
        //initialize dictionary keys and objects by arrays
                                  
        NSMutableDictionary *newDic=[NSMutableDictionary dictionaryWithObjects:namearray forKeys:rollarray];
        NSLog(@"%@",newDic);
        
        newDic[@"5"]=@"E";
        NSLog(@"%@",newDic);
        
        [changableDic removeAllObjects];
        NSLog(@"%@",changableDic);
        
        
    }
    return 0;
}
