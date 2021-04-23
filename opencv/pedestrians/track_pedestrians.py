#!/usr/bin/python3
# shebang

import cv2 # import the opencv package

capture = cv2.VideoCapture('pedestrians.mp4') # store the video captures in `capture`

valid = True
# initialize valid capture as True

while valid: # while the capture is valid
    valid, frame = capture.read() # read from the capture and assign the current image frame to `frame`

    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY) # convert the frame to GRAY (grayscale) to use haarcascades

    pedestrian = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_fullbody.xml').detectMultiScale(gray_frame, scaleFactor = 1.1)
    # create a list of rectangles bounding the pedestrians, by using `haarcascade_fullbody.xml` to detect the bodies of the pedestrians

    for (x, y, w, h) in pedestrian: # for all the rectangles in `pedestrian`
        cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 0, 255), 2) # draw a rectangle on the original frame

    cv2.imshow("Video", frame) # show the frame
    
    if cv2.waitKey(100) == 27: # wait for the `ESC` key from the user
        break # if the user pressed `ESC`, then break out of the while loop

cv2.destroyAllWindows() # destroy all the open windows
capture.release() # "release" the capture, equivalent to calling a destructor in C++