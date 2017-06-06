/*
 * The MIT License (MIT)
 *
 * Copyright (C) 2017, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.com>.
 * All rights reserved.
 *
 * Original Inspiration & Author
 * Copyright (c) 2016 Luke Zhao <me@lkzhao.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

internal extension Array {
    /**
     Retrieves the element at the given index if it exists.
     - Parameter _ index: An Int.
     - Returns: An optional Element value.
     */
    func get(_ index: Int) -> Element? {
        if index < count {
            return self[index]
        }
        return nil
    }
}

internal extension Array where Element: ExprNode {
    /**
     Retrieves the element at the given index if it exists
     as a CGFloat.
     - Parameter _ index: An Int.
     - Returns: An optional CGFloat value.
     */
    func getCGFloat(_ index: Int) -> CGFloat? {
        guard let s = get(index) as? NumberNode else {
            return nil
        }
        
        return CGFloat(s.value)
    }
    
    /**
     Retrieves the element at the given index if it exists
     as a Double.
     - Parameter _ index: An Int.
     - Returns: An optional Double value.
     */
    func getDouble(_ index: Int) -> Double? {
        guard let s = get(index) as? NumberNode else {
            return nil
        }
        
        return Double(s.value)
    }
    
    /**
     Retrieves the element at the given index if it exists
     as a Float.
     - Parameter _ index: An Int.
     - Returns: An optional Float value.
     */
    func getFloat(_ index: Int) -> Float? {
        guard let s = get(index) as? NumberNode else {
            return nil
        }
        
        return s.value
    }
    
    /**
     Retrieves the element at the given index if it exists
     as a Bool.
     - Parameter _ index: An Int.
     - Returns: An optional Bool value.
     */
    func getBool(_ index: Int) -> Bool? {
        guard let s = get(index) as? VariableNode else {
            return nil
        }
        
        guard let f = Bool(s.name) else {
            return nil
        }
        
        return f
    }
}
