# Leitor de Contas - Água e Luz (PWA)

## Como conectar ao Supabase
1. Crie um projeto gratuito em [supabase.com](https://supabase.com).
2. Abra o **SQL Editor** no Supabase e execute o conteúdo do arquivo `supabase-setup.sql`.
3. Vá em **Project Settings > API** e copie a **Project URL** e a chave **anon public**.
4. Abra o arquivo `index.html`, localize as linhas 420-421 (`SUPABASE_URL` e `SUPABASE_ANON_KEY`) e cole suas chaves.

## Como empacotar no PWABuilder
1. Hospede esta pasta (`index.html`, `manifest.json`, `sw.js`, `logo-512x512.svg`) em qualquer hospedagem HTTPS gratuita (Vercel, Netlify, GitHub Pages ou Cloudflare Pages).
2. Acesse [pwabuilder.com](https://www.pwabuilder.com/), cole a URL publicada e gere os pacotes para Android (APK/AAB), iOS ou Windows.
