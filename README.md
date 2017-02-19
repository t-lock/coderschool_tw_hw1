# CoderRestaurant Website

**El Chico Timo** is a Ruby on Rails restaurant website let users order foods.

Submitted by: **Tim Wheelock**

Time spent: **11.5** hours spent in total

URL: **https://csvn-tw-hw1.herokuapp.com/**

## User Stories

### Required:

* [x] User must be able to go two pages: Menu, and Contact Us.
* [x] User can see the address and phone number on the contact us page.
* [x] User can see a basic google map on the Contact Us page.
* [x] User can navigate to a menu page with four sections:
  * [x] Breakfast
  * [x] Lunch
  * [x] Dinner
  * [x] Drinks
* [x] User should see at least 5 food items in each section.
* [x] Each food item should have the following fields:
  * Name
  * Description
  * Price (VND)
  * Section - Breakfast, Lunch, Dinner, Drinks
  * Image URL - do a google search or use LoremFlickr: http://loremflickr.com/320/240/canhchua
* [x] User should be able to filter by section of Breakfast, Lunch, Dinner, or Drinks and see only the relevant items.
* [x] User can sort menu items by “alphabetical”, “price low to high”, and “price high to low”.
* [x] User should be able to search for a menu item and see results.
* [x] Clicking on an item in the menu brings up its detail, where you see the description and a larger picture.
* [x] User can click “order” on a menu item to go to a “Create Order” page.
* [x] User is able to fill in their name, phone number, and address.
* [x] User is taken to a “Thank you for your order page” that lists the name of item, the total cost (delivery should cost 20,000 VND), the user’s name, the user’s address, and the time the order was created in human-readable format (for example, Tuesday, December 1, 15:25).

### Optional:

* [ ] User can also filter by type of Cuisine.
* [ ] User can see how many times each menu item has been viewed, and sort items by “most viewed”.
* [ ] User can leave a review (1-5 stars) for each dish, along with a text review.
* [ ] User can see reviews and an average review score.
* [ ] User can input "CODERSCHOOL" as a coupon code on the order page, which should give a 50% discount off of the order.
* [ ] User can order more than one dish at a time.
* [ ] User receives an email upon placing an order.
* [ ] The Restaurant (you) receives an email or SMS when a User places an order. Try Twilio if you’d like a SMS API. Use Promo Code CodeSchool15 for $30 free credit.

### Additional:

* [x] Menu Also has 'Full Menu' Tab
* [x] Menu Detail link dynamically loads in modal

and some **little things**:

* [x] Add CSS to make sure google map embed is responsive.
* [x] Use ActionView helper to format price numbers with delimiter
* [x] Split string passed to loremflicker to first word only to get better results **fail: loremflicker is terrible!**

## Notes:

### Known issues:
* Search query is case sensitive
* The UI is straightforward with care taken to alignment, readability proportionality, but there is no real polish/flourish
* The video walkthrough doesn't show human readable time on order confirmation, but that has been added since.

### Things that were challenging
* Keeping track of the params in url when implementing the search form, adding a hidden input is something that didn't cross my mind but was suggested by a classmate. This is probably a very common technique in working with GET data
* I originally had a much nicer Full Menu tab, where there were section headings with short tables of items below, but when trying to use the sort forms this got increasingly difficult to handle, and with the deadline fast approaching I ditched the sections so that the view could simply render all @food_items, as defined by the home controller. This ended up possibly being a lesson in keeping the logic in the controller and out of the view, as much as possible.

## Video Walkthrough

![Video Walkthrough](tw_hw1.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).


## License

           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                   Version 2, December 2004

Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

           DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
  TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

 0. You just DO WHAT THE FUCK YOU WANT TO.
