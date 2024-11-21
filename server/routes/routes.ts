import { Router } from 'express';

const router = Router();

// Base route directs the user to the API documentation
router.get('/', (req, res) => {
  res.send('API is running');
});

export default router;