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

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Introdução', 'Aqui vamos aprender o básico para iniciar no spring boot', 1, 'https://link-da-img-resource.com', 1, 'https://link-da-img-resource.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Fórum', 'Tire suas dúvidas ', 2, 'https://link-da-img-resource.com', 2, 'https://link-da-img-resource.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Lives', 'Assista as lives gravadas', 3, 'https://link-da-img-resource.com', 0, 'https://link-da-img-resource.com', 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequesite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar o assunto', 1, 'https://link-da-img-section.com', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequesite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar seu aprendizado', 2, 'https://link-da-img-section.com', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequesite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos terminar a seçao com uma aula sensacional', 3, 'https://link-da-img-section.com', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', null, true, false);