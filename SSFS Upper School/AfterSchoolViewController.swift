//
//  AfterSchoolViewController.swift
//  SSFS Upper School
//
//  Created by james on 4/12/17.
//  Copyright © 2017 james. All rights reserved.
//

import UIKit

class AfterSchoolViewController: UIViewController {
    let afterSchool = AfterS()
    override func viewDidLoad() {
        super.viewDidLoad()
        let activities = afterSchool.getGames(dayOfWeek: getCurrentDay()!)
        print(activities)
        // Do any additional setup after loading the view. The "let activities" sends the date to the getGames function in my after school file, and then runs it in this file.
    }
    func getCurrentDay()->Int?{
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let day = components.day
        
        return day
        // code from http://stackoverflow.com/questions/28861091/getting-the-current-day-of-the-week-in-swift . This code gets the day of the current date as an integer (Unlike code in menu view controller, this returns the date instead of the day of week).
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
