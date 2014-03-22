//
//  LPAnnotation.m
//  LPCarParksExample
//
//  Created by Luka Penger on 19/03/14.
//  Copyright (c) 2014 Luka Penger. All rights reserved.
//

// This code is distributed under the terms and conditions of the MIT license.
//
// Copyright (c) 2014 Luka Penger
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "LPAnnotation.h"


@implementation LPAnnotation

#pragma mark - Lifecycle

- (id)initWithCarPark:(LPLjubljanaCarPark *)carPark
{
    self = [super init];
    if (self) {
        self.carPark = carPark;
        self.coordinate = CLLocationCoordinate2DMake(carPark.latitude, carPark.longitude);
        self.title = carPark.name;
        self.subtitle = carPark.parkDescription;
    }
    
    return self;
}

#pragma mark - Class

+ (id)annotationWithCarPark:(LPLjubljanaCarPark *)carPark
{
    LPAnnotation *new = [LPAnnotation new];
    
    new.carPark = carPark;
    new.coordinate = CLLocationCoordinate2DMake(carPark.latitude, carPark.longitude);
    new.title = carPark.name;
    new.subtitle = carPark.parkDescription;

	return new;
}

@end
