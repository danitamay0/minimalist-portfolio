import { defineConfig } from 'astro/config';
import tailwind from "@astrojs/tailwind";
import node from "@astrojs/node"; // Importar adaptador para Node.js

export default defineConfig({
  integrations: [tailwind()],
  output: "server", // Asegurar que Astro genere un servidor
  adapter: node({ mode: 'standalone' }), // Configurar Astro para Node.js
  server: {
    host: '0.0.0.0'
  },
});
