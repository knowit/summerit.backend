# Summerit backend - Raspberry Pi
This is the raspberry pi code for our Summerit project at KnowIT

It utilizes node, npm, babel for es6 javascript, isomorphic fetch for node-fetch, 
and bleacon library to scan for beacons

## HOW-TO

First you have to build the project, since it is written with es6 and that does 
not work in node yet, so we build it with help from babel. Build: 
```bash
npm run build
```

Then we move over to actually running the program, takes rpi id number as a param. Run:

```
npm run serve {rpi_id number}
```

Example:
```bash
npm run serve 2
```

### NOTE
If you run this from your own computer, then npm run serve needs to run as su. This is not a problem when it comes to rpi since they are in su
