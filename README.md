# Home Assistant NodeJS Backend

This addon simply does the following:
- Clone / Pull / Replaces repository with configured url
- Runs `npm install` on repository 
- Runs `npm start` on repository

Your NodeJS application should only use port 3000 as that's the port being exposed on the docker image.
