# Tournament Results for Udacity Full Stack Web Developer Nanodegree course
This project is a teaching ground for learning how to create and use databases through the use of database schemas and how to manipulate the data inside the database.
This is a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

## Quickstart
This project requires [VirtualBox](https://virtualbox.org) and [Vagrant](https://www.vagrantup.com/). The installation and setup of both is beyond the scope of this project, but it's simple and easy. You can find out how to install and setup VirtualBox and Vagrant on their websites.

1. Clone or download and unzip this repo on your computer.
2. Open command line prompt/terminal inside the folder containing the project files.
3. Change directory to `vagrant`
3. Run `vagrant up`, this will start a virtual machine, configured according to included `Vagrantfile`
4. If you are on Mac or Linux you can run `vagrant ssh` to log on to the virtual machine
5. If you are on Windows you can use [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html), or [KiTTY](http://www.9bis.net/kitty/). Refer to [Vagrant documentation](https://docs.vagrantup.com/v2/) to find out more

## Testing
All the code for this projects lives under `/vagrant`, the virtual machine is preconfigured with a PostgreSQL database server, and all required packages and dependencies.
You can run unit tests with `python tournament_test.py`

