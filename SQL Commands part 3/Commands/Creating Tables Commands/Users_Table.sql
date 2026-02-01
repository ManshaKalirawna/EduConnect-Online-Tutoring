CREATE TABLE Users (
    UserID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    UserType ENUM('Tutor', 'Student') NOT NULL,
    RegistrationDate DATE NOT NULL
);


