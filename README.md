# Hack Delft website 2026

The website for the Hack delft hackathon. This years theme is Hack on the beaCH!

## Developing

Once you've created a project and installed dependencies with `npm install` (or `pnpm install` or `yarn`), start a development server:

```sh
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Building

To create a production version of the website:
```
$ npm run build
```

## Deploy
This website is deployed with a docker image, to run the dockerfile, use:

```
$ docker run -p 3000:3000 hack-delft-2026
```
