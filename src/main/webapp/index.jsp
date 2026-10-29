<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop | Discover your next favourite</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #fafaf8;
            --bg-card: #ffffff;
            --primary: #1a1a2e;
            --primary-light: #2d2d44;
            --accent: #e07a5f;
            --accent-light: #f4d0c4;
            --accent-dark: #c05a3e;
            --muted: #6b6b7a;
            --muted-light: #a0a0b0;
            --surface: #f0efed;
            --success: #2a9d8f;
            --warning: #e9c46a;
            --radius: 16px;
            --radius-sm: 10px;
            --shadow: 0 4px 24px rgba(26, 26, 46, 0.06);
            --shadow-hover: 0 12px 48px rgba(26, 26, 46, 0.10);
            --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
            --container: 1240px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== UTILITIES ========== */
        .muted {
            color: var(--muted);
        }
        .text-center {
            text-align: center;
        }
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(224, 122, 95, 0.30);
        }
        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--primary-light);
            border-color: var(--primary-light);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(26, 26, 46, 0.20);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(26, 26, 46, 0.15);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            transform: translateY(-2px);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.25);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.25);
            border-color: rgba(255, 255, 255, 0.4);
            transform: translateY(-2px);
        }
        .btn-sm {
            padding: 8px 18px;
            font-size: 13px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(26, 26, 46, 0.04);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            min-height: 68px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 22px;
            letter-spacing: -0.5px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent {
            color: var(--accent);
        }
        .brand i {
            font-size: 26px;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--primary);
        }
        nav.main-nav li a i {
            font-size: 14px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 999px;
            padding: 0 16px 0 18px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 220px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.10);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: var(--muted);
            font-size: 15px;
            transition: var(--transition);
        }
        .search-wrap button:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--surface);
            color: var(--primary);
            transition: var(--transition);
        }
        .mobile-toggle:hover {
            background: var(--accent-light);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
            padding: 12px 0 20px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover {
            background: var(--surface);
        }
        #mobileMenu ul li a i {
            width: 22px;
            color: var(--muted);
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 480px;
            padding: 60px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 20px 24px 0;
            background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.35;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(224, 122, 95, 0.20);
            color: var(--accent);
            padding: 4px 16px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.3px;
            margin-bottom: 16px;
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 48px;
            font-weight: 700;
            color: #fff;
            line-height: 1.15;
            max-width: 640px;
            margin-bottom: 16px;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.80);
            font-size: 17px;
            max-width: 520px;
            margin-bottom: 28px;
            line-height: 1.6;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ========== SECTION ========== */
        .section {
            padding: 56px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 32px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 28px;
            font-weight: 700;
            letter-spacing: -0.3px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 4px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            transition: var(--transition);
            white-space: nowrap;
        }
        .section-header .view-all:hover {
            gap: 12px;
            color: var(--accent-dark);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 24px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.3px;
        }
        .product-card .badge.sale {
            background: var(--warning);
            color: var(--primary);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.90);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(4px);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.10);
        }
        .product-card .body {
            padding: 16px 18px 14px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            line-height: 1.3;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: #f5a623;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }
        .product-card .footer {
            padding: 0 18px 18px;
            display: flex;
            gap: 10px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 10px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 300px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 40px 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: var(--warning);
            color: var(--primary);
            padding: 4px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 6px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 18px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 4px 0 16px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 16px 0 20px;
        }
        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            min-width: 68px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 26px;
            font-weight: 700;
            line-height: 1.2;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.70;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.6;
            color: var(--primary);
            margin-bottom: 14px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            border-radius: var(--radius);
            padding: 48px 56px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .newsletter-wrap .text p {
            opacity: 0.75;
            font-size: 15px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 14px 20px;
            border-radius: 999px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255, 255, 255, 0.18);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 14px 32px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
        }
        #newsletterMsg {
            margin-top: 12px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 16px;
            padding: 44px 0 28px;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 32px;
        }
        .footer-grid .brand-col .brand {
            font-size: 20px;
            margin-bottom: 8px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 300px;
            line-height: 1.6;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 16px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 12px;
            color: var(--primary);
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }
        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 28px;
            }
        }

        @media (max-width: 992px) {
            .hero h1 {
                font-size: 36px;
            }
            .hero {
                min-height: 380px;
                margin: 16px 16px 0;
                padding: 40px 0;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 240px;
            }
            .deal-wrap .deal-content {
                padding: 28px 30px;
            }
            .newsletter-wrap {
                padding: 32px 28px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 150px;
            }
        }

        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .hero h1 {
                font-size: 28px;
            }
            .hero p {
                font-size: 15px;
            }
            .section-header h2 {
                font-size: 22px;
            }
            .deal-wrap .deal-content h3 {
                font-size: 22px;
            }
            .deal-wrap .deal-content .price-big {
                font-size: 26px;
            }
            .timer-box {
                min-width: 56px;
                padding: 8px 12px;
            }
            .timer-box .num {
                font-size: 20px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .brand {
                font-size: 18px;
            }
            .brand i {
                font-size: 20px;
            }
            .search-wrap {
                min-width: 120px;
                padding: 0 10px 0 14px;
            }
            .search-wrap input {
                font-size: 13px;
                padding: 8px 0;
            }
            .header-actions .icon-btn {
                width: 36px;
                height: 36px;
                font-size: 15px;
            }
            .cart-count {
                width: 18px;
                height: 18px;
                font-size: 10px;
            }
            .testimonial-card {
                flex: 0 0 280px;
            }
            .hero .actions .btn {
                padding: 10px 20px;
                font-size: 14px;
            }
            .section {
                padding: 36px 0;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero {
                margin: 10px 10px 0;
                min-height: 300px;
                padding: 28px 0;
                border-radius: var(--radius-sm);
            }
            .hero h1 {
                font-size: 24px;
            }
            .container {
                padding: 0 14px;
            }
            .deal-wrap .deal-content {
                padding: 20px 18px;
            }
            .deal-wrap .deal-img {
                flex: 0 0 180px;
            }
            .newsletter-wrap {
                padding: 24px 18px;
            }
            .newsletter-wrap .text h3 {
                font-size: 20px;
            }
            .product-card .body {
                padding: 12px 12px 8px;
            }
            .product-card .body h5 {
                font-size: 13px;
            }
            .product-card .body .price {
                font-size: 15px;
            }
            .product-card .footer {
                padding: 0 12px 12px;
            }
            .product-card .footer .add-btn {
                font-size: 12px;
                padding: 8px;
            }
            .timer-box {
                min-width: 46px;
                padding: 6px 8px;
            }
            .timer-box .num {
                font-size: 16px;
            }
            .timer-box .label {
                font-size: 9px;
            }
            .cat-card {
                padding: 16px 10px;
            }
            .cat-card .icon-wrap {
                width: 44px;
                height: 44px;
                font-size: 18px;
            }
            .cat-card h4 {
                font-size: 13px;
            }
        }

        /* ========== NEXUSSHOP UI REFRESH ========== */
        :root {
            --bg: #f6f8fb;
            --bg-card: #ffffff;
            --primary: #172b4d;
            --primary-light: #24436e;
            --accent: #087f8c;
            --accent-light: #d9f0f1;
            --accent-dark: #06636d;
            --muted: #64748b;
            --muted-light: #94a3b8;
            --surface: #eef3f8;
            --success: #16856b;
            --warning: #f5c969;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 8px 28px rgba(23, 43, 77, .07);
            --shadow-hover: 0 18px 42px rgba(23, 43, 77, .13);
            --transition: .22s ease;
            --container: 1180px;
        }
        body { background: var(--bg); color: var(--primary); line-height: 1.6; }
        ::selection { background: var(--accent-light); color: var(--primary); }
        a:focus-visible, button:focus-visible, input:focus-visible { outline: 3px solid #48b9c3; outline-offset: 3px; }
        .container { padding-left: 28px; padding-right: 28px; }
        header { background: rgba(255,255,255,.94); border-bottom: 1px solid #e5ebf2; box-shadow: 0 3px 18px rgba(23,43,77,.035); }
        .header-inner { min-height: 78px; padding: 14px 0; gap: 22px; }
        .brand { font-size: 23px; letter-spacing: -.8px; }
        .brand i, .brand .accent { color: var(--accent); }
        nav.main-nav ul { gap: 3px; }
        nav.main-nav li a { padding: 10px 13px; border-radius: 10px; font-size: 13px; }
        nav.main-nav li a:hover, nav.main-nav li a.active { background: #eaf5f6; color: var(--accent-dark); }
        .search-wrap { background: #f2f5f9; border: 1px solid #e2e8f0; min-width: 210px; }
        .search-wrap:focus-within { border-color: var(--accent); box-shadow: 0 0 0 4px rgba(8,127,140,.1); }
        .header-actions .icon-btn { border-radius: 12px; color: #52647e; }
        .header-actions .icon-btn:hover { background: #eaf5f6; color: var(--accent-dark); }
        .cart-count { background: var(--accent); }
        .mobile-toggle { border-radius: 12px; background: #eaf5f6; color: var(--accent-dark); }
        #mobileMenu { border-top: 1px solid #e5ebf2; box-shadow: 0 12px 20px rgba(23,43,77,.06); }
        .hero { min-height: 455px; margin: 24px auto 0; max-width: calc(var(--container) + 56px); border-radius: 28px; background: linear-gradient(115deg,#102a43 0%,#174c5a 65%,#087f8c 100%); box-shadow: 0 18px 46px rgba(23,43,77,.16); }
        .hero::before { opacity: .23; background-position: center 44%; }
        .hero::after { content: ''; position:absolute; inset:0; background:linear-gradient(90deg,rgba(12,34,57,.74),rgba(12,34,57,.15)); pointer-events:none; }
        .hero .container { z-index: 1; }
        .hero .badge { background: rgba(217,240,241,.16); color: #b8f1f2; border: 1px solid rgba(184,241,242,.3); padding: 7px 14px; }
        .hero h1 { font-family: 'Inter', sans-serif; font-size: clamp(36px,4.5vw,56px); line-height: 1.08; letter-spacing: -1.8px; max-width: 650px; }
        .hero p { font-size: 17px; max-width: 540px; color: rgba(255,255,255,.84); }
        .btn { min-height: 46px; border-radius: 12px; padding: 12px 22px; font-size: 14px; }
        .btn-primary { background: var(--accent); border-color: var(--accent); }
        .btn-primary:hover { background: var(--accent-dark); border-color: var(--accent-dark); box-shadow: 0 9px 22px rgba(8,127,140,.25); }
        .btn-secondary { background: var(--primary); border-color: var(--primary); }
        .btn-ghost { background: rgba(255,255,255,.1); border-color: rgba(255,255,255,.38); }
        .section { padding: 48px 0; }
        .section-header { margin-bottom: 24px; align-items: center; }
        .section-header .title-group h2 { font-size: clamp(23px,2.5vw,30px); letter-spacing: -.8px; }
        .section-header .title-group p { font-size: 14px; }
        .section-header .view-all { color: var(--accent-dark); }
        .cat-card { border: 1px solid #e7edf4; border-radius: 18px; box-shadow: 0 4px 16px rgba(23,43,77,.035); padding: 22px 14px; }
        .cat-card:hover { border-color: #b5e1e4; box-shadow: var(--shadow-hover); }
        .cat-card .icon-wrap { background: #e2f3f4; color: var(--accent-dark); }
        .cat-card:hover .icon-wrap { background: var(--accent); }
        .cat-card h4 { font-size: 14px; }
        .cat-card .count { font-size: 12px; }
        .products-grid { gap: 22px; }
        .product-card { border: 1px solid #e7edf4; border-radius: 18px; box-shadow: 0 5px 20px rgba(23,43,77,.045); }
        .product-card:hover { border-color: #b5e1e4; }
        .product-card .img-wrap { background: #f1f5f9; aspect-ratio: 1 / .92; }
        .product-card .badge { background: var(--accent); border-radius: 8px; }
        .product-card .badge.sale { background: #ffe8b2; color: #75551b; }
        .product-card .wish-btn { border: 1px solid rgba(23,43,77,.08); color: #64748b; }
        .product-card .wish-btn:hover { color: #d94b65; }
        .product-card .body { padding: 17px 18px 12px; gap: 7px; }
        .product-card .body .category-tag { color: var(--accent-dark); font-size: 10px; letter-spacing: .8px; }
        .product-card .body h5 { font-size: 15px; min-height: 39px; }
        .product-card .body .price { font-size: 19px; color: var(--primary); }
        .product-card .footer { padding: 0 18px 18px; }
        .product-card .footer .add-btn { border-radius: 11px; background: #e8f4f5; color: var(--accent-dark); padding: 11px; }
        .product-card .footer .add-btn:hover { background: var(--accent); color: #fff; transform: translateY(-1px); }
        .product-card .footer .add-btn.added { background: var(--success); color: #fff; }
        .deal-wrap { border: 1px solid #e7edf4; border-radius: 24px; box-shadow: var(--shadow); }
        .deal-wrap .deal-img { background: #edf2f7; }
        .deal-wrap .deal-content { padding: 42px; }
        .deal-wrap .deal-content .tag { background: #fff0c9; color: #76591a; border-radius: 8px; }
        .deal-wrap .deal-content h3 { font-size: 30px; letter-spacing: -.7px; }
        .deal-wrap .deal-content .price-big { color: var(--accent-dark); }
        .deal-wrap .deal-content .stock strong { color: #d25c48; }
        .timer-box { background: #edf5f7; color: var(--primary); border: 1px solid #dcebed; border-radius: 12px; }
        .timer-box .label { color: var(--muted); opacity: 1; }
        .testimonial-card { border: 1px solid #e7edf4; border-radius: 18px; box-shadow: 0 5px 18px rgba(23,43,77,.04); }
        .testimonials-scroll::-webkit-scrollbar-thumb { background: #b8dfe2; }
        .newsletter-wrap { background: linear-gradient(120deg,#12304b,#17616a); border-radius: 24px; padding: 42px 46px; box-shadow: 0 14px 34px rgba(18,48,75,.14); }
        .newsletter-wrap .text h3 { font-size: 28px; letter-spacing: -.6px; }
        .newsletter-wrap form input { background: rgba(255,255,255,.13); border: 1px solid rgba(255,255,255,.22); }
        .newsletter-wrap form input:focus { outline-color: #7be0e5; }
        .newsletter-wrap form .btn { background: #35a9b0; border-color: #35a9b0; }
        footer { background: #fff; border-top: 1px solid #e5ebf2; padding: 48px 0 26px; }
        .footer-grid .brand-col .socials a { background: #eef3f8; color: #52647e; border-radius: 12px; }
        .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
        .footer-grid .col ul li a:hover { color: var(--accent-dark); }
        .footer-bottom { border-top-color: #e5ebf2; }
        @media (max-width: 992px) {
            .header-inner { gap: 12px; }
            .hero { margin-left: 16px; margin-right: 16px; }
            .newsletter-wrap { padding: 32px 28px; }
        }
        @media (max-width: 768px) {
            .container { padding-left: 18px; padding-right: 18px; }
            .header-inner { min-height: 68px; }
            .header-inner > div:last-child { gap: 6px !important; }
            .search-wrap { min-width: 0; width: min(38vw, 220px); }
            .hero { min-height: 370px; margin: 14px 12px 0; border-radius: 20px; }
            .hero h1 { font-size: clamp(30px,7vw,42px); letter-spacing: -1px; }
            .hero p { font-size: 15px; }
            .section { padding: 34px 0; }
            .products-grid { gap: 14px; }
            .product-card .body { padding: 13px 13px 9px; }
            .product-card .footer { padding: 0 13px 13px; }
            .deal-wrap .deal-content { padding: 26px 24px; }
            .newsletter-wrap { border-radius: 18px; }
        }
        @media (max-width: 480px) {
            .container { padding-left: 14px; padding-right: 14px; }
            .header-inner { gap: 8px; }
            .brand { font-size: 17px; gap: 6px; }
            .brand i { font-size: 18px; }
            .search-wrap { width: 38vw; padding-left: 10px; padding-right: 9px; }
            .header-actions { gap: 1px; }
            .header-actions .icon-btn { width: 32px; height: 34px; }
            .hero { min-height: 330px; padding: 30px 0; margin: 10px 8px 0; }
            .hero h1 { font-size: 29px; }
            .hero .actions { gap: 8px; }
            .hero .actions .btn { padding: 10px 13px; font-size: 12px; }
            .section-header { align-items: flex-start; }
            .section-header .title-group h2 { font-size: 22px; }
            .products-grid { gap: 10px; }
            .product-card { border-radius: 14px; }
            .product-card .body h5 { font-size: 13px; }
            .product-card .body .price { font-size: 15px; }
            .product-card .body .old-price { font-size: 11px; }
            .product-card .body .rating { font-size: 11px; }
            .product-card .footer .add-btn { font-size: 12px; }
            .timer-grid { gap: 7px; }
            .newsletter-wrap { padding: 25px 18px; }
        }
        @media (prefers-reduced-motion: reduce) {
            *, *::before, *::after { scroll-behavior: auto !important; transition-duration: .01ms !important; animation-duration: .01ms !important; }
        }



        /* ===== NEXUSSHOP REDESIGN: clearer hierarchy, calmer colors, easier browsing ===== */
        :root {
            --bg: #f6f8fc;
            --bg-card: #ffffff;
            --primary: #17243b;
            --primary-light: #263a59;
            --accent: #4f46e5;
            --accent-light: #e8eaff;
            --accent-dark: #3730a3;
            --muted: #64748b;
            --muted-light: #94a3b8;
            --surface: #f1f4fa;
            --success: #0f9f82;
            --warning: #f5b942;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 8px 28px rgba(25, 42, 70, .06);
            --shadow-hover: 0 18px 44px rgba(25, 42, 70, .12);
            --container: 1200px;
        }
        body { background: var(--bg); color: var(--primary); }
        a, button, input { -webkit-tap-highlight-color: transparent; }
        button:focus-visible, a:focus-visible, input:focus-visible { outline: 3px solid rgba(79,70,229,.35); outline-offset: 3px; }
        .announcement-bar { background: #17243b; color: #e9edff; font-size: 12px; letter-spacing: .15px; }
        .announcement-inner { display:flex; justify-content:space-between; align-items:center; gap:14px; min-height:34px; }
        .announcement-inner i { color:#a5b4fc; margin-right:7px; }
        .announcement-right { color:#cbd5e1; }
        header { background:rgba(255,255,255,.96); border-bottom:1px solid #e8edf5; box-shadow:0 4px 18px rgba(25,42,70,.025); }
        .header-inner { min-height:76px; padding:14px 0; gap:22px; }
        .brand { font-size:24px; letter-spacing:-1px; color:#17243b; }
        .brand i, .brand .accent { color:var(--accent); }
        nav.main-nav ul { gap:3px; }
        nav.main-nav li a { padding:10px 12px; border-radius:10px; font-size:13px; color:#526079; }
        nav.main-nav li a:hover, nav.main-nav li a.active { color:var(--accent); background:#f0f1ff; }
        .search-wrap { min-width:210px; border:1px solid #e3e8f2; background:#f7f8fc; border-radius:12px; padding:0 13px; }
        .search-wrap:focus-within { border-color:#818cf8; background:#fff; box-shadow:0 0 0 4px rgba(79,70,229,.09); }
        .search-wrap input { padding:12px 0; font-size:13px; }
        .search-wrap button:hover { color:var(--accent); }
        .header-actions { gap:2px; }
        .header-actions .icon-btn { width:40px; height:40px; border-radius:12px; color:#526079; font-size:16px; }
        .header-actions .icon-btn:hover { background:#f0f1ff; color:var(--accent); }
        .cart-count { background:var(--accent); border:2px solid #fff; }
        .mobile-toggle { border-radius:12px; background:#f0f1ff; color:var(--accent); }
        #mobileMenu { border-top:1px solid #e8edf5; }
        #mobileMenu ul li a:hover { background:#f0f1ff; color:var(--accent); }
        #mobileMenu ul li a:hover i { color:var(--accent); }
        .hero { min-height:430px; margin:24px auto 0; max-width:calc(var(--container) + 48px); border-radius:26px; background:linear-gradient(112deg,#17243b 0%,#283a65 55%,#5148c8 100%); box-shadow:0 18px 45px rgba(39,51,105,.14); }
        .hero::before { background-image:linear-gradient(90deg,rgba(18,30,53,.90) 0%,rgba(29,43,80,.74) 48%,rgba(67,56,202,.20) 100%),url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85'); background-position:center,right center; background-size:cover; opacity:1; }
        .hero .container { width:100%; padding:24px 54px; }
        .hero .badge { background:rgba(199,210,254,.15); color:#c7d2fe; border:1px solid rgba(224,231,255,.22); padding:8px 14px; margin-bottom:22px; }
        .hero h1 { font-family:'Inter',system-ui,sans-serif; font-size:clamp(38px,5vw,60px); letter-spacing:-2.2px; line-height:1.06; max-width:620px; margin-bottom:18px; }
        .hero p { color:#e0e7ff; font-size:16px; max-width:470px; line-height:1.75; margin-bottom:30px; }
        .btn { border-radius:12px; padding:13px 21px; font-size:14px; }
        .btn-primary { background:#6366f1; border-color:#6366f1; box-shadow:0 8px 20px rgba(79,70,229,.2); }
        .btn-primary:hover { background:#4f46e5; border-color:#4f46e5; }
        .btn-secondary { background:#17243b; border-color:#17243b; }
        .btn-outline { border-color:#d9e0ec; background:#fff; }
        .btn-outline:hover { background:#17243b; }
        .btn-ghost { background:rgba(255,255,255,.08); border-color:rgba(255,255,255,.4); }
        .benefits-strip { padding:25px 0 8px; }
        .benefits-grid { display:grid; grid-template-columns:repeat(4,minmax(0,1fr)); gap:12px; }
        .benefit-item { display:flex; align-items:center; gap:12px; padding:16px 18px; background:#fff; border:1px solid #e9edf5; border-radius:15px; }
        .benefit-icon { flex:0 0 42px; width:42px; height:42px; display:grid; place-items:center; border-radius:13px; background:#eef0ff; color:var(--accent); font-size:17px; }
        .benefit-item strong { display:block; font-size:13px; font-weight:700; }
        .benefit-item small { display:block; color:var(--muted); font-size:11px; margin-top:3px; }
        .section { padding:54px 0 28px; }
        .section-header { margin-bottom:25px; align-items:center; }
        .section-header .title-group h2 { font-size:clamp(23px,3vw,30px); letter-spacing:-.9px; }
        .section-header .title-group p { font-size:14px; color:#748198; margin-top:6px; }
        .section-header .view-all { color:var(--accent); padding:10px 0; }
        .section-header .view-all:hover { color:var(--accent-dark); }
        .categories-grid { grid-template-columns:repeat(6,minmax(0,1fr)); gap:14px; }
        .cat-card { padding:23px 12px 20px; border:1px solid #e8edf5; border-radius:17px; box-shadow:0 5px 18px rgba(25,42,70,.035); }
        .cat-card:hover { border-color:#c7d2fe; transform:translateY(-4px); }
        .cat-card .icon-wrap { background:#eef0ff; color:var(--accent); border-radius:16px; width:54px; height:54px; font-size:21px; }
        .cat-card:hover .icon-wrap { background:var(--accent); color:#fff; }
        .cat-card h4 { font-size:13px; }
        .cat-card .count { font-size:12px; }
        .products-grid { grid-template-columns:repeat(4,minmax(0,1fr)); gap:18px; }
        .product-card { border:1px solid #e7ecf4; border-radius:18px; box-shadow:0 6px 22px rgba(25,42,70,.045); }
        .product-card:hover { transform:translateY(-5px); border-color:#d6dcfb; box-shadow:var(--shadow-hover); }
        .product-card .img-wrap { background:#f5f7fb; }
        .product-card .img-wrap img { transition:transform .4s ease; }
        .product-card:hover .img-wrap img { transform:scale(1.045); }
        .product-card .badge { border-radius:8px; padding:6px 9px; font-size:10px; font-weight:800; letter-spacing:.3px; }
        .product-card .badge.sale { background:#fff0e9; color:#c2410c; }
        .wish-btn { background:#fff; box-shadow:0 3px 12px rgba(15,23,42,.08); border-radius:12px; width:36px; height:36px; }
        .wish-btn:hover { color:#e11d48; background:#fff1f2; }
        .product-card .body { padding:16px 17px 10px; }
        .category-tag { color:#6366f1; font-size:10px; font-weight:800; letter-spacing:.7px; text-transform:uppercase; }
        .product-card h5 { font-size:15px; letter-spacing:-.25px; margin:7px 0 10px; }
        .price-row .price { font-size:18px; color:#17243b; }
        .old-price { color:#94a3b8; }
        .rating { color:#f59e0b; font-size:12px; margin-top:8px; }
        .rating span { color:#8792a5; }
        .product-card .footer { padding:0 17px 17px; }
        .add-btn { border-radius:11px; padding:11px 14px; background:#eef0ff; color:#4338ca; font-weight:700; font-size:13px; }
        .add-btn:hover { background:var(--accent); color:#fff; }
        .add-btn.added { background:#d1fae5; color:#047857; }
        .deal-wrap { border:1px solid #e4e9f4; border-radius:24px; overflow:hidden; box-shadow:var(--shadow); background:#fff; }
        .deal-content { padding:34px 38px; }
        .deal-content .tag { background:#fff1e9; color:#c2410c; border-radius:8px; padding:7px 10px; }
        .deal-content h3 { letter-spacing:-1px; font-size:28px; }
        .deal-content .desc { color:#66758c; line-height:1.75; }
        .deal-content .price-big { color:#17243b; }
        .deal-content .stock { color:#64748b; }
        .timer-box { border:1px solid #e6e9f5; background:#f7f8ff; border-radius:12px; }
        .timer-box .num { color:#4338ca; }
        .testimonials-scroll { gap:16px; }
        .testimonial-card { border:1px solid #e7ecf4; border-radius:18px; box-shadow:0 5px 18px rgba(25,42,70,.035); }
        .testimonial-card blockquote { color:#4b5870; line-height:1.75; }
        .testimonial-card .stars { color:#f59e0b; }
        .newsletter-wrap { background:linear-gradient(115deg,#202e52,#4338a8); border-radius:24px; padding:34px 38px; box-shadow:0 16px 35px rgba(44,49,123,.14); }
        .newsletter-wrap .text h3 { font-size:25px; letter-spacing:-.7px; }
        .newsletter-wrap .text p { color:#dbe3ff; }
        .newsletter-wrap form input { border-radius:12px; }
        .newsletter-wrap form .btn { border-radius:12px; background:#818cf8; color:#fff; }
        footer { background:#111c31; margin-top:35px; }
        footer .brand { color:#fff; }
        footer .brand-col p, footer .col ul li a { color:#aebbd0; }
        footer .col h5 { color:#f1f5f9; }
        footer .socials a { border-radius:11px; }
        footer .footer-bottom { border-top-color:rgba(226,232,240,.13); color:#8f9eb5; }
        #newsletterMsg { width:100%; }
        @media (max-width: 1050px) {
            .header-inner { gap:12px; }
            nav.main-nav li a { padding:9px 8px; }
            .search-wrap { min-width:175px; }
            .benefits-grid { grid-template-columns:repeat(2,minmax(0,1fr)); }
            .categories-grid { grid-template-columns:repeat(3,minmax(0,1fr)); }
        }
        @media (max-width: 768px) {
            .announcement-right { display:none; }
            .announcement-inner { justify-content:center; }
            .header-inner { min-height:66px; }
            .hero { margin:16px 14px 0; min-height:390px; border-radius:20px; }
            .hero .container { padding:28px 24px; }
            .hero h1 { font-size:clamp(35px,9vw,48px); letter-spacing:-1.5px; }
            .hero p { font-size:14px; }
            .benefits-strip { padding-top:16px; }
            .benefits-grid { gap:9px; }
            .benefit-item { padding:12px 10px; gap:9px; }
            .benefit-icon { width:36px; height:36px; flex-basis:36px; font-size:15px; }
            .benefit-item strong { font-size:12px; }
            .benefit-item small { font-size:10px; }
            .section { padding:40px 0 20px; }
            .products-grid { grid-template-columns:repeat(2,minmax(0,1fr)); gap:12px; }
            .product-card .body { padding:13px 12px 8px; }
            .product-card .footer { padding:0 12px 13px; }
            .product-card h5 { font-size:13px; }
            .price-row .price { font-size:16px; }
            .deal-content { padding:25px 22px; }
            .newsletter-wrap { padding:26px 20px; }
        }
        @media (max-width: 420px) {
            .container { padding-left:16px; padding-right:16px; }
            .brand { font-size:20px; }
            .header-actions .icon-btn { width:34px; height:38px; }
            .search-wrap { min-width:0; width:145px; padding:0 10px; }
            .search-wrap input { font-size:12px; }
            .benefits-grid { grid-template-columns:1fr 1fr; }
            .benefit-item { align-items:flex-start; flex-direction:column; }
            .categories-grid { gap:9px; }
            .cat-card { padding:16px 7px; }
            .cat-card .icon-wrap { width:44px; height:44px; font-size:18px; margin-bottom:8px; }
            .cat-card h4 { font-size:11px; }
            .cat-card .count { font-size:10px; }
            .hero .actions { gap:9px; }
            .hero .actions .btn { padding:12px 15px; font-size:12px; }
        }

    </style>
</head>

<body>

    <!-- ===== ANNOUNCEMENT BAR ===== -->
    <div class="announcement-bar">
        <div class="container announcement-inner">
            <span><i class="fas fa-truck-fast"></i> Free shipping on orders over $50</span>
            <span class="announcement-right">Thoughtful finds. Better everyday.</span>
        </div>
    </div>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <em class="fas fa-bars"></em>
                </button>
                <a class="brand" href="#">
                    <em class="fas fa-store-alt"></em>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> Good finds, all in one place</div>
                <h1>Find your next <br>everyday favourite</h1>
                <p>Useful tech, everyday essentials, and little upgrades you’ll love — all in one place.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- SHOPPING BENEFITS -->
        <section class="benefits-strip" aria-label="Shopping benefits">
            <div class="container benefits-grid">
                <div class="benefit-item"><span class="benefit-icon"><i class="fas fa-truck-fast"></i></span><div><strong>Free shipping</strong><small>On orders over $50</small></div></div>
                <div class="benefit-item"><span class="benefit-icon"><i class="fas fa-rotate-left"></i></span><div><strong>Easy returns</strong><small>30-day return window</small></div></div>
                <div class="benefit-item"><span class="benefit-icon"><i class="fas fa-shield-halved"></i></span><div><strong>Secure checkout</strong><small>Your data stays protected</small></div></div>
                <div class="benefit-item"><span class="benefit-icon"><i class="fas fa-headset"></i></span><div><strong>Here to help</strong><small>Friendly customer support</small></div></div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Browse Categories</h2>
                        <p>Find exactly what you're looking for</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Now</h2>
                        <p>What's hot — popular picks from our community</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </div>
                    <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Fast shipping and excellent support. The product exceeded my expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Great selection and smooth checkout. Will definitely shop again.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            // animate
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            // subtle feedback
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button click feedback
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    </script>

</body>
</html>
