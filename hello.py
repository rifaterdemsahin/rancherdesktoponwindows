for i in range(50):
    print("hello")

    import pygame
    import random

    # Initialize Pygame
    pygame.init()

    # Set up the game window
    width = 800
    height = 600
    window = pygame.display.set_mode((width, height))
    pygame.display.set_caption("Snake Game")

    # Colors
    BLACK = (0, 0, 0)
    WHITE = (255, 255, 255)
    RED = (255, 0, 0)
    GREEN = (0, 255, 0)

    # Snake properties
    snake_block = 20
    snake_speed = 15

    # Initialize clock
    clock = pygame.time.Clock()

    # Font for score display
    font = pygame.font.SysFont(None, 50)

    def our_snake(snake_block, snake_list):
        for x in snake_list:
            pygame.draw.rect(window, GREEN, [x[0], x[1], snake_block, snake_block])

    def message(msg, color):
        mesg = font.render(msg, True, color)
        window.blit(mesg, [width / 6, height / 3])

    def gameLoop():
        game_over = False
        game_close = False

        x1 = width / 2
        y1 = height / 2

        x1_change = 0
        y1_change = 0

        snake_List = []
        Length_of_snake = 1

        foodx = round(random.randrange(0, width - snake_block) / 20.0) * 20.0
        foody = round(random.randrange(0, height - snake_block) / 20.0) * 20.0

        while not game_over:

            while game_close == True:
                window.fill(BLACK)
                message("You Lost! Press Q-Quit or C-Play Again", RED)
                pygame.display.update()

                for event in pygame.event.get():
                    if event.type == pygame.KEYDOWN:
                        if event.key == pygame.K_q:
                            game_over = True
                            game_close = False
                        if event.key == pygame.K_c:
                            gameLoop()

            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    game_over = True
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_LEFT:
                        x1_change = -snake_block
                        y1_change = 0
                    elif event.key == pygame.K_RIGHT:
                        x1_change = snake_block
                        y1_change = 0
                    elif event.key == pygame.K_UP:
                        y1_change = -snake_block
                        x1_change = 0
                    elif event.key == pygame.K_DOWN:
                        y1_change = snake_block
                        x1_change = 0

            if x1 >= width or x1 < 0 or y1 >= height or y1 < 0:
                game_close = True
            x1 += x1_change
            y1 += y1_change
            window.fill(BLACK)
            pygame.draw.rect(window, RED, [foodx, foody, snake_block, snake_block])
            snake_Head = []
            snake_Head.append(x1)
            snake_Head.append(y1)
            snake_List.append(snake_Head)
            if len(snake_List) > Length_of_snake:
                del snake_List[0]

            for x in snake_List[:-1]:
                if x == snake_Head:
                    game_close = True

            our_snake(snake_block, snake_List)

            pygame.display.update()

            if x1 == foodx and y1 == foody:
                foodx = round(random.randrange(0, width - snake_block) / 20.0) * 20.0
                foody = round(random.randrange(0, height - snake_block) / 20.0) * 20.0
                Length_of_snake += 1

            clock.tick(snake_speed)

        pygame.quit()
        quit()

    gameLoop()



