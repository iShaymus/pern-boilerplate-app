import express, { Request, Response } from 'express';
import cors from 'cors';
import routes from './routes/routes';

const app = express();
const port = process.env.SERVER_PORT || 5000;

app.use(express.json());
app.use(cors());
app.use('/api', routes);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});