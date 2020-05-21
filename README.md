
<br />
<p align="center">
  <a href="https://github.com/guirecordon/tic-tac-toe">
    <img src="microverse-logo.webp" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">Tic Tac Toe</h3>

  <p align="center">
    This project is part of the Microverse Ruby curriculum!
    <br />
    <a href="https://github.com/guirecordon/tic-tac-toe"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://repl.it/@ioilmio/tic-tac-toe">View Demo</a>
    ·
    <a href="https://github.com/guirecordon/tic-tac-toe/issues">Report Bug</a>
    ·
    <a href="https://github.com/guirecordon/tic-tac-toe/issues">Request Feature</a>
  </p>
</p>


## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Live Version](#live-version)
  * [Usage](#usage)
* [Game Rules](#game-rules)
* [Author](#author)
* [Contributing](#contributing)
* [Acknowledgements](#acknowledgements)

## About The Project


This is the third project of the Microverse Ruby Section

This is also the first project of the Odin project (Ruby Project [Programing: OOP](https://www.theodinproject.com/courses/ruby-programming/lessons/oop))

### Built With
This project was built using these technologies.
* Ruby
* Rubocop
* VsCode

### Live Version

TBA

### Usage

If you want to install and play the game you need: 
* Ruby installed in your computer, version 2.6.5 recommended.
  - Clone over HTTPS:
  ```
   $ git clone https://github.com/guirecordon/tic-tac-toe.git
  ```
  - Clone over SSH:
  ```
   $ git clone ssh://git@github.com:guirecordon/tic-tac-toe.git
  ```
* and execute bin/main.rb file 


## Tic Tac Toe Rules

1. The game is played on a grid that's 3 squares by 3 squares.
```
           1 | 2 | 3
	   - - - - -
	   4 | 5 | 6
	   - - - - -
	   7 | 8 | 9

```

2. Player 1 will be 'X' and Player 2 will be 'O'; Players take turns placing their marks in empty squares.

```
Your turn
           X | 2 | 3
	   - - - - -
	   4 | 5 | 6
	   - - - - -
	   7 | 8 | 9

Your friend's turn

           X | 2 | 3
	   - - - - -
	   4 | O | 6
	   - - - - -
	   7 | 8 | 9

```

3. The first player to get 3 of his marks in a row (horizontally, vertically or diagonally) is the winner.

```
Winning combinations (Examples for Player 1)

   X | X | X       1 | 2 | 3	   1 | 2 | 3       X | 2 | 3       1 | X | 3	   1 | 2 | X       X | 2 | 3	   1 | 2 | X
   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -
   4 | 5 | 6	   X | X | X	   4 | 5 | 6	   X | 5 | 6	   4 | X | 6	   4 | 5 | X	   4 | X | 6	   4 | X | 6
   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -	   - - - - -
   7 | 8 | 9	   7 | 8 | 9	   X | X | X	   X | 8 | 9	   7 | X | 9	   7 | 8 | X	   7 | 8 | X	   X | 8 | 9

```

4. When all 9 squares are full,it's a tie and the game is over.

```
Tie example: nobody wins.

           X | X | O
	   - - - - -
	   O | O | X
	   - - - - -
	   X | O | O

```

5. If a player takes a number not in range between 1 and 9 or an already taken number he will get an error, and will get prompted to choose another number.

6. Have fun!



## Author
👤 **Guilherme Recordon** 

- Twitter: [@guirecordon](https://twitter.com/guirecordon) 
- Github: [@guirecordon](https://github.com/guirecordon)
- LinkedIn [@GuilhermeRecordon](www.linkedin.com/in/gui-recordon-marketingmba/)

👤 **Illuminato Salvatore** 
- Twitter: [@ioilmio](https://twitter.com/ioilmio) 
- Github: [@ioilmio](https://github.com/ioilmio) 
- LinkedIn [@IlluminatoSalvatore](https://www.linkedin.com/in/illuminato-salvatore/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/guirecordon/tic-tac-toe/issues).

## Show your support

Give a ⭐️ if you like this project!


## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)
