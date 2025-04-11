document.addEventListener("DOMContentLoaded", () => {
    const menu = document.getElementById("navbarCategories");
  
    if (!menu) return;
  
    // Scroll suave + fecha o menu mobile ao clicar em qualquer link interno
    document.querySelectorAll('a[href^="#"]').forEach(link => {
      link.addEventListener("click", function (e) {
        const target = document.querySelector(this.getAttribute("href"));
  
        if (target) {
          e.preventDefault();
  
          // Scroll suave
          const offsetTop = target.offsetTop - 70;
          window.scrollTo({
            top: offsetTop,
            behavior: "smooth"
          });
  
          // Fecha menu mobile se estiver aberto
          if (window.innerWidth < 992 && menu.classList.contains("show")) {
            const collapse = bootstrap.Collapse.getInstance(menu);
            if (collapse) collapse.hide();
          }
        }
      });
    });
  });
  