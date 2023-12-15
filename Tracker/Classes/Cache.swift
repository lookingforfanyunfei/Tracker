//
//  Cache.swift
//  Pods-Tracker_Example
//
//  Created by 范云飞 on 2023/12/15.
//

import Foundation

/**
 `Cache` is a thread safe key-value cache.
 
 It use `MemoryCache` to store objects in a small and fast memory cache,
 and use `DiskCache` to persisting objects to a large and slow disk cache.
 See `MemoryCache` and `DiskCache` for more information.
 */
open class Cache {
    /** The name of the cache, readonly. */
    public private(set) var name: String?
    /** The underlying memory cache. see `MemoryCache` for more information.*/
    public private(set) var memoryCache: MemoryCache!
    /** The underlying disk cache. see `DiskCache` for more information.*/
    public private(set) var diskCache: DiskCache!
    
    public convenience init() {
        fatalError("Use \"init(name:)\" or \"init(path:)\" to create Cache instance.")
    }
    
    public init(name: String) {
        
    }
    
    public init(path: String) {
        
    }
}

