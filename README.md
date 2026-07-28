🚀 Volt Gadgets

A modern e-commerce storefront built with HTML, CSS, JavaScript, Supabase, and Paystack that lets customers negotiate prices through WhatsApp or pay instantly online. It includes a responsive storefront, secure admin dashboard, real-time order management, CSV exports, and product inventory management.

---

🌐 Live Demo
Storefront
👉 https://voltgadgetstore.netlify.app/
🔑 Demo Admin Access
Visitors can explore the admin dashboard using the demo account below.
Admin URL
https://voltgadgetstore.netlify.app/#admin
Email
93fle4ypxk@gmeenramy.com
Password
123456
Note: This is a demo account intended for exploring the dashboard. Please avoid deleting or modifying existing products and orders.

----

✨ Features

🛍 Customer Storefront

- Responsive modern UI
- Product search and filtering
- Category navigation
- Product image gallery
- Shopping cart
- Quantity controls
- WhatsApp price negotiation
- Paystack online payments
- Customer order form
- Mobile-friendly experience

🔐 Admin Dashboard

- Secure Supabase authentication
- Product management
- Add/Edit/Delete products
- Multiple product image support
- Inventory management
- Order management
- Live order updates
- Sales summary
- CSV export
- Order reconciliation

---

🛠 Tech Stack

- HTML5
- CSS3
- Vanilla JavaScript
- Supabase
- Paystack
- WhatsApp API

---

📁 Project Structure

volt-gadgets/
│
├── index.html
├── volt-gadgets-store.html
├── database.sql
├── README.md
└── LICENSE

---

🚀 Getting Started

1. Clone the Repository

git clone https://github.com/aruaeze/volt-gadgets.git

2. Open the Project

cd volt-gadgets

No installation is required.

You can simply open:

index.html

or run a local server:

python -m http.server

Then visit:

http://localhost:8000

---

⚙️ Setting Up Your Own Copy

This project is designed so anyone can create their own gadget store.

Step 1 — Create a Supabase Project

Create a new Supabase project.

---

Step 2 — Import the Database

Open the SQL Editor in Supabase.

Copy everything inside:

database.sql

Paste it into the SQL editor and click Run.

This will automatically create:

- Products table
- Orders table
- Indexes
- Row Level Security
- Database policies

---

Step 3 — Get Your Supabase Credentials

From your Supabase project copy:

- Project URL
- Anon Key

Replace the existing values inside:

index.html

and

volt-gadgets-store.html

---

Step 4 — Create an Admin Account

Go to:

Authentication → Users

Create a new user using your email and password.

Use those credentials to log into the Admin Dashboard.

---

Step 5 — Configure Paystack

Create a Paystack account.

Copy your Public Key.

Replace:

const PAYSTACK_PUBLIC_KEY = "...";

with your own key.

«Never expose your Paystack Secret Key in frontend code.»

---

Step 6 — Configure WhatsApp

Replace:

const WHATSAPP_NUMBER = "...";

with your own WhatsApp number.

Example:

2348012345678

Use international format without the "+" sign.

---

Step 7 — Add Products

Log into the Admin Dashboard.

You can:

- Add products
- Upload images
- Edit products
- Delete products
- Mark products as Featured
- Manage inventory

No coding required.

---

🔒 Security

Only expose:

- ✅ Supabase Anon Key
- ✅ Paystack Public Key

Never expose:

- ❌ Supabase Service Role Key
- ❌ Paystack Secret Key
- ❌ Database passwords

---

🌍 Deployment

This project works on:

- GitHub Pages*
- Netlify
- Vercel
- Cloudflare Pages

«*If you use GitHub Pages, ensure any payment and authentication flows are configured appropriately for your deployment.»

---

🎨 Customization

You can customize:

- Store name
- Logo
- Colors
- Currency
- Product categories
- Product images
- WhatsApp number
- Paystack account
- Branding

---

🤝 Contributing

Contributions are welcome!

1. Fork the repository.

2. Create a new branch.

git checkout -b feature/my-feature

3. Commit your changes.

git commit -m "Add my feature"

4. Push your branch.

git push origin feature/my-feature

5. Open a Pull Request.

---

📥 How to Use This Project for Your Own Business

Clone the repository:

git clone https://github.com/aruaeze/volt-gadgets.git

Run the SQL file in your own Supabase project.

Replace:

- Supabase URL
- Supabase Anon Key
- Paystack Public Key
- WhatsApp Number

Create an admin account.

Deploy the project.

That's it—your store is ready to start adding products and accepting orders.

---

⭐ Support

If this project helped you, please consider giving it a Star on GitHub. It helps others discover the project and supports future improvements.

---

📄 License

This project is licensed under the MIT License.

You are free to use, modify, and distribute it in accordance with the license.

---

👨‍💻 Author

Eze Arua

GitHub: https://github.com/aruaeze
Twitter: https://x.com/datguyeze
---

Made with ❤️ by Big Eze 🦅💎
