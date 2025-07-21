# 🎫 Ticket Management System (Laravel + FilamentPHP)

Ta projekt je sistem za upravljanje vstopnic (tickets), razvit z uporabo Laravel 10 in FilamentPHP admin panela.

---

## ✨ Funkcionalnosti

- Upravljanje **ticket predlog** (Ticket Templates) z možnostjo personalizacije.
- Uporaba custom Blade view-ov za prikaz vstopnic.
- Polja za **personalizacijo** posameznih vstopnic (`var_1`, `var_2`, `var_3`).
- Admin panel z uporabo **FilamentPHP**.
- Custom komponenta za urejanje vsebine (Content Editor).

---

## 🗃️ Struktura podatkov

### `ticket_templates` tabela:
| Stolpec         | Tip      | Opis                                 |
|-----------------|----------|--------------------------------------|
| `id`            | bigint   | Primarni ključ                       |
| `name`          | string   | Ime predloge                         |
| `view`          | string   | Ime Blade view-a (npr. `tickets.basic`) |
| `personalization` | boolean | Ali naj predloga prikazuje var_1–3  |
| `content`       | text     | Vsebina predloge (npr. HTML)         |
| `created_at`    | timestamp|                                      |

### `tickets` tabela:
| Stolpec           | Tip      | Opis                                |
|-------------------|----------|-------------------------------------|
| `id`              | bigint   | Primarni ključ                      |
| `ticket_template_id` | FK    | Povezava na `ticket_templates`      |
| `var_1`, `var_2`, `var_3` | string | Vrednosti personalizacije     |
| `issued_at`       | timestamp| Kdaj je bila karta izdana           |
| `created_at`      | timestamp|                                     |

---

## 🛠️ Tehnologije

- [Laravel 10](https://laravel.com/)
- [FilamentPHP](https://filamentphp.com/)
- PHP 8.1+
- MySQL ali SQLite

---

## 📦 Namestitev (lokalno)

```bash
git clone https://github.com/result-bostjan/wpm.git
cd wpm

composer install
cp  .env
php artisan key:generate

php artisan migrate
php artisan make:filament-user
php artisan serve
