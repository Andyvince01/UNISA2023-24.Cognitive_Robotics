from datetime import timedelta
import cv2
import numpy as np
import os
import tqdm
import glob

# i.e if video of duration 30 seconds, saves 10 frame per second = 300 frames saved in total
SAVING_FRAMES_PER_SECOND = 1
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
VIDEOS_LIST = [path for path in os.listdir(SCRIPT_DIR) if path.endswith(".mp4")]
FRAMES_LIST = [dir_video for dir_video in glob.glob(os.path.join(SCRIPT_DIR, "*", "**"))]
FRAMES_LIST = sorted(FRAMES_LIST)

def fps_from_video(video):
    '''
    Retrieves the frames per second (FPS) value from a video.
    Returns the FPS value if it is less than 10, otherwise returns 10.
    '''
    cap = cv2.VideoCapture(video)
    fps = cap.get(cv2.CAP_PROP_FPS)
    cap.release()
    return fps if fps < 10 else 10

def extract_frames():
   '''
   The function takes several parameters:
      - `videos_path`: The path to the directory containing video files.
      - `frames_path`: The path where extracted frames will be saved.
      - `zip`: A boolean flag indicating whether to create a ZIP archive of the frames folder.
      - `url_drive`: The destination URL for the ZIP archive if `zip` is True.
      - `one_fps`: A boolean flag indicating whether to extract frames at a fixed rate of one frame per second.

   Depending on the `one_fps` flag, the code extracts frames from the video and saves them as JPEG images in the frames directory.
   '''
   # For all the videos
   
   for video in tqdm.tqdm(VIDEOS_LIST):
      video_path = os.path.join(SCRIPT_DIR, video)
      dir_video_path = os.path.join(SCRIPT_DIR, video.split(".")[0])
            
      try:
         os.makedirs(dir_video_path)
      except:
         pass
      
      fps = fps_from_video(video_path)
      print(fps)
      os.system("ffmpeg -i {} -r {}/1 {}/{}.jpg".format(video_path, fps, dir_video_path, "%05d"))

# extract_frames()
        
def create_annotation():
   for dir_video in VIDEOS_LIST:
      dir_video = dir_video.split(".")[0]
      dir_video += "_annotations.txt"
      
      dir_video = os.path.join(SCRIPT_DIR, dir_video)
      
      with open(dir_video, "w") as file:
         for video in FRAMES_LIST:
            if video.split("/")[-2] in dir_video:
               file.write(video + ",False,False\n")

create_annotation()