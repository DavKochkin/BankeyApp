# BankeyApp

### Description
The project is an example of a banking application with test data.


# Technologies used

+ UIKit
+ Architecture MVC + MVVM
+ Implementation programmatically + xib (no storyboard)
+ AutoLayout
+ Work with Network - URLSession
+ Saving user actions - UserDefaults
+ GCD (DispatchQueue.main, DispatchGroup)
+ UITableView, UITabBarController, UIPageViewController
+ Delegate pattern, NotificationCenter
+ UIViewPropertyAnimator, CAKeyFrameAnimation, CGAffineTransform, CABasicAnimation, CAAnimationGroup
+ XCTest


<img width="428" alt="LoginView" src="https://github.com/DavKochkin/DavKochkin/assets/122441539/0cca99c8-1e98-4935-9893-0940bf7a9da4">
<img width="428" alt="AccountView" src="https://github.com/DavKochkin/DavKochkin/assets/122441539/4003715e-dc90-4ac7-9e43-1c3900a0653b"> 

# LoginView 

### Features 

+ Animation of titles when they appear
+ The ability to show the text of the entered password
+ Animation of the login button when pressed with empty fields or incorrect data
+ If the fields are empty or incorrect data is entered, the corresponding messages are displayed
+ After the first login to the application, an OnboardingView will appear with additional information about the application
+ The next time you log in to the application, the main screen will immediately appear

![AnimationLogin](https://github.com/DavKochkin/DavKochkin/assets/122441539/36670a1b-73e1-4738-974e-b89d375e6ca0)
![Incorrect2](https://github.com/DavKochkin/DavKochkin/assets/122441539/87f692ab-896c-48f8-a593-a8e86e803177)
![ShowPassword1](https://github.com/DavKochkin/DavKochkin/assets/122441539/ca43816a-5e6c-41c7-a01a-e6aab3658adf)
![UsernameBlank](https://github.com/DavKochkin/DavKochkin/assets/122441539/4cece444-73d9-4b58-8ce2-87a431ca0809)


# OnboardingView 

## Description

The screen is a container with additional information that appears when the application is first launched.

### Features 

To implement Onboarding, a reusable ContainerViewController class has been created, in which you can substitute the desired image and description when creating an instance of this class. The "container" itself is implemented in the OnboardingContainerViewController class using UIPageViewController, to which 3 instances of the ContainerViewController class have been added.
https://github.com/DavKochkin/BankeyApp/blob/master/Bankey/Onboarding/OnboardingContainerViewController.swift/README.md?plain=1.

Navigation is carried out in 2 ways:

The dotted menu at the bottom
Swipe across the screen

You can close and get to the main screen using the close button or the done button on the last Onboarding screen.

![Onboarding](https://github.com/DavKochkin/DavKochkin/assets/122441539/6c01234e-75ee-42d5-a975-d20722e599a2)



