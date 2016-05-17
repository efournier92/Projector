#Projector

This is an app I built in Sinatra. It is meant to help teams manage projects via dynamically created web pages, backed by a PostgresSQL database. I did this project to practice designing a database architecture to represent team members working on projects together. It was also gave me a reason to work more with migrations and models.

##Models
##### Users
* Initialized With:
	* First Name 
	* Last Name
	* Email (*Optional*)
* *Users can belong to multiple projects*

##### Projects
* Initialized With:
	* Name
	* Description (Optional)
* *A project can have many users assigned to it.*

##### Tasks
	* Initialized With:
		* Name
		* Description (Optional)
		* Due Date
	* *Tasks can be assigned to a single user, or remain unassigned.*
	* *A task must belong to a single project.*

##### `seeds.rb`
	* Contains code to create three users and two projects.

### Select User Stories

```no-highlight
As a user
I want to view a list of all projects
So I know what projects are ongoing
```
* Acceptance Criteria:
	* Name of each project is visible on the projects index page.

```no-highlight
As a user
I want to see the details of a project
So I can learn more about each project
```
* Acceptance Criteria:
	* On the projects index page, the name of each project should be a link to the project's show page.
	* On a project's show page, I should see the name and description (if any) of the project.

```no-highlight
As a user
I want to see the members of each project
So I know who is working on the project
```
* Acceptance Criteria:
	* On a project's show page, I should see the first name, last name, and email (if any) of each user who is working on the project.

```no-highlight
As a user
I want to see the tasks of each project
So I know what needs to completed in the project
```
Acceptance Criteria:
	* The name of each task, as well as the first and last name of the user assigned to it, is visible on the project show page. 
