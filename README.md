# Bankey 

### Description 
The project is an example of a banking application with test data.

___

## Technologies used

* UIKit
* Architecture MVC + MVVM
* Implementation programmatically + xib (no storyboard)
* AutoLayout
* Working with network - URLSession
* Saving user actions - UserDefaults
* GCD (DispatchQueue.main, DispatchGroup)
* UITableView, UITabBarController, UIPageViewController
* Delegate pattern, NotificationCenter
* UIViewPropertyAnimator, CAKeyFrameAnimation, CGAffineTransform, CABasicAnimation, CAAnimationGroup
* XCTest



## Bankey 

<img src="https://github.com/DavKochkin/BankeyApp/blob/master/LoginView.png" width="350" height="700"> <img src="https://github.com/DavKochkin/BankeyApp/blob/master/AccountView.png" width="350" height="700">


## LoginView 

### Features

* Animation of titles when they appear.
* The ability to display the text of the entered password.
* Animation of the login button when pressed with empty fields or incorrect data.
* If the fields are empty or incorrect data is entered, the corresponding messages are displayed.
* After the first login to the application, an OnboardingView will appear with additional information about the application.
* The next time you log in to the application, the main screen will immediately appear.

![AnimationLogin](https://github.com/DavKochkin/BankeyApp/assets/122441539/b7b18bd3-224c-4168-8bc9-c678d0260b21) ![UsernameBlank](https://github.com/DavKochkin/BankeyApp/assets/122441539/9ea684b5-dcb8-437b-b6ef-f94cbcccfc66) ![Incorrect2](https://github.com/DavKochkin/BankeyApp/assets/122441539/288d2e3c-ecb2-4273-8145-684e44e5c62f) ![ShowPassword1](https://github.com/DavKochkin/BankeyApp/assets/122441539/72be525e-d2ed-4e6b-94a6-1d5b71ce6c03) 

## Onboarding 

### Description 

The screen is a container with additional information that appears when the application is first launched.

### Features

To implement the adaptation, a reusable Container View Controller class was created, in which you can substitute the desired image and description when creating an instance of this class. The "container" itself is implemented in the built-in Container View Controller class using UIPageViewController, to which 3 instances of the ContainerViewController class have been added.

Navigation is carried out in 2 ways:

The dotted menu at the bottom.
Swipe across the screen.

You can close and get to the main screen using the close button or the done button on the last Onboarding screen.

![Onboarding](https://github.com/DavKochkin/BankeyApp/assets/122441539/2c06e90a-70c3-475b-97de-6a846ad289c7)


## AccountSummary

### Description 

The first screen from the tabBarList __[MainViewController](https://github.com/DavKochkin/BankeyApp/blob/e6fea6704f43577a3caedb479bcb7d22b40cbd05/Bankey/MainViewController.swift)__. It is an __[AccountSummaryViewController](https://github.com/DavKochkin/BankeyApp/blob/1395b83b5cd51542ac712e1699ee010c6543db02/Bankey/AccountSummary/AccountSummaryViewController.swift)__ table, which contains information about the customer's accounts on his bank account. Account data comes from the network.

### Features

### TableViewCell, tableHeaderView

In order to make the table more informative, 2 custom elements for the header and the table cell are implemented:

__[AccountSummaryHeaderView](https://github.com/DavKochkin/BankeyApp/blob/74c8fb89df522c08c025f4be2b6d2d407c368040/Bankey/AccountSummary/Header/AccountSummaryHeaderView.swift)__ - The table header is implemented using a xib file.
AccountSummaryCell - the table cell is implemented programmatically.
These classes have additional representations (ViewModel), in which models are created with data for display, which are placed in the corresponding class, relieving it of unnecessary responsibility.

