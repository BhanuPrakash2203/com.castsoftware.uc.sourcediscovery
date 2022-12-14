# Source Code Discovery Tool
The tool is used to do the Source Code Discovery before injecting it for CAST Analysis. This helps in
 * Unzipping the source code provided by customer
 * Cleaning up the source code
 * Provide the technologies info and calculating the amount of source code provided by customer in terms of LOC and number of files
 * Calculating the amount of SQL artifacts (Tables, Stored Procedures, Triggers, Views, Funtions) procided by customer and giving an idea if any duplicate artifacts are there.

## Installation
* No installation is required as the tool is in the form of an executable(.exe). 
* Download the latest release of the Source Discovery Tool from https://github.com/BhanuPrakash2203/com.castsoftware.uc.sourcediscovery/archive/refs/heads/main.zip

## Usage
The tool is designed to run on the command line using only one parameter, <Source Code Zip Path>.
 * Double click on SourceDiscovery.exe and it will ask for the source code zip path.
    <img width="507" alt="image" src="https://user-images.githubusercontent.com/40420165/198990336-82c5fb60-94a7-43c2-801a-c54537c88cfa.png">
 * Provide the source code path and press enter.

# Configuration file
The Source Discovery Tool is configured using a plain text file (properties.txt).  The file consits of only one parameter to set the output path of reports generated by the tool after execution.
  * <img width="262" alt="image" src="https://user-images.githubusercontent.com/40420165/199009459-7d05be33-0b26-4eb2-b028-f2a07a13c42d.png">

### Output
This tool generates several outputs based on the various tasks it perform during the execution:
  * Cleanup Source code - Generate output in .txt file having information about what all files and folders are been deleted during this task.
    <img width="625" alt="image" src="https://user-images.githubusercontent.com/40420165/198990848-bf445066-e003-4e01-b2b4-3f60c44e9326.png">
  * Cloc Ouput - Generates an output in the form of an excel file which consists of:
    * Summary of CLOC output before and after the Source Code cleanup.
       * <img width="446" alt="image" src="https://user-images.githubusercontent.com/40420165/198991087-81b9cbcc-262d-46b8-8021-ecbc8ead8b0b.png">
    * CLOC output specifying the Technology, Number of Files, Blanks, Comments, LOC (Lines of Code) and Applicable technologies for CAST analysis. 
       * <img width="286" alt="image" src="https://user-images.githubusercontent.com/40420165/198991213-538720f4-19d4-42ad-bc47-de316b161379.png">
  * SQl Discovery : Generates an output in the form of an excel file which consists of: 
    * Summary of SQL artifacts (Tables, Stored Procs, Views, Triggers, Functions) found in the .sql files delivered along with source code.
       <img width="155" alt="image" src="https://user-images.githubusercontent.com/40420165/198991502-754f9dde-9a61-4e10-ab61-c639e5c1bf40.png">
    * Sheet per SQL artifact having information about the Name of the artifacts, count and information if the table is duplicated
       <img width="401" alt="image" src="https://user-images.githubusercontent.com/40420165/198992109-ecc27504-9556-4f2c-86bb-43523ac7a45e.png">


