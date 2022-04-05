<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220324201114 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE question_bddcooking CHANGE reponse reponse VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE question_bddmuseum CHANGE reponse reponse VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE question_validee_compagny DROP FOREIGN KEY FK_13A99DFD69A14A7D');
        $this->addSql('ALTER TABLE question_validee_compagny ADD CONSTRAINT FK_13A99DFD69A14A7D FOREIGN KEY (id_question_valide_id) REFERENCES question_bddcompagny (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE question_validee_cooking DROP FOREIGN KEY FK_91BA0AEC69A14A7D');
        $this->addSql('ALTER TABLE question_validee_cooking CHANGE id_question_valide_id id_question_valide_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE question_validee_cooking ADD CONSTRAINT FK_91BA0AEC69A14A7D FOREIGN KEY (id_question_valide_id) REFERENCES question_bddcooking (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE question_validee_museum DROP FOREIGN KEY FK_AE792C9669A14A7D');
        $this->addSql('ALTER TABLE question_validee_museum ADD CONSTRAINT FK_AE792C9669A14A7D FOREIGN KEY (id_question_valide_id) REFERENCES question_bddmuseum (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE question_bddcooking CHANGE reponse reponse VARCHAR(1000) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE question_bddmuseum CHANGE reponse reponse VARCHAR(1000) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE question_validee_compagny DROP FOREIGN KEY FK_13A99DFD69A14A7D');
        $this->addSql('ALTER TABLE question_validee_compagny ADD CONSTRAINT FK_13A99DFD69A14A7D FOREIGN KEY (id_question_valide_id) REFERENCES question_bddcompagny (id)');
        $this->addSql('ALTER TABLE question_validee_cooking DROP FOREIGN KEY FK_91BA0AEC69A14A7D');
        $this->addSql('ALTER TABLE question_validee_cooking CHANGE id_question_valide_id id_question_valide_id INT NOT NULL');
        $this->addSql('ALTER TABLE question_validee_cooking ADD CONSTRAINT FK_91BA0AEC69A14A7D FOREIGN KEY (id_question_valide_id) REFERENCES question_bddcooking (id)');
        $this->addSql('ALTER TABLE question_validee_museum DROP FOREIGN KEY FK_AE792C9669A14A7D');
        $this->addSql('ALTER TABLE question_validee_museum ADD CONSTRAINT FK_AE792C9669A14A7D FOREIGN KEY (id_question_valide_id) REFERENCES question_bddmuseum (id)');
    }
}
