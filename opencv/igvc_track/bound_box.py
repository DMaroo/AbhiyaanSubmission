#!/usr/bin/python3
# shebang

import cv2 # import the opencv package

track = cv2.imread('abhiyaan_opencv_qn1.png') # read the track image
hsv_track = cv2.cvtColor(track, cv2.COLOR_BGR2HSV) # convert the image to hsv for histogram backprojection

obstacle = cv2.imread('abhiyaan_opencv_qn1_obstacle.png') # read the obstacle file
hsv_obstacle = cv2.cvtColor(obstacle, cv2.COLOR_BGR2HSV) # again, convert to hsv

hist_obstacle = cv2.calcHist([hsv_obstacle], [0, 2], None, [30, 256], [0, 30, 0, 256]) # calculate the histogram for obstacle, find the best values by experimentation
cv2.normalize(hist_obstacle, hist_obstacle, 0, 255, cv2.NORM_MINMAX) # normalize the histogram

back_p = cv2.calcBackProject([hsv_track], [0, 1], hist_obstacle, [0, 30, 0, 256], 1) # apply backprojection

convol = cv2.getStructuringElement(cv2.MORPH_DILATE, (9, 9)) # get a structuring element, in this case, MORPH_DILATE does the job better than other alternatives

cv2.filter2D(back_p, -1, convol, back_p) # convolute the backprojection

_1, thresh = cv2.threshold(back_p, 70, 150, 0) # set and apply the threshold, find the appropriate threshold by experimentation

merged = cv2.merge((thresh, thresh, thresh))  # merge the threshold matrices three times (equal to the number of channels)

final = cv2.bitwise_and(track, merged) # apply a bitwise AND operation between the original track and the merged image to obtain isolate the obstacles

final = cv2.GaussianBlur(final, (1, 1), 0) # apply a Gaussian blur to join the segments in a single obstacle, which would otherwise be interpreted as distinct obstacles; find the best values by experimentation

final = cv2.cvtColor(final, cv2.COLOR_BGR2GRAY) # convert the obtained image to GRAY, so as to find countours

conts = cv2.findContours(final.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[-2] # find all the countours and store them in conts

for c in conts: # loop through all the contours
    if cv2.contourArea(c) > 100: # if the countour are is large enough (used to avoid tiny bits of noise getting included)
        (x, y, w, h) = cv2.boundingRect(c) # find the bounding rectangle
        cv2.rectangle(track, (x, y), (x + w, y + h), (255, 0, 0), 2) # draw the rectangle onto the original track image

cv2.imshow('Bounded', track) # show the modified track image

cv2.waitKey(0) # wait for user to press `ESC`
cv2.destroyAllWindows() # subsequently destroy all open windows