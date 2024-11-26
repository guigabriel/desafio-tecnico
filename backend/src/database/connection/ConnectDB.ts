import mysql from 'mysql2/promise';
import { executeQeuries, readQueries } from './Query';

const connection = mysql.createPool({
  host:'127.0.0.1',
  user:'user',
  password:'password',
  database:'taxi_db',
  port: 3306
});

const upDatabase = readQueries('../sql/schema.sql');
executeQeuries(connection, upDatabase).then(() => executeQeuries(connection));


export default connection;
