# Email Archive

## Purpose

Run on a server and allow us to archive our mail to it in a way that is searchable,
recoverable and independent of mail client.

## Vision

* Allow anybody to stand up the email archive software anywhere and safely use it to archive their email.
* Make the deployment so easy that anybody could do it
* Make the management so easy that anybody could do it
* Have a reasonable level of security
* Make the software as agnostic to email client and OS as possible

## Assumptions

* It will only be accessed on the local network
* This is currently a proof of concept and still needs a lot of work

## Usage

* Run the docker container on the QNAP
* Point your mail client to it and move your email to it

## TODO

* Provide UI to manage users/credentials
* Provide UI to manage certificates
* Replace static passwd with something else
* More detailed documentation

## Building

* Requires docker to be installed and running
* Run `./build.sh`

## Using

* Requires docker to be installed and running
* Run `./run.sh` to start the docker container
* Point your email client to the docker container on port 143 and copy/move the
email you want archived to it
