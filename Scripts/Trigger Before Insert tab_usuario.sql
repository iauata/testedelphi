DELIMITER $$

USE `testedb`$$

DROP TRIGGER /*!50032 IF EXISTS */ `tg_tab_user_BI`$$

CREATE
    /*!50017 DEFINER = 'root'@'localhost' */
    TRIGGER `tg_tab_user_BI` BEFORE INSERT ON `tab_usuario` 
    FOR EACH ROW     BEGIN
       SET NEW.usu_senha = fct_crypt_str(NEW.usu_senha);
    END;
$$

DELIMITER ;