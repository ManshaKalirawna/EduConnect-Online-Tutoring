CREATE TABLE Payment (
    PaymentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    TutorID INT NOT NULL,
    SessionID VARCHAR(10) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod ENUM('Card', 'PayPal', 'Bank Transfer') NOT NULL,
    PaymentStatus ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    TransactionDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID)sys_config
);
