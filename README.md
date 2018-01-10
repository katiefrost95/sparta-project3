# sparta-project3

### Resources

Clone the repository into your account by running the following command in the terminal:

    git clone git@github.com:katiefrost95/sparta-project3.git

    cd sparta-project3

    bundle install

And have the 'gem install rack' so you can run 'rackup' to get the server running.

To get the database running in your terminal run the command:

    'psql -d planets -f seed.sql'

You need to have the Sinatra, sinatra/reloader, pg, http, httparty, and rspec gems installed by, for example, running the command

    'gem install sinatra'


Here is the documentation for the resources used in this project:

rspec:
https://gist.github.com/eliotsykes/5b71277b0813fbc0df56

capybara:
https://gist.github.com/huangzhichong/3284966 https://github.com/teamcapybara/capybara

cucumber:
https://cucumber.io/docs

json:
http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html

### Unit tests

##### Running the tests

The unit tests are located in the Tests/Unit_tests folder.
The unit test are testing the methods in the controller files located in the controllers folder.
Rspec must be installed in your terminal in your terminal by running

    'gem install rspec'

You must also install rack/test by running

    'gem install rack/test'



To run the tests from your terminal you need to run the 'rspec' command.
For the planet controller unit tests to work you need to require it's models page at the top of the spec file and require 'pg'.

### Integration Test

##### Running the tests

The integration tests are located in the Tests/Integration_tests folder where I have written a service object model to test api's from Nasa's NeoWs. The link to the api is here: https://api.nasa.gov/api.html#NeoWS.

HTTParty and json need to be required at the top of the service pages- the pages that created the methods that collect specific data from the api.

To run the tests from the terminal, assuming the rspec gem has been installed, you simply run the command rspec from the terminal.

    'gem install rspec'

    'rspec' -- command to run the tests

### UI Tests

##### Running the tests

The UI tests are located in the Tests/UI_tests folder where I have created a page object model to run front end tests of the web app and follow the user paths.

To run the tests you need to have capybara, selenium, rspec and cucumber installed and from your terminal you cd into the UI tests folder, and run the command 'cucumber' to start the tests running.

## Project Brief
The project is to refresh all of your skills that you have learnt since starting at Sparta. You will need to create a website in Sinatra (ERB) to call the NASA NeoWs - (Near Earth Object Web Service). We would expect it to be fully automated Unit, API and front end tested as part of the product.

## About my project
I have created a small web app using two resources. One of the resources is planets and the other resource is the nasa NeoWs API. The web app includes automation testing starting from unit tests, to integration tests, to UI testing using cucumber.


### Summary Report for performance testing

Use cases - The user can access each page. These tests are focussing on get requests.

Business requirements: 100 users can access each page in 1 second.
1000 users can access each page in 10 seconds.
100 requests can be made to each page in 10s, 10 times over.

Used Jmeter to simulate user usage.

##### Spike testing

Number of requests to each page in 1 second:

**Condition: 10 requests in 1 second:**

Time actually taken: 2 seconds

Average success rate: 100%

**Condition: 50 requests in 1 second:**

Time actually taken: 6 seconds

Average success rate: 98.5%

**Condition: 100 requests in 1 second:**

Time actually taken: 17 seconds

Average success rate: 88.75%

Average request per second: 12.5/sec

**Condition: 1000 requests in 1 second:**

Time actually taken: 4 mins 6 seconds

Average success rate: 62%

Average request per second: 32.6/sec

Notes: API pages had a higher failure rate due to limit to number of requests.

##### Load testing

Number of request in 10 seconds:

**condition: 100 requests in 10 seconds:**

Time actually taken: 18 seconds

Average success rate: 73.81%

Average request per second: 6/sec

**condition: 1000 requests in 10 seconds:**

Time actually taken: 3 mins 57 seconds

Average success rate: 69.5%

Average request per second: 33.6/sec

##### Soak testing

Number of requests to in 10 seconds:

**Condition: 100 request in 10 seconds, 10 times**

Time actually taken: 2 mins 16 seconds

Average success rate: 26.64%

Average request per second: 48.4/sec

**Condition: 100 request in 10 seconds, 5 times**

Time actually taken: Too long (had to stop)

Average success rate: 0%

Average request per second: 38.7/sec
