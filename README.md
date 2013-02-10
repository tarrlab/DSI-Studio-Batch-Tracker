# Batch Tracking GUI - for DSI Studio & Matlab

## Overview

This GUI for Matlab automates batch fiber tracking in DSI Studio. The GUI offers three ways to track between ROIs:

* ROI Pairs: track between pre-defined pairs of ROI files (the user selects each pair manually in the GUI)
* Primary ROI: track between one primary ROI file, and all other ROI files that the user selects
* All ROI Combinations: track between all possible combinations of ROI files

## Installation

1. Clone repository and move to desired destination
2. Optional: add directory to Matlab path for easy access

## Use

Call "BatchFiberTrackingGUI" from the Matlab command line. A window will open with three radio buttons; Select the tracking method you would like to use (described above under "Purpose"), and click OK. A new GUI window will open. Provide reference files/parameters for each of the fields in the GUI, then click Start Tracking. A text file will be generated and it will record the information (files used, time tracking started, time tracking ended, etc.) for each item performed. That is, if tracking is performed between 5 pairs of ROI files, 5 text files will be generated.

## Modifying the GUI & Scripts

There are four .m script files that the GUI uses - one for the opening selection of radio buttons, and one for each of the different tracking methods:

1. BatchFiberTrackingGUI.m
2. roi_pairs.m
3. primary_roi.m
4. roi_combinations.m

Each of these scripts has a corresponding .fig file of the same name. The .fig files are the GUI files for each script, and they can be edited using guide (see below).

NOTE: There is a directory named "extra_files" in the directory that contains scripts 2-4 above. Do not delete this directory, it is used to store saved parameters if the user chooses to do so at any time.

###Using Guide: Tips for Getting Started Quickly

This GUI was created using [Guide](http://www.mathworks.com/discovery/matlab-gui.html). For those who have never used guide, here are some tips for getting started quickly in the context of editing the DSI Batch Tracking GUI:

1. To edit the GUI for any given tracking method, type "guide" at the Matlab prompt, select the "Open Existing Gui" tab, and choose one of the .fig files to open (as mentioned above, each tracking method has a corresponding .fig file and .m file).
2. To modify what happens when a particular button is clicked, double-click the button to show the inspector. In the inspector next to Callback, click the pencil and paper icon on the left, cicled in red in the screenshot below:

![screenshot](https://raw.github.com/tarrlab/DSI-Studio-Batch-Tracker/master/screenshots/callback.png)

 This will automatically open the correpsonding .m file for the GUI, and take you directly to the function that controls what happens when that button is clicked. In this example (for the DSI Studio button) the .m file will open and the corresponding function will be highlighted as shown below:

![screenshot2](https://raw.github.com/tarrlab/DSI-Studio-Batch-Tracker/master/screenshots/callback_autoselected_.png)


3. In the example above, the function name, "pushbutton_dsi_studio" was not random - the name of the function can be set and changed in the Tag property using the Inspector. Here is a screenshot showing the tag for the DSI Studio button:

![screenshot2](https://raw.github.com/tarrlab/DSI-Studio-Batch-Tracker/master/screenshots/tag.png)

####Recommended Tutorials

There are many online resources available for those who have never used Guide, and wish to customize the GUI with more advanced features. I highly recommend the series of video tutorials by Doug Hull, particularly the [Guide Basics Tutorial](http://blogs.mathworks.com/videos/2013/02/06/introduction-to-gui-building-with-guide-in-matlab/), [Handles and Other Inputs to Guide Callbacks](http://blogs.mathworks.com/pick/2008/04/17/advanced-matlab-handles-and-other-inputs-to-guide-callbacks/), and [Guide Advanced Techniques](http://www.mathworks.com/matlabcentral/fileexchange/8616-video-guide-advanced-techniques).