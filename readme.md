# DM-GY 9103 Mobile Apps

![NYU](http://ws2.polishedsolid.com/de/nyu_soe_logo.png)
### Basic Information
* Be sure to read the [syllabus](syllabus.md)

### Getting Started
* [Sign up for an Apple Developer Account](https://developer.apple.com/register/index.action) if you don't have one
* Sign up for a github account and [the student developer pack](https://education.github.com/pack)
* Please fill out [this google form](http://goo.gl/forms/MnKIxzNEFX) with your account information
* When you have Xcode setup, submit an iPhone or iPad for developer approval [using a different google form](https://docs.google.com/a/nyu.edu/forms/d/1DQdXXo-1ruxAYjuji_6Qd_80z6FP16cq4HTdK9Zr2so/edit)
* Setup your git repository for textbook work (preferably public)


### Setting up your git Repository
(These are the instructions for setting up a public repository, which is recommended)

* Go to the [course git repository](https://github.com/IDMNYU/DMGY9103-MobileApps-SP15) (you're probably already here)
* Create a fork of the repository under your own github account (button is currently on the upper right of the page)
* On the page for your fork, copy the HTTPS Clone URL (should look like `https://github.com/YourGithubUsername/DMGY9103-MobileApps-SP15.git`)
* In your terminal, type the following commands (here's a basic [guide](https://mattwilcox.net/archives/a-very-basic-introduction-to-the-command-line-terminal-and-shell/) if you're just getting started):
* `cd place/you/want/to/do/your/work`
* `git clone https://github.com/YourGithubUsername/DMGY9103-MobileApps-SP15.git` (replace with your URL)
* `cd DMGY9103-MobileApps-SP15`
* `mkdir textbook_work/firstname_lastname` (please replace with your name)
* `touch textbook_work/firstname_lastname/.keep` (this just creates a blank file)
* `git add .`
* `git commit -m 'added my directory for textbook work, whooo!'`
* `git push origin master`


### Submitting Work

As you go through the book, you'll be coding along with the examples in the book. As a general rule, any time the author writes something like "now try running your code, it should work", and your code works, it is time to commit. Commit with the following commands:

If you want to push up everything you've done, mark everything for commiting with:

* `git add .`
* `git commit -m 'finished chapter 1, page 12'`
* `git push origin master`
