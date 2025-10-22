/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{html,js,ts,jsx,tsx}", // include other directories if used
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter', 'ui-sans-serif', 'system-ui'],
      },
      colors: {
        // Match your gradient & accent colors
        primary: "#1e40af",   // Deep blue (used in gradients, borders, focus)
        secondary: "#3b82f6", // Lighter blue for overlay blends
        accent: "#9333ea",    // Purple accent
        gold: "#f59e0b",      // Amber accent (used in gradients/glow)
        dark: "#111827",      // Text or dark background
        light: "#f9fafb",     // Light background
      },
      boxShadow: {
        glow: "0 0 40px rgba(30, 64, 175, 0.7)",
        soft: "0 8px 32px rgba(0, 0, 0, 0.08)",
      },
      keyframes: {
        gradientShift: {
          "0%, 100%": { backgroundPosition: "0% 50%" },
          "50%": { backgroundPosition: "100% 50%" },
        },
        float: {
          "0%, 100%": { transform: "translate(0, 0) scale(1)", opacity: "0.3" },
          "25%": { transform: "translate(100px, -100px) scale(1.2)", opacity: "0.6" },
          "50%": { transform: "translate(-50px, -200px) scale(0.8)", opacity: "0.4" },
          "75%": { transform: "translate(150px, -150px) scale(1.1)", opacity: "0.5" },
        },
        pulseGlow: {
          "0%, 100%": { boxShadow: "0 0 20px rgba(30, 64, 175, 0.4)" },
          "50%": { boxShadow: "0 0 40px rgba(30, 64, 175, 0.7)" },
        },
      },
      animation: {
        gradientShift: "gradientShift 8s ease infinite",
        float: "float 15s ease-in-out infinite",
        pulseGlow: "pulseGlow 2s ease-in-out infinite",
      },
    },
  },
  plugins: [],
};
