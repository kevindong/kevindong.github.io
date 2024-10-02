# kevindong.github.io

This repo consists of the source files of my personal website. To see it live, go [here](http://www.kevindong.net).

I used to "maintain" a "custom" website, but I didn't really enjoy it. So nowadays, I more-or-less just have this up for people who don't want to go to my [LinkedIn](https://www.linkedin.com/in/dong70) for whatever reason. 

My website's mostly just my resume and a bunch of utilities/config files that I find useful. I generate the homepage HTML with the following and paste the result into `index.html`. 

```sh
gh api --method POST -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" /markdown -F 'text=@index.md' | pbcopy
```

## License

MIT License. 