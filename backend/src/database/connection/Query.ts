import fs from 'fs';
import path from 'path';
import { Pool } from 'mysql2/promise';
import connection from './ConnectDB';

export const readQueries = (filePath = '../sql/schema.sql') => {
  const importPath = path.resolve(__dirname, filePath);
  const seedDbContent = fs.readFileSync(importPath).toString();
  const queries = seedDbContent.split(';').filter((query) => query.trim());
  return queries;
};

export const executeQeuries = async(conn: Pool, queries = readQueries()) => {
  try {
    for(let i = 0; i < queries.length; i++) {
      const query = queries[i];
      await conn.query(query);
    }
  }catch(err) {
    console.error('Failed to execute querie', err);
  }
  if(require.main === module) {
    executeQeuries(connection).then(async () => console.info('Success to execute queries'));
    await connection.end();
    process.exit(0);
  }
};
