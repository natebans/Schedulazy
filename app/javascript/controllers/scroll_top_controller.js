
import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  connect() {
    window.addEventListener('scroll', this.handleScroll.bind(this));
  }

  disconnect() {
    window.removeEventListener('scroll', this.handleScroll.bind(this));
  }

  handleScroll() {
    const threshold = 100;
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    const button = this.element;

    if (scrollTop > threshold) {
      button.classList.add('is-visible');
    } else {
      button.classList.remove('is-visible');
    }
  }

  scrollToTop() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  }
}
