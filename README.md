# 🛡️ CyberShield — Landing Page

Landing page simples com tema de Cybersecurity, criada utilizando apenas HTML e CSS.

## 🎯 Objetivo

Criar uma página inicial simples para apresentar uma empresa de segurança digital.

## 💻 Tecnologias

- HTML5
- CSS3
- Design responsivo
- Sem frameworks ou bibliotecas externas

## 📄 Código

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CyberShield - Segurança Digital</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      background: #050b14;
      color: #fff;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 8%;
      border-bottom: 1px solid #142235;
    }

    .logo {
      color: #00ff9d;
      font-size: 24px;
      font-weight: bold;
    }

    nav a {
      color: #ccc;
      text-decoration: none;
      margin-left: 25px;
    }

    nav a:hover {
      color: #00ff9d;
    }

    .hero {
      min-height: 75vh;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 60px 8%;
      gap: 40px;
    }

    .hero-text {
      max-width: 600px;
    }

    .hero h1 {
      font-size: 52px;
      margin-bottom: 20px;
    }

    .hero h1 span {
      color: #00ff9d;
    }

    .hero p {
      color: #aab5c5;
      font-size: 18px;
      line-height: 1.6;
      margin-bottom: 30px;
    }

    .btn {
      display: inline-block;
      background: #00ff9d;
      color: #03100b;
      padding: 14px 25px;
      border-radius: 6px;
      text-decoration: none;
      font-weight: bold;
    }

    .terminal {
      width: 400px;
      background: #0b1422;
      border: 1px solid #1c354d;
      border-radius: 10px;
      padding: 20px;
    }

    .terminal-bar {
      color: #00ff9d;
      margin-bottom: 20px;
    }

    .terminal p {
      color: #7ee7bb;
      margin: 12px 0;
      font-family: monospace;
    }

    .features {
      padding: 60px 8%;
      text-align: center;
      background: #07101c;
    }

    .features h2 {
      margin-bottom: 40px;
      font-size: 32px;
    }

    .cards {
      display: flex;
      justify-content: center;
      gap: 25px;
      flex-wrap: wrap;
    }

    .card {
      width: 280px;
      padding: 30px;
      background: #0b1422;
      border: 1px solid #172b40;
      border-radius: 10px;
    }

    .card h3 {
      color: #00ff9d;
      margin-bottom: 15px;
    }

    .card p {
      color: #9ba8b8;
      line-height: 1.5;
    }

    footer {
      text-align: center;
      padding: 25px;
      color: #687789;
    }

    @media (max-width: 800px) {
      .hero {
        flex-direction: column;
        text-align: center;
      }

      .hero h1 {
        font-size: 40px;
      }

      .terminal {
        width: 100%;
      }

      nav {
        display: none;
      }
    }
  </style>
</head>

<body>

  <header>
    <div class="logo">CyberShield</div>

    <nav>
      <a href="#inicio">Início</a>
      <a href="#solucoes">Soluções</a>
      <a href="#contato">Contato</a>
    </nav>
  </header>

  <main>

    <section class="hero" id="inicio">
      <div class="hero-text">
        <h1>Proteja o seu mundo <span>digital.</span></h1>

        <p>
          Soluções inteligentes de cybersecurity para proteger
          empresas, dados e sistemas contra ameaças digitais.
        </p>

        <a href="#contato" class="btn">Conheça nossas soluções</a>
      </div>

      <div class="terminal">
        <div class="terminal-bar">● ● ●</div>
        <p>> Inicializando segurança...</p>
        <p>> Firewall: ATIVO</p>
        <p>> Monitoramento: ATIVO</p>
        <p>> Ameaças detectadas: 0</p>
        <p>> Sistema protegido ✓</p>
      </div>
    </section>

    <section class="features" id="solucoes">
      <h2>Segurança em primeiro lugar</h2>

      <div class="cards">
        <div class="card">
          <h3>🛡️ Proteção</h3>
          <p>
            Proteja seus sistemas contra malware,
            ataques e acessos não autorizados.
          </p>
        </div>

        <div class="card">
          <h3>🔐 Dados seguros</h3>
          <p>
            Mantenha informações importantes protegidas
            com boas práticas de segurança digital.
          </p>
        </div>

        <div class="card">
          <h3>⚡ Monitoramento</h3>
          <p>
            Identifique comportamentos suspeitos e
            responda rapidamente às ameaças.
          </p>
        </div>
      </div>
    </section>

  </main>

  <footer id="contato">
    © 2026 CyberShield — Segurança digital para todos.
  </footer>

</body>
</html>
```
