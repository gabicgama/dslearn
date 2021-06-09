INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://blog.raleduc.com.br/wp-content/uploads/2016/06/aaasd.jpg', 'https://cdn.pixabay.com/photo/2017/06/21/10/50/pay-2426844_1280.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensagem de teste', TIMESTAMP WITH TIME ZONE '2020-06-08T17:32:00Z', True, '/users/1', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://blog.raleduc.com.br/wp-content/uploads/2016/06/aaasd.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha CSS', 'Trilha secundária do curso', 2, 'https://blog.raleduc.com.br/wp-content/uploads/2016/06/aaasd.jpg', 2, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar!', 1, 'https://blog.raleduc.com.br/wp-content/uploads/2016/06/aaasd.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos começar!', 2, 'https://blog.raleduc.com.br/wp-content/uploads/2016/06/aaasd.jpg', 2, 1);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 - Capítulo 1', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio', 'https://www.youtube.com/watch?v=PfYifUFmXk8', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 - Capítulo 1', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio', 'https://www.youtube.com/watch?v=PfYifUFmXk8', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa - Capítulo 1', 3, 1);
INSERT INTO tb_task (description, question_Count, approval_Count, weight, due_Date, id) VALUES ('Fazer o desafio', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', 3);

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
