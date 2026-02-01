CREATE TABLE Tutor (
    TutorID INT NOT NULL PRIMARY KEY,
    SubjectTaught VARCHAR(50) NOT NULL,
    Qualification VARCHAR(100) NOT NULL,
    Experience INT NOT NULL,
    Mode ENUM('Online', 'In person') NOT NULL,
    HourlyWage DECIMAL(6, 2) NOT NULL,
    LanguageSpoken VARCHAR(50) NOT NULL,
    CONSTRAINT FK_Tutor_Users FOREIGN KEY (TutorID) REFERENCES Users(UserID)
);


