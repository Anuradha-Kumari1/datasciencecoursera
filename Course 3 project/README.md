---
title: "README"
author: "Anuradha"
date: "July 16, 2018"
output: html_document
---

## Getting and CLeaning data project
The raw data included readings from accelerometer and gyroscope recorded by Samsung Galaxy S smartphone. The aim of the project was to create a tidy summary file using this raw data. 

The repository consists of the following files. 
1. README.md - Overview of the dataset setting the context of the project
2. CodeBook.md - Describing the contents of the dataset and details the different transformations performed on the raw data
3. tidy.txt - Output file based on the ask in the question
4. run_analysis.R - The R script used to create the tidy.txt file

### Process followed
1. Reading the data for both train and test sets
2. Read the activity and feature labels
3. Assign feature names from the feature file to different columns in value tables 
4. Merge train and data sets into a combined set
5. Extract only mean and standard deviation information
6. Convert the activity_ID numbers to activity names using the activity table
7. Clean the column names to be more descriptive
8. create a summary table to show the average of each of the features grouped by subject_ID and activity_ID
9. Write this summary table into tidy.txt file
