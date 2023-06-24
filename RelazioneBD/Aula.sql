CREATE TABLE Aula
    (
        id              int UNSIGNED NOT NULL AUTO_INCREMENT,
        mq              int UNSIGNED NOT NULL,
        max_stud        int UNSIGNED NOT NULL,
        fasciaEtà       enum('infante', 'bambino','fanciullo', 'adolescente'),
        piano           int UNSIGNED NOT NULL,
        id_plesso       int NOT NULL,
        PRIMARY KEY     (id),
        FOREIGN KEY     (fasciaEtà) REFERENCES RangeFasciaEtà(nome),
        FOREIGN KEY     (id_plesso) REFERENCES Plesso(id)
    );