//
//  Preferences.swift
//  Root3 Support
//
//  Created by Jordy Witteman on 31/07/2020.
//  Edited by Tres Reeves on 10/1/2021

import Foundation
import SwiftUI

// Class to publish preference updates from variables to ContentView
class Preferences: ObservableObject {
    
    // Where possible we use the @AppStorage property wrapper which uses UserDefaults to get and store preferences.
    // The benefit of @AppStorage is that value changes are automatically observed by SwiftUI and updates the view
    // without manually asking UserDefault for new data. Other preferences are handled elsewhere.
    
    // MARK: - General
    
    // Title shown in the top of the app
    @AppStorage("Title") var title: String = "Anitpasto"
    
    // Custom color for all symbols
    @AppStorage("CustomColor") var customColor: String = ""
    
    // Custom color for all symbols for Dark Mode
    @AppStorage("CustomColorDarkMode") var customColorDarkMode: String = ""
    
    // Custom error message
    @AppStorage("ErrorMessage") var errorMessage: String = NSLocalizedString("Please Contact IT Support", comment: "")
    
    // Show optional welcome screen
    @AppStorage("ShowWelcomeScreen") var showWelcomeScreen = true
    
    // Hide Quit Button. Set to FALSE by default in MAS version. Set to TRUE by default in Non-MAS version
    @AppStorage("HideQuit") var hideQuit: Bool = false
    
    // Text shown at the bottom as footnote
    @AppStorage("FooterText") var footerText = "Powered By: Black Glove Inc."
   
    // MARK: - Info items
    
    // Version 2.2 new preferences for modular info items
    @AppStorage("InfoItemOne") var infoItemOne: String = "ComputerName"
    @AppStorage("InfoItemTwo") var infoItemTwo: String = "MacOSVersion"
    @AppStorage("InfoItemThree") var infoItemThree: String = "Network"
    @AppStorage("InfoItemFour") var infoItemFour: String = "Storage"
    
    
    // Days of uptime after which a notification badge is shown, disabled by default
    @AppStorage("UptimeDaysLimit") var uptimeDaysLimit: Int = 1
    
    // Days until password expiry shows a notification badge is shown, disabled by default
    @AppStorage("PasswordExpiryLimit") var passwordExpiryLimit: Int = 1
    
    // Text to show in Password info item
    @AppStorage("PasswordLabel") var passwordLabel: String = "Mac " + NSLocalizedString("Password", comment: "")
    
    // Percentage of storage used after which a notification badge is shown, disabled by default
    @AppStorage("StorageLimit") var storageLimit: Int = 0
    
    // MARK: - First row of configurable buttons
    
    // UserDefaults for button left (3rd row) with default values
    @AppStorage("FirstRowTitleLeft") var firstRowTitleLeft: String = "Student Portal"
    @AppStorage("FirstRowSubtitleLeft") var firstRowSubtitleLeft: String = ""
    @AppStorage("FirstRowTypeLeft") var firstRowTypeLeft: String = "URL"
    @AppStorage("FirstRowLinkLeft") var firstRowLinkLeft: String = "https://www.asdk12.org"
    @AppStorage("FirstRowSymbolLeft") var firstRowSymbolLeft: String = "person.crop.circle.badge.plus"
    
    // UserDefaults for optional button middle (3th row)
    @AppStorage("FirstRowTitleMiddle") var firstRowTitleMiddle: String = ""
    @AppStorage("FirstRowSubtitleMiddle") var firstRowSubtitleMiddle: String = ""
    @AppStorage("FirstRowTypeMiddle") var firstRowTypeMiddle: String = "URL"
    @AppStorage("FirstRowLinkMiddle") var firstRowLinkMiddle: String = ""
    @AppStorage("FirstRowSymbolMiddle") var firstRowSymbolMiddle: String = ""
    
    // UserDefaults for button right (3rd row) with default values
    @AppStorage("FirstRowTitleRight") var firstRowTitleRight: String = "System Request"
    @AppStorage("FirstRowSubtitleRight") var firstRowSubtitleRight: String = ""
    @AppStorage("FirstRowTypeRight") var firstRowTypeRight: String = "URL"
    @AppStorage("FirstRowLinkRight") var firstRowLinkRight: String = "https://www.zendesk.com"
    @AppStorage("FirstRowSymbolRight") var firstRowSymbolRight: String = "laptopcomputer.trianglebadge.exclamationmark"
    
    
    
    // MARK: - Second row of configurable buttons
    
    // UserDefaults for button left (4th row) with default values
    @AppStorage("SecondRowTitleLeft") var secondRowTitleLeft: String = "BG Phone"
    @AppStorage("SecondRowSubtitleLeft") var secondRowSubtitleLeft: String = ""
    @AppStorage("SecondRowTypeLeft") var secondRowTypeLeft: String = "URL"
    @AppStorage("SecondRowLinkLeft") var secondRowLinkLeft: String = "tel:+7043058748"
    @AppStorage("SecondRowSymbolLeft") var secondRowSymbolLeft: String = "phone.fill"
    
    // UserDefaults for optional button middle (4th row) with default values
    @AppStorage("SecondRowTitleMiddle") var secondRowTitleMiddle: String = ""
    @AppStorage("SecondRowSubtitleMiddle") var secondRowSubtitleMiddle: String = ""
    @AppStorage("SecondRowTypeMiddle") var secondRowTypeMiddle: String = ""
    @AppStorage("SecondRowLinkMiddle") var secondRowLinkMiddle: String = "URL"
    @AppStorage("SecondRowSymbolMiddle") var secondRowSymbolMiddle: String = " "
    
    // UserDefaults for button right (4th row) with default values
    @AppStorage("SecondRowTitleRight") var secondRowTitleRight: String = "Anchorage RSS Feed"
    @AppStorage("SecondRowSubtitleRight") var secondRowSubtitleRight: String = ""
    @AppStorage("SecondRowTypeRight") var secondRowTypeRight: String = "URL"
    @AppStorage("SecondRowLinkRight") var secondRowLinkRight: String =  "https://www.asdk12.org/Page/18624"
    @AppStorage("SecondRowSymbolRight") var secondRowSymbolRight: String = "waveform.path"
 
    // MARK: - Non MDM preferences
    
    // Boolean to hide the welcome screen after the first time. Should not be managed using MDM.
    @AppStorage("HasSeenWelcomeScreen") var hasSeenWelcomeScreen = false
    
}
 

