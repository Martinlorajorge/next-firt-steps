import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'About' + new Date().toString(), // esto se va a ver en la pestaña del about
  description: 'About page',
  keywords: ['About', 'Este es el About'],
};

const AboutPage = () => {
  return <span className='text-7xl'>About Page!!!</span>;
};

export default AboutPage;
