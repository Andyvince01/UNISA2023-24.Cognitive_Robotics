# 🤖 Cognitive Robotics Final Project

$\textsf{{\color[rgb]{0.0, 0.0, 1.0}A}{\color[rgb]{0.1, 0.0, 0.9}b}{\color[rgb]{0.2, 0.0, 0.8}s}{\color[rgb]{0.3, 0.0, 0.7}t}{\color[rgb]{0.4, 0.0, 0.6}r}{\color[rgb]{0.5, 0.0, 0.5}a}{\color[rgb]{0.6, 0.0, 0.4}c}{\color[rgb]{0.7, 0.0, 0.3}t}}$: This project introduces an AI-assisted robotic system, designed for shopping malls, with **Pepper** at its core acting as a guardian and interactive assistant. Pepper relies on a connected camera and video analytic system for detecting people and recognizing their attributes, such as gender, clothing color, and accessories. However, it does not process this data; instead, it accesses the information from a database. This allows Pepper to interact with visitors through spoken language, enhancing customer experience by serving as an interactive interface to the mall's sophisticated data processing system.

## 🗺️ ROS Based Architecture
![Ros Architecture](https://github.com/Andyvince01/Cognitive_Robotics/blob/ecbea912f3bbbe88a5ecf95cbf2d2a2ef587e3ed/ROS%20Architecture.jpg)
*Design of the ROS-based architecture behind Pepper's operation as a the robotic guardian of the shopping mall.*

## 🛠 Testing
This test allows testing the functionality of all implemented modules and, consequently, the overall behavior of Pepper, which is implemented by the `behavioral_manager.py` class. To execute this test, you should launch the **`all.xml`**, as shown below. It is also possible to test the complete behavior without Pepper. In this case, Pepper modules - namely `wakeup_rest_node.py`, `tablet_node.py`, `text2speech_node.py`, and `animation_node.py` - will not be executed as `pepper_on=False`. Specifically, the person and face detectors are executed. If a person is detected by the PC camera, the voice detection service is enabled, and its output is passed to the ASR module. The transcribed text is then passed to the chatbot, which generates a response.

### Pepper On
```bash
roslaunch features all.xml
```

### Pepper Off
```
roslaunch features all.xml pepper_on:=False pepper_camera_on:=False mic_index:=None
```

### Description
In particular, the test, of which you can see an example application in the video, consists of the following phases:

1. **New People enters the scene**: Initially, there is no one in front of Pepper. When a person enters the scene, and Pepper successfully detects the person and their face. Then, Pepper greets the person with a welcoming gesture and says, "Hello there!".
2. **Greetings** : The person greets Pepper, and Pepper responds with another greeting gesture while uttering a welcoming phrase. In the greeting, Pepper introduces itself as the robotic guardian of the shopping mall and asks how it can assist the person. Subsequently, the person inquires about Pepper's capabilities, and Pepper responds by explaining that it can conduct people searches based on specific attributes.
3. **Count People Task**: In the case of the video in question, the following types of questions are asked for the intent `count_people`, all with positive results:
   - **Count People without Stop**: The first case concerns the sequential execution of several count questions, adding or modifying previously set attributes.
   - **Count People with Stop**: The second case concerns the execution of two count questions interspersed with a `stop` intent, which causes the slots set in the previous question to be reset.
   - **Fully Count People Sentence**: The third case concerns the execution of one count request covering all slot types.
4. **Find Person Task**: In the case of the video in question, the following types of questions are asked for the intent `find_someone`, all with positive results:
   - **Find Person by filling the form dynamically**: The first case concerns filling the form dynamically, where Pepper asks the user to fill in the empty slots in order to facilitate the search for the person.
   - **Find Person by filling in the form in one go**: The second case concerns the case where the user provides Pepper with all the attributes it needs, filling in all the necessary slots.
   - **Find Person with changing attributes**: The third case concerns the case where the user changes a previously imposed attribute before submitting the form.
   - **Find Person with stop intent**: The fourth case concerns the case where the user finds the person they are looking for (e.g. the person contacts the user by phone). In this case, all slots are reset. The same procedure occurs in the case where the intent is `goodbye`.
   - **Find Person with `count_people}` intent}**: The fifth case concerns the case where the user requests a count operation while the form is active. In this case, all slots are reset and the count operation is performed.
	\end{enumerate}
5. **Goodbye**: The person says goodbye to Pepper, who promptly bids him farewell with a farewell gesture and message.

### Other Test
The report.pdf explains how to test the individual modules implemented.
