//
//  Language.swift
//  LTRRTLSideMenu
//
//  Created by Krunal Soni on 21/05/17.
//  Copyright © 2017 Krunal Soni. All rights reserved.
//

import Foundation

// constants
let APPLE_LANGUAGE_KEY = "AppleLanguages"


class Language {
    
    /// get current Apple language
    class func currentAppleLanguage() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        let endIndex = current.startIndex
        let currentWithoutLocale = current.substring(to: current.index(endIndex, offsetBy: 2))
        return currentWithoutLocale
    }
    /// set @lang to be the first in Applelanguages list
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        userdef.synchronize()
    }
    
}
