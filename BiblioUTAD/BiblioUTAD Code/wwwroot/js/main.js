/*=============== LOGIN ===============*/
const loginButton = document.getElementById('login-button'),
    loginClose = document.getElementById('login-close'),
    loginContent = document.getElementById('login-content');

/* LOGIN aparece */
if (loginButton && loginContent) {
    loginButton.addEventListener('click', () => {
        loginContent.classList.add('show-login');
    });
}

/* LOGIN esconde */
if (loginClose && loginContent) {
    loginClose.addEventListener('click', () => {
        loginContent.classList.remove('show-login');
    });
}

/*=============== Home SWIPER ===============*/
if (document.querySelector('.home__swiper')) {
    let swiperHome = new Swiper('.home__swiper', {
        loop: true,
        spaceBetween: -24,
        grabCursor: true,
        slidesPerView: 'auto',
        centeredSlides: 'auto',
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        breakpoints: {
            1220: {
                spaceBetween: -32,
            }
        }
    });
}

/*=============== Catalogo SWIPER ===============*/
if (document.querySelector('.new__swiper')) {
    let swiperNew = new Swiper('.new__swiper', {
        loop: true,
        spaceBetween: 16,
        slidesPerView: 'auto',
        breakpoints: {
            1150: {
                slidesPerView: 3,
            }
        }
    });
}

/*==================== Utilizadores Admin ====================*/
function preencherEmail() {
    const nomeInput = document.getElementById("nome");
    const emailInput = document.getElementById("email");

    if (nomeInput && emailInput) {
        if (nomeInput.value.trim()) {
            emailInput.value = `${nomeInput.value.trim().toLowerCase()}@adminbiblioutad.com`;
        } else {
            emailInput.value = "";
        }
    }
}

/*=============== SHOW SCROLL UP ===============*/
const scrollUp = () => {
    const scrollUp = document.getElementById('scroll-up');
    if (scrollUp) {
        this.scrollY >= 350 ? scrollUp.classList.add('show-scroll')
            : scrollUp.classList.remove('show-scroll');
    }
};
window.addEventListener('scroll', scrollUp);

/*=============== SCROLL SECTIONS ACTIVE LINK ===============*/
const sections = document.querySelectorAll('section[id]');

const scrollActive = () => {
    const scrollDown = window.scrollY;

    sections.forEach(current => {
        const sectionHeight = current.offsetHeight,
            sectionTop = current.offsetTop - 58,
            sectionId = current.getAttribute('id'),
            sectionsClass = document.querySelector('.nav__menu a[href*=' + sectionId + ']');

        if (sectionsClass) {
            if (scrollDown > sectionTop && scrollDown <= sectionTop + sectionHeight) {
                sectionsClass.classList.add('active-link');
            } else {
                sectionsClass.classList.remove('active-link');
            }
        }
    });
};
window.addEventListener('scroll', scrollActive);

/*=============== DARK LIGHT THEME ===============*/
const themeButton = document.getElementById('theme-button');
const darkTheme = 'dark-theme';
const iconTheme = 'ri-sun-line';

if (themeButton) {
    const selectedTheme = localStorage.getItem('selected-theme');
    const selectedIcon = localStorage.getItem('selected-icon');

    const getCurrentTheme = () => document.body.classList.contains(darkTheme) ? 'dark' : 'light';
    const getCurrentIcon = () => themeButton.classList.contains(iconTheme) ? 'ri-moon-line' : 'ri-sun-line';

    if (selectedTheme) {
        document.body.classList[selectedTheme === 'dark' ? 'add' : 'remove'](darkTheme);
        themeButton.classList[selectedIcon === 'ri-moon-line' ? 'add' : 'remove'](iconTheme);
    }

    themeButton.addEventListener('click', () => {
        document.body.classList.toggle(darkTheme);
        themeButton.classList.toggle(iconTheme);
        localStorage.setItem('selected-theme', getCurrentTheme());
        localStorage.setItem('selected-icon', getCurrentIcon());
    });
}

/*=============== SCROLL REVEAL ANIMATION ===============*/
if (typeof ScrollReveal !== 'undefined') {
    const sr = ScrollReveal({
        origin: 'top',
        distance: '60px',
        duration: 2500,
        delay: 400,
    });

    sr.reveal(`.home__data, .new_container, .join__data, .footer`);
    sr.reveal(`.home__images`, { delay: 600 });
    sr.reveal(`.servios__card`, { interval: 100 });
    sr.reveal(`.catalogo__data`, { origin: 'left' });
    sr.reveal(`.catalogo__images`, { origin: 'right' });
}