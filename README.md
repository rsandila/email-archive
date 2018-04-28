# Mail backup

## Purpose

Run on a server and allow us to archive our mail to it in a way that is searchable,
recoverable and independent of mail client.

## Assumptions

* It will only be accessed on the local network
* This is currently a proof of concept and still needs a lot of work

## Usage

* Run the docker container on the QNAP
* Point your mail client to it and move your email to it

## TODO

* Provide UI to manage users/credentials
* Provide UI to manage certificates
