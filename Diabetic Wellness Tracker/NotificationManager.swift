//
//  NotificationManager.swift
//  Diabetic Wellness Tracker
//
//  Created by Jacob Croket on 9/14/24.
//

import Foundation
import UserNotifications

class NotificationManager {
    static let instance = NotificationManager()
    let remindersIdentifier: String = "dailyJournalReminders"
    let newsletterNotificationsIdentifier: String = "newsletterNotifications"
    
    init() {
        requestAuthorization()
        
        scheduleDailyJounralReminders()
        scheduleNewsletterUpdateNotifications()
        
        if !UserDefaults.standard.bool(forKey: kJournalReminderNotifications) {
            disableJournalReminders()
        }
        
        if !UserDefaults.standard.bool(forKey: kNewsletterUpdateNotifications) {
            disableNewsletterUpdateNotifications()
        }
    }
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (success, error) in
            if let error = error {
                debugPrint("error \(error)")
            }
        }
    }
    
    func scheduleDailyJounralReminders() {
        let content = UNMutableNotificationContent()
            content.title = "Grateful Diabetic"
            content.subtitle = "Don't forget to complete your daily journal!"
            content.sound = .default
            content.badge = 1
        
        var dateComponents: DateComponents
        if let storedDate = UserDefaults.standard.object(forKey: kJournalReminderTime) as? DateComponents {
            dateComponents = storedDate
        } else {
            dateComponents = DateComponents()
            dateComponents.hour = 19 // 7pm
            dateComponents.minute = 0
        }
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        let request = UNNotificationRequest(identifier: remindersIdentifier, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func scheduleNewsletterUpdateNotifications() {
        let content = UNMutableNotificationContent()
            content.title = "Grateful Diabetic"
            content.subtitle = "The weekly newsletter has been updated! Don't forget to read it."
            content.sound = .default
            content.badge = 1
        
        var dateComponents = DateComponents()
        dateComponents.hour = 9 //9 am
        dateComponents.weekday = 2
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        let request = UNNotificationRequest(identifier: newsletterNotificationsIdentifier, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func disableJournalReminders() {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [remindersIdentifier])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [remindersIdentifier])
    }
    
    func disableNewsletterUpdateNotifications() {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [newsletterNotificationsIdentifier])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [newsletterNotificationsIdentifier])
    }
}
