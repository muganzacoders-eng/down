const corsOptions = {
  origin: [
    'https://www.relysi.com',
    'https://uprelysi.vercel.app',
    'http://localhost:3000',
    'https://your-production-domain.com'
  ],
  credentials: true,
  optionsSuccessStatus: 200
};


module.exports = corsOptions;
