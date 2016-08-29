LICENSE 
Copyright 2008 Ben Nadel, Raymond Camden

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
		http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

Last Updated: September 11, 2008 (rkc)
Daniel Budde II added tiffExtract, tiffMerge, and updated tiffSplit

Last Updated: May 12, 2008 (rkc)
Emmet McGovern added OpacityBlend. 

Last Updated: April 11, 2008 (rkc)
Added isMultiTiff, isTiff, tiffPageCount, tiffSplit, tiffToPDF - all by Daniel Budde II
Added a new images folder to store out demo images and results.

Last Updated: February 27, 2008 (bjn)
Added ColorsAreEqual()
Added NormalizeColor()
Added TrimCanvas()
Added TrimCanvasSide()

I am trying to make consistent the way colors are used. Now, all colors are exepcted to be recieved in the form that NormalizeColor() will return. NormalizeColor() will take a HED, R,G,B[,A] list or R,G,B,A Struct and return a normalized color struct. Now, all functions can handle colors in a predictable way.

Last Updated: February 21, 2008 (rkc)
Added aspectcrop() - credit goes to Emmet McGovern
	
Last Updated: February 21, 2008 (bjn)
Added ReflectImage()
	
Last Updated: February 20, 2008 (bjn)
Added CreateGradient()
Added DrawGradientRect()
   
Last Updated: February 19, 2008 (bjn)
Added CalculateGradient()
Added HexToRGB()
   
Last Updated: February 18, 2008 (rkc)
Added getCenteredTextPosition

Last Updated: February 17, 2008 (bjn)
Added two functions for accessing the RGBA data for a given pixel or an area of pixels. Uses the Raster object of the underlying buffered image. I am not too savvy with the whole Java AWT package, so there might be some bad practices in there. However, I think these could be really useful for certain types of other utitliy functions which I have some ideas for later.
   
Last Updated: February 14, 2008 (rkc)
Updated makeShadow to not duplicate the initial image and instead make an RGB image. This dramatically improved the speed - but I'm concerned about this
change. I think I had used duplicate before so as to exactly match the color model. Please test and see.

Also note I added a demos folder with a sample file for makeshadow.

Last Updated: February 7, 2008
Initial checkins
   