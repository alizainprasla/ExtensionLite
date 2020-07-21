import UIKit

public extension Date {
    
    static func dateShortTime( date:Date) -> String {
        return DateFormatter.localizedString(from: date, dateStyle: .none, timeStyle: .short)
    }

    static func dateFormat( date:Date ) -> String {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy"
        return dateFormatter.string(from: date)

    }

    static func dateFormat( date:String ) -> Date {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy"
        return dateFormatter.date(from: date)!

    }

    static func UTCToLocal(date:String) -> String {
        let dateFormator = DateFormatter()
        dateFormator.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormator.timeZone = TimeZone(abbreviation: "UTC")

        let dt = dateFormator.date(from: date)
        dateFormator.timeZone = TimeZone.current
        dateFormator.dateFormat = "h:mm a"
        // dateFormator.dateFormat = "d MMM, h:mm a"

        return dateFormator.string(from: dt!)
    }

    static func getTimeByHour(hour:String)-> Date {
        var now = Date()
        var nowComponents = DateComponents()
        let calendar = Calendar.current
        nowComponents.year = Calendar.current.component(.year, from: now)
        nowComponents.month = Calendar.current.component(.month, from: now)
        nowComponents.day = Calendar.current.component(.day, from: now)
        nowComponents.hour = Int(hour)!
        nowComponents.minute = Calendar.current.component(.minute, from: now)
        nowComponents.second = Calendar.current.component(.second, from: now)
        nowComponents.timeZone = TimeZone(abbreviation: "GMT")!


        now = calendar.date(from: nowComponents)!
        return now as Date
    }

    static func getTimeByDay(day:Int, date:Date)-> Date {

        var now = date
        let calendar = Calendar.current

        var nowComponents = DateComponents()
        nowComponents.year = Calendar.current.component(.year, from: now)
        nowComponents.month = Calendar.current.component(.month, from: now)
        nowComponents.day = Calendar.current.component(.day, from: now)
        nowComponents.hour = Calendar.current.component(.hour, from: now)
        nowComponents.minute = Calendar.current.component(.minute, from: now)
        nowComponents.second = Calendar.current.component(.second, from: now)

        nowComponents.day = day
        now = calendar.date(from: nowComponents)!

        return now
    }

    static func getDateFormat(by date:Date, format:String) -> String {

        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        formatter.locale = Locale.current
        return formatter.string(from: date)

    }
    
    static func getCurrentDateString(by date:Date, format:String) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(abbreviation: "GMT+5:00") // PST is GMT+5
        formatter.locale = Locale.current
        return formatter.string(from: date)
        
    }
    
    static func getDateFormatCurrentTimeZone(by date:Date, format:String) -> String {

        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone.current
        formatter.locale = Locale.current
        return formatter.string(from: date)

    }

    static func getDate(date:String , format:String) -> Date {

        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        let newDate = formatter.date(from: date)

        return newDate ?? Date()
    }
    
}
