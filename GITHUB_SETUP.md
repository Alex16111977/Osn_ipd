# Инструкция по созданию репозитория GitHub

## Шаг 1: Создание репозитория на GitHub

1. Перейдите на https://github.com
2. Войдите в свой аккаунт Alex16111977
3. Нажмите кнопку "New" (зеленая кнопка) или перейдите на https://github.com/new
4. Заполните форму:
   - Repository name: `Osnovni`
   - Description: `Python проект для работы с данными`
   - Выберите Public или Private (по желанию)
   - НЕ ставьте галочки на "Add a README file", "Add .gitignore", "Choose a license"
5. Нажмите "Create repository"

## Шаг 2: Связь с локальным репозиторием

После создания репозитория GitHub покажет инструкции. Выполните следующие команды в терминале VS Code:

```bash
git branch -M main
git remote add origin https://github.com/Alex16111977/Osnovni.git
git push -u origin main
```

## Альтернативный способ (если нужна аутентификация):

Если потребуется ввести логин/пароль:
- Логин: Alex16111977
- Пароль: используйте Personal Access Token вместо пароля GitHub

### Создание Personal Access Token:
1. GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate new token → Expiration: 90 days
3. Выберите scopes: repo (полный доступ к репозиториям)
4. Скопируйте созданный токен и используйте его как пароль

## Проверка

После выполнения команд ваш репозиторий будет доступен по адресу:
https://github.com/Alex16111977/Osnovni
