const colorScheme =
  window.matchMedia &&
  window.matchMedia("(prefers-color-scheme: light)").matches
    ? "light"
    : "dark";
const hljsStyleSheet = document.getElementById("hljs-css");
const hljsCssUrl = `https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/tokyo-night-${colorScheme}.min.css`;

hljsStyleSheet.setAttribute("href", hljsCssUrl);

hljs.configure({
  cssSelector: ".src",
  languageDetectRe: /\bsrc-([\w-]+)\b/i,
});
hljs.highlightAll();
