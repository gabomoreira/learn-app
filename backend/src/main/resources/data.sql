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

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Comentário na tarefe: revisar a resposta', TIMESTAMP WITH TIME ZONE '2023-05-09T03:00:00Z', true, '/offers/1/resource/1/sections/1', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Comentário na tarefe: revisar a resposta', TIMESTAMP WITH TIME ZONE '2023-05-10T03:00:00Z', true, '/offers/1/resource/1/sections/1', 2);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Comentário na tarefe: revisar a resposta', TIMESTAMP WITH TIME ZONE '2023-05-11T03:00:00Z', false, '/offers/1/resource/1/sections/1', 2);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Introdução', 'Aqui vamos aprender o básico para iniciar no spring boot', 1, 'https://link-da-img-resource.com', 1, 'https://link-da-img-resource.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Fórum', 'Tire suas dúvidas ', 2, 'https://link-da-img-resource.com', 2, 'https://link-da-img-resource.com', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Lives', 'Assista as lives gravadas', 3, 'https://link-da-img-resource.com', 0, 'https://link-da-img-resource.com', 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequesite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar o assunto', 1, 'https://link-da-img-section.com', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequesite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar seu aprendizado', 2, 'https://link-da-img-section.com', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequesite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos terminar a seçao com uma aula sensacional', 3, 'https://link-da-img-section.com', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoi: abc', 'https://link-video-uri.com');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Material de apoi: abc', 'https://link-video-uri.com');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Material de apoi: abc', 'https://link-video-uri.com');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Resolva a tarefa para treinar seu conhecimento', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://link-do-deliver.com', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 2, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 1, 1, 2);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 1);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 2);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Coloque o ; no final de cada linha, ceteza que é isso', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 1, 3);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Era isso mesmo, não acredito kkkkkkk', TIMESTAMP WITH TIME ZONE '2023-05-07T13:00:00Z', 1, 2);

INSERT INTO tb_reply_likes (reply_id, author_id) VALUES (1, 2);







