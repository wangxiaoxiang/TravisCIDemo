//
//  TravisCIDemoTests.m
//  TravisCIDemoTests
//
//  Created by 汪潇翔 on 10/12/2016.
//  Copyright © 2016 汪潇翔. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <TravisCIDemo/TravisCIDemo.h>

@interface TravisCIDemoTests : XCTestCase

@end

@implementation TravisCIDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    NSString *string = @"https://www.bing.com/search?q=%E6%88%91%E7%9A%84%E4%B8%96%E7%95%8C&qs=AS&pq=wo&sc=8-2&cvid=DA6D555E72C34BA0813849D58DCE4A50&FORM=QBRE&sp=1";
    
    NSString *rightString = @"https://www.bing.com/search?q=我的世界&qs=AS&pq=wo&sc=8-2&cvid=DA6D555E72C34BA0813849D58DCE4A50&FORM=QBRE&sp=1";
    
    NSString *decodedString = [TCIURLCoder decode:string];
    
    XCTAssert(![decodedString isEqualToString:rightString]);
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
