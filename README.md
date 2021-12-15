# MatildaMorton_Fitnessplan

# Purpose
BodyFit is a application that supports people to achieve thier health and fitness goals by providing customised plans that take into consideration thier goals, whether that be to loose weight, gain muscle or increase energy. It also considers thier current Body Mass Index, thier gender and thier current fitness levels. This application support a user inputting thier details and provides a fully customised plan based on thier input.




# Scope
So many fitness planners, don't take into consideration a persons individual needs. This application provides a truley customised solution. As an assessment, the scope of this application is quite small; however given the opportunity, I would like to see more functionality that also considers dietary requirement and disabilites. 

The target audience for this application is both female and male users, in the younger generation, particularly Gen Z. This particular genertion values personilised products more than any other generation and are also more health concious. The branding and overall marketing of the product is aimed at Gen Z. The relata ble wording and tone fo the messaging throughtout further supports this target audience reach.  




# Features
 - Calculate Body Mass Index
 - Custom goal selection
 - Custom plan based on goal, BMI and gender and 
 - User inputs email and thier plan is sent to them
 - Enter email address and have a tips sheet sent to thier email (as a side note, this feature could also be used to collect user data and add to a mailing list ect.)

# User interaction
An end user will be able to load the program with the assumption that they have standard required technical tools and interact with it step by step. A user can then follow clearly the prpmpts to enter thier details and they will be given a final report designed just for them.


# what is the assessor looking for here?
Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user

# Feature Diagram
Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.


# Project Management (Trello)
https://trello.com/b/Qp1PHQ80/terminal-application 


Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan

> Your checklists for each feature should have at least 5 items.



# Help
Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

Gem Rmagick - If you incur the error, use the below code as a fix  - 

"An error occurred while installing rmagick (2.15.0), and Bundler cannot continue." 

Fix
brew unlink imagemagick     
brew install imagemagick@6 && brew link imagemagick@6 --force


# Issues loading image (homebrew required)

brew uninstall imagemagick
gem uninstall rmagick
bundle add json
brew install libmagick9-dev
bundle install