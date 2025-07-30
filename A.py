from faker import Faker

fake = Faker()

for _ in range(5):
    username = fake.user_name()
    email = fake.email()
    print(f"Kullanıcı Adı: {username}, E-posta: {email}")