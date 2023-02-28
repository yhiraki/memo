const hljsStyleSheet = document.getElementById("hljs-css");
const hljsCssBaseUrl =
  "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.7.0/styles/";

const colorScheme =
  window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches
    ? "dark"
    : "light";
hljsStyleSheet.setAttribute(
  "href",
  `${hljsCssBaseUrl}tokyo-night-${colorScheme}.min.css`
);

hljs.configure({
  cssSelector: ".src",
  languageDetectRe: /\bsrc-([\w-]+)\b/i,
});
hljs.highlightAll();
