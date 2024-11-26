import app from "./app";
import connectionDatabase from '../database/connection/ConnectDB'


const PORT = 8080;

connectionDatabase
  .getConnection()
  .then(() => {
    app.listen(PORT, () => console.log("--> Serviços iniciados <--"));
  })
  .catch((err) =>  {
    console.log('Connection with database generated an error: \r\n ');
    console.error(err)
    process.exit(0) 
  });

