
# BMI Calculator - iOS Application

## Project Overview

The BMI Calculator is an iOS application designed to calculate the Body Mass Index (BMI) based on user inputs like height and weight. The app provides instant feedback and categorizes BMI results (e.g., underweight, normal, overweight) to help users better understand their health status. This project was developed as part of a learning journey in iOS development using Swift and UIKit.

## Key Features

- **Simple BMI Calculation**: Computes BMI based on user-provided height and weight.
- **Categorized Feedback**: Provides health status feedback based on BMI range.
- **Interactive UI**: User-friendly interface with intuitive input sliders and buttons.
- **Learning-Focused**: Built to enhance Swift and iOS development skills, with a focus on UI design and interaction.

<h3>BMI Calculator</h3><img src="https://github.com/MalingaBandara/BMI-ios/blob/main/Readme%20items/Bmi.gif" width="25%" />
<h2>Screens</h2><img src="https://github.com/MalingaBandara/BMI-ios/blob/main/Readme%20items/screen1.png" width="25%" /> 
<img src="https://github.com/MalingaBandara/BMI-ios/blob/main/Readme%20items/screen2.png" width="25%" /> 


## Technologies Used

- **Swift**
- **UIKit**
- **MVC Architecture**
- **Xcode for Development**

## Project Structure and Code Explanation

1. **BMI Calculation Logic**:
   - The core logic for BMI calculation and result categorization.
   ```swift
   struct BMI {
       let value: Float
       let advice: String
       let color: UIColor
   }
   ```

2. **User Interface**:
   - Utilizes UIKit components like sliders and labels to create an interactive experience.
   ```swift
   @IBOutlet weak var heightSlider: UISlider!
   @IBOutlet weak var weightSlider: UISlider!
   ```

3. **Result Display**:
   - Displays the calculated BMI value and corresponding health advice.
   ```swift
   @IBAction func calculatePressed(_ sender: UIButton) {
       let bmiValue = bmiCalculator.calculateBMI(height: height, weight: weight)
       // Display result
   }
   ```

## Committing Strategy and Learning Insights

The repository follows a commit strategy focused on learning iOS development:
- **Initial Setup Commits**: Includes setting up the project, configuring UI elements, and integrating the BMI calculation logic.
- **Feature Implementation Commits**: Each commit adds new features, such as sliders, BMI calculation, and result display.
- **UI Enhancements and Bug Fixes**: Commits focus on refining the user interface and fixing any issues encountered during development.
- **Documentation and Commenting**: Commits provide detailed code comments and enhance the readability of the codebase.

These commit practices reflect the learning curve and gradual progress in iOS development.

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/MalingaBandara/BMI-ios.git
   ```
2. Open the project in Xcode.
3. Run the app on an iOS simulator or a connected device.

## Purpose and Future Enhancements

The BMI Calculator project was developed to practice Swift and UIKit, focusing on creating simple, interactive applications. Future enhancements could include adding more health metrics, integrating animations, and improving the UI with more modern design patterns.
