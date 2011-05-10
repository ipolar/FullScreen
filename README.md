# FullScreen AS3

An AS3 class for making your flash movie fullscreen.


## Requirements

1) This adds a button to the stage from the library. This needs a class name of 'fullscreenButton'.


## Usage

Very simple, import the class;

import com.ipolar.fullscreen.FullScreen;


Create a new variable, object and add it to the stage;

private var fsButton:FullScreen;
fsButton = new FullScreen();
addChild(fsButton);


This will add a new button to the stage (see the requirements above). This button will then toggle the fullscreen on and off.