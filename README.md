# Shoff Accounting Client App
Shoff Accounting Client App was built for [Shoff Accounting](https://www.shoffaccounting.com/) so they could create accounts for their clients and post links to their financial reports to their respective accounts, and give them easier access to their financial information.

## Features
- An admin dashboard that gives the admin client management tools.
- The admin can add, edit, and delete links to/from client accounts.
- Clients can sign in to ther accounts to access the links to their finanical reports.

## Built With
- Ruby
- Rails 5.1.4
- Bootstrap 3
- Devise
- Active Admin
- ActiveAdminTheme (used to theme Active Admin)
- Pundit
- Bcrypt
- Haml

## Admin Dashboard

I used Active Admin to build my client an Admin dashboard to give him client management tools. 

### Users Table
![Clients Table](https://github.com/mattMusser/Shoff-Accounting/blob/read-me/app/assets/images/admin-users.png?raw=true)

When the admin logs in he goes directly to table of all his current clients.

### Add User
![Add Client](https://github.com/mattMusser/Shoff-Accounting/blob/read-me/app/assets/images/admin-new-user.png?raw=true)

The admin can also click a button in the upper right corner to add a new client and assign them a password.

### Edit User
![Edit Client](https://github.com/mattMusser/Shoff-Accounting/blob/read-me/app/assets/images/admin-edit-user.png?raw=true)

The admin also can also edit a client's login credentials.

### Links Table
![Links Table](https://github.com/mattMusser/Shoff-Accounting/blob/read-me/app/assets/images/admin-links.png?raw=true)

Shoff Accounting needed a way to give their clients easy access to links to their finiancial information instead of having to search through their email inbox so I gave him the tools to add and edit links to their accounts.

### Add Link
![Add Link](https://github.com/mattMusser/Shoff-Accounting/blob/read-me/app/assets/images/admin-new-link.png?raw=true)

When the admin needs to add link to client's account he can click the "New Link" button in the upper right corner to take him to the New LInk page. At the New LInk page he can add a link by selecting the client's user id number and then inputing the url to their respective spreadsheet.

## Author
[Matt Musser](www.mattmusser.com)


