//
//  OnboardingModel.swift
//  Better
//
//  Created by Bengoudifa Oussama on 24/4/2023.
//

import Foundation

struct OnboardingModel{
    let activeStep : Int
    
    var title : String{
        switch activeStep{
        case 1 : return "Books in 15 minutes"
        case 2:
            return "Read, listen and\nwatch anywhere"
        case 3:
            return "Personal reading\nplan"
        case 4:
            return "Choose the correct\nanswer"
        default:
            return ""
        }
    }
    
    var description : String{
        switch activeStep{
        case 1 : return "We read the best books, highlight key ideas and insights, create summaries and visual narratives for you"
        case 2:
            return "You can read, listen & watch at the same time without the internet connection"
        case 3:
            return "Set your reading goals & accept a personalized challenge"
        case 4:
            return "Get selected and improve"
        default:
            return ""
        }
    }
}

