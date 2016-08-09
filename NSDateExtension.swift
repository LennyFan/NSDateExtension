//
//  NSDateExtension.swift
//  CalFinalTest
//
//  Created by Lenny on 6/28/16.
//  Copyright © 2016 Grapefrut. All rights reserved.
//

import Foundation
import EventKit

extension NSDate {
    
    func xYears(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Year, value: x, toDate: date, options: NSCalendarOptions.WrapComponents)! }
    func xQuarters(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Quarter, value: x, toDate: date, options: NSCalendarOptions())! }
    func xMonths(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Month, value: x, toDate: date, options: NSCalendarOptions())! }
    func xWeeks(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Weekday, value: x, toDate: date, options: NSCalendarOptions())! }
    func xDays(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: x, toDate: date, options: NSCalendarOptions())! }
    func xHours(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Hour, value: x, toDate: date, options: NSCalendarOptions())! }
    func xMinutess(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Minute, value: x, toDate: date, options: NSCalendarOptions())! }
    func xSeconds(date: NSDate,x:Int) -> NSDate
    { return NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Second, value: x, toDate: date, options: NSCalendarOptions())! }
    
    func dateToString(date:NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        //dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        return dateFormatter.stringFromDate(date)
    }
    func GetDateTime(date:NSDate) -> String{
        let calendar = NSCalendar.currentCalendar()
        let comp = calendar.components([.Hour, .Minute], fromDate: date)
        return "\(NSString(format: "%02d", comp.hour)):\(NSString(format: "%02d", comp.minute))"
    }
    
    func convertUtcToSeconds(utcString: AnyObject) -> Double? {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
        let convertedDate = dateFormatter.dateFromString(utcString as! String)
        let seconds = convertedDate?.timeIntervalSince1970
        
        return seconds
    }
    
    func convertUtcToNSDate(utcString: String) -> NSDate? {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        let convertedDate = dateFormatter.dateFromString(utcString)
        return convertedDate
    }
    
    func dateLongStyle(date: NSDate) -> String {
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.LongStyle
        formatter.timeStyle = .ShortStyle
        let dateString = formatter.stringFromDate(date)
        return dateString
    }
    
    func presentHour(date: NSDate) -> String {
        let formatter = NSDateFormatter()
        formatter.timeStyle = .ShortStyle
        let dateString = formatter.stringFromDate(date)
        return dateString
    }
    
    func presentDay(date: NSDate) -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE, MMM dd"
        let dateString = formatter.stringFromDate(date)
        return dateString
    }
    
    func convertNSDateToSeconds(date: NSDate) -> Double {
        let seconds = date.timeIntervalSince1970
        return seconds
    }

}

