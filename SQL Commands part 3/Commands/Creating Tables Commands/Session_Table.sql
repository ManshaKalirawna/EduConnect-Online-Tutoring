CREATE TABLE Session (
    SessionID VARCHAR(10) NOT NULL PRIMARY KEY,
    TutorID INT NOT NULL,
    StudentID INT NOT NULL,
    SubjectID VARCHAR(10) NOT NULL,
    Mode ENUM('Online', 'In person') NOT NULL,
    Date DATE NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    Status ENUM('Scheduled', 'Completed', 'Cancelled') NOT NULL,
    Notes TEXT,
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);




