import pygame
import random
import datetime
from pygame import *


class GameManager:
    def __init__(self):
        # Define constants
        self.SCREEN_WIDTH = 800
        self.SCREEN_HEIGHT = 600
        self.FPS = 60
        self.MOLE_WIDTH = 90
        self.MOLE_HEIGHT = 81
        self.FONT_SIZE = 31
        self.FONT_TOP_MARGIN = 26
        self.LEVEL_SCORE_GAP = 4
        self.LEFT_MOUSE_BUTTON = 1
        self.SEED1 = [0,0,0,1,1,1,0,1,0,1,1,0,1,1,1,1]
        self.SEED2 = [1,0,0,1,1,0,1,0,0,0,1,0,1,0,1,1]
        self.GAME_TITLE = "Whack A Mole - Game Programming - Testing"
        # Initialize player's score, number of missed hits and level
        self.score = 0
        self.misses = 0
        self.countdown = 36
        # Initialize screen
        self.screen = pygame.display.set_mode((self.SCREEN_WIDTH, self.SCREEN_HEIGHT))
        pygame.display.set_caption(self.GAME_TITLE)
        self.background = pygame.image.load("images/bg.png")
        # Font object for displaying text
        self.font_obj = pygame.font.Font('./fonts/GROBOLD.ttf', self.FONT_SIZE)
        # Initialize the mole's sprite sheet
        # 6 different states
        sprite_sheet = pygame.image.load("images/mole.png")
        self.mole = []
        self.mole.append(sprite_sheet.subsurface(169, 0, 90, 81))
        self.mole.append(sprite_sheet.subsurface(309, 0, 90, 81))
        self.mole.append(sprite_sheet.subsurface(449, 0, 90, 81))
        self.mole.append(sprite_sheet.subsurface(575, 0, 116, 81))
        self.mole.append(sprite_sheet.subsurface(717, 0, 116, 81))
        self.mole.append(sprite_sheet.subsurface(853, 0, 116, 81))
        # 6 different states
        sprite_sheet = pygame.image.load("images/bad_mole.png")
        self.bad_mole = []
        self.bad_mole.append(sprite_sheet.subsurface(169, 0, 90, 81))
        self.bad_mole.append(sprite_sheet.subsurface(309, 0, 90, 81))
        self.bad_mole.append(sprite_sheet.subsurface(449, 0, 90, 81))
        self.bad_mole.append(sprite_sheet.subsurface(575, 0, 116, 81))
        self.bad_mole.append(sprite_sheet.subsurface(717, 0, 116, 81))
        self.bad_mole.append(sprite_sheet.subsurface(853, 0, 116, 81))
        # Positions of the holes in background
        self.hole_positions = []
        self.hole_positions.append((100, 100))
        self.hole_positions.append((266, 100))
        self.hole_positions.append((432, 100))
        self.hole_positions.append((600, 100))
        self.hole_positions.append((100, 200))
        self.hole_positions.append((266, 200))
        self.hole_positions.append((432, 200))
        self.hole_positions.append((600, 200))
        self.hole_positions.append((100, 300))
        self.hole_positions.append((266, 300))
        self.hole_positions.append((432, 300))
        self.hole_positions.append((600, 300))
        self.hole_positions.append((100, 400))
        self.hole_positions.append((266, 400))
        self.hole_positions.append((432, 400))
        self.hole_positions.append((600, 400))
        self.hole_positions.append((1000, 1000))
        
        # Init debugger
        self.debugger = Debugger("debug")
        # Sound effects
        self.soundEffect = SoundEffect()

    # Check whether the mouse click hit the mole or not
    def is_mole_hit(self, mouse_position, current_hole_position):
        mouse_x = mouse_position[0]
        mouse_y = mouse_position[1]
        current_hole_x = current_hole_position[0]
        current_hole_y = current_hole_position[1]
        if (mouse_x > current_hole_x) and (mouse_x < current_hole_x + self.MOLE_WIDTH) and (mouse_y > current_hole_y) and (mouse_y < current_hole_y + self.MOLE_HEIGHT):
            return True
        else:
            return False
    def getpos1(self):
        t = (self.SEED1[0]+self.SEED1[1]+self.SEED1[3]+self.SEED1[12])%2;
        for i in range(0,15):
            self.SEED1[i] = self.SEED1[i+1];
        self.SEED1[15] = t;
        pos = 0
        for i in range(0,4):
            pos *=2
            tmp = (self.SEED1[4*i]+self.SEED1[4*i+1]+self.SEED1[4*i+2]+self.SEED1[4*i+3])%2
            pos += tmp
        return pos
        
    def getpos2(self):
        t = (self.SEED2[0]+self.SEED2[1]+self.SEED2[3]+self.SEED2[12])%2;
        for i in range(0,15):
            self.SEED2[i] = self.SEED2[i+1];
        self.SEED2[15] = t;
        pos = 0
        for i in range(0,4):
            pos *=2
            tmp = (self.SEED2[4*i]+self.SEED2[4*i+1]+self.SEED2[4*i+2]+self.SEED2[4*i+3])%2
            pos += tmp
        return pos
        
    
    # Update the game states, re-calculate the player's score, misses, level
    def update(self):
        # Update the player's score
        current_score_string = "SCORE: " + str(self.score)
        score_text = self.font_obj.render(current_score_string, True, (255, 255, 255))
        score_text_pos = score_text.get_rect()
        score_text_pos.centerx = self.background.get_rect().centerx
        score_text_pos.centery = self.FONT_TOP_MARGIN
        self.screen.blit(score_text, score_text_pos)
        # Update the player's level
        current_time_string = "TIME: " + str(self.countdown)
        if self.countdown<0:
            current_time_string = "TIME: 0"
        time_text = self.font_obj.render(current_time_string, True, (255, 255, 255))
        time_text_pos = time_text.get_rect()
        time_text_pos.centerx = self.SCREEN_WIDTH / 5 * 1
        time_text_pos.centery = self.FONT_TOP_MARGIN
        self.screen.blit(time_text, time_text_pos)

    # Start the game's main loop
    # Contains some logic for handling animations, mole hit events, etc..
    def start(self):
        cycle_time = 0
        num = -1
        loop = True
        is_down = False
        interval = 0.1
        frame_num = 0
        left = 0
        t1 = datetime.datetime.now()
        t2 = datetime.datetime.now()
        # Time control variables
        clock = pygame.time.Clock()

        for i in range(len(self.mole)):
            self.mole[i].set_colorkey((0, 0, 0))
            self.mole[i] = self.mole[i].convert_alpha()

        while loop:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    loop = False
                if event.type == MOUSEBUTTONDOWN and event.button == self.LEFT_MOUSE_BUTTON:
                    self.soundEffect.playFire()
                    if self.is_mole_hit(mouse.get_pos(), self.hole_positions[frame_num]) and num > 0 and left == 0:
                        num = 3
                        left = 14
                        is_down = False
                        interval = 0
                        t2 = datetime.datetime.now()
                        micros = int((t2 - t1).microseconds /100000)
                        print("//time:%d"%self.countdown)
                        print("#%d Hit_point = Good_mole;"%micros)
                        print("#1 Hit_point = 0;")
                        print("#%d;"%(9-micros))
                        self.score += (10-micros)  # Increase player's score
                        print("//score:%d"%self.score)
                        # Stop popping sound effect
                        self.soundEffect.stopPop()
                        # Play hurt sound
                        self.soundEffect.playHurt()
                        self.update()
                    else:
                        t2 = datetime.datetime.now()
                        micros = int((t2 - t1).microseconds /100000)
                        print("//time:%d"%self.countdown)
                        print("#%d Hit_point = Bad_mole;"%micros)
                        print("#1 Hit_point = 0;")
                        print("#%d;"%(9-micros))
                        
                        self.score -= 5
                        print("//score:%d"%self.score)
                        self.update()

            if num > 5:
                self.screen.blit(self.background, (0, 0))
                self.update()
                num = -1
                left = 0

            if num == -1:
                self.screen.blit(self.background, (0, 0))
                self.update()
                num = 0
                is_down = False
                interval = 0.5
                frame_num = self.getpos1();      
                frame_num2 = self.getpos2();   
                self.countdown-=1;
                if self.countdown>30 or self.countdown<0:
                    frame_num = 16
                    frame_num2 = 16

            mil = clock.tick(self.FPS)
            sec = mil / 1000.0
            cycle_time += sec
            if cycle_time > interval:
                pic = self.mole[num]
                pic2 = self.bad_mole[num]
                self.screen.blit(self.background, (0, 0))
                self.screen.blit(pic, (self.hole_positions[frame_num][0] - left, self.hole_positions[frame_num][1]))
                if frame_num2!= frame_num:
                    self.screen.blit(pic2, (self.hole_positions[frame_num2][0] - left, self.hole_positions[frame_num2][1]))
                self.update()
                t1 = datetime.datetime.now()
                if is_down is False:
                    num += 1
                else:
                    num -= 1
                if num == 4:
                    interval = 0.3
                elif num == 3:
                    num -= 1
                    is_down = True
                    self.soundEffect.playPop()
                    interval = 1  # get the newly decreased interval value
                else:
                    interval = 0.1
                cycle_time = 0
            # Update the display
            pygame.display.flip()


# The Debugger class - use this class for printing out debugging information
class Debugger:
    def __init__(self, mode):
        self.mode = mode

    def log(self, message):
        if self.mode is "debug":
            print("> DEBUG: " + str(message))


class SoundEffect:
    def __init__(self):
        self.mainTrack = pygame.mixer.music.load("sounds/themesong.wav")
        self.fireSound = pygame.mixer.Sound("sounds/fire.wav")
        self.fireSound.set_volume(1.0)
        self.popSound = pygame.mixer.Sound("sounds/pop.wav")
        self.hurtSound = pygame.mixer.Sound("sounds/hurt.wav")
        pygame.mixer.music.play(-1)

    def playFire(self):
        self.fireSound.play()

    def stopFire(self):
        self.fireSound.sop()

    def playPop(self):
        self.popSound.play()

    def stopPop(self):
        self.popSound.stop()

    def playHurt(self):
        self.hurtSound.play()

    def stopHurt(self):
        self.hurtSound.stop()

###############################################################
# Initialize the game
pygame.mixer.init(frequency=22050, size=-16, channels=2, buffer=512)
pygame.init()

# Run the main loop
my_game = GameManager()
my_game.start()
# Exit the game if the main loop ends
pygame.quit()
