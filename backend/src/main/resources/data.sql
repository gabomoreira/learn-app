INSERT INTO tb_user (name, email, password) VALUES ('Zoe Legend', 'zoe@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Anya Forger', 'anya@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Gabriel Moreira', 'gabo@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Spring Boot', 'https://link-da-img.com', 'https://link-da-img.com');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2023-05-07T03:00:00Z',  TIMESTAMP WITH TIME ZONE '2024-06-07T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2023-07-07T03:00:00Z',  TIMESTAMP WITH TIME ZONE '2024-08-07T03:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Esta é uma mensagem teste para as notificações', TIMESTAMP WITH TIME ZONE '2023-07-07T03:23:11Z', false, 'aqui fica a route', 3);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Esta é uma mensagem teste para as notificações', TIMESTAMP WITH TIME ZONE '2023-07-07T03:23:11Z', false, 'aqui fica a route', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Esta é uma mensagem teste para as notificações', TIMESTAMP WITH TIME ZONE '2023-07-07T03:23:11Z', false, 'aqui fica a route', 1);