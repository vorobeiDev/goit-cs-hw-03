SELECT *
FROM tasks
WHERE user_id = 10;

SELECT *
FROM tasks
WHERE user_id = 10 AND status_id = 1;

UPDATE tasks
SET status_id = 2
WHERE id = 8;

SELECT * FROM users
WHERE users.id NOT IN (
    SELECT tasks.user_id
    FROM tasks
);

INSERT INTO tasks (title, description, status_id, user_id)
VALUES ('Прибрати робочий стіл', 'Потрібно прибрати чашку зі столу', 1, 1);

SELECT *
FROM tasks
WHERE status_id != 3;

DELETE FROM tasks WHERE id = 1082;

SELECT *
FROM users
WHERE email LIKE '%stephanie77@example.net%';

UPDATE users SET fullname = 'Іван Сірко' WHERE id = 1;

SELECT status_id, COUNT(*) AS task_count
FROM tasks
GROUP BY status_id;

SELECT *
FROM tasks
JOIN users ON tasks.user_id = users.id
WHERE users.email LIKE '%@example.com';

SELECT *
FROM tasks
WHERE description IS NULL OR description = '';

SELECT users.id, users.fullname, tasks.id, tasks.description
FROM users
INNER JOIN tasks ON users.id = tasks.user_id
WHERE tasks.status_id = 2
ORDER BY users.id;

SELECT U.id, U.fullname, COUNT(T.id) AS task_count
FROM users U
LEFT JOIN tasks T ON U.id = T.user_id
GROUP BY U.id, U.fullname
ORDER BY U.id;
