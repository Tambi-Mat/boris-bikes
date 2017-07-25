# boris-bikes project #
Transport for London (TfL) want a program for their network of docking stations and bikes that anyone can use. They want the program to emulate all the docking stations, bikes, and infrastructure (repair staff, etc).

Aim of the bookmark-manager project
-------
To use a test-driven approach to write object-oriented code!


**Key Concepts Used**
* Test Driven Development
* **User Stories** as the main requirement driving this program's development

## Instructions for use

```sh
* git clone https://github.com/Tambi-Mat/boris-bikes.git
* cd boris-bikes

```

## User Story

```sh
As a person,
So that I can use a bike,
I would like a docking station to release a bike.

As a person,
So that I can use a good bike,
I would like to see if a bike is working

As a member of the public
So I can return bikes I have hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I would like docking stations not to release bikes when there are none available

As a maintainer of the system,
So that I can control the distribution of bikes,
I would like docking stations not to accept more bikes than their capacity

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I would like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I would like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I would like docking stations to accept returning bikes (broken or not)

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I would like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I would like vans to collect working bikes from garages and distribute them to docking stations
```
