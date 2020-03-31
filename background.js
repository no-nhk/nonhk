'use strict'

chrome.webRequest.onBeforeRequest.addListener(
    (info) => {
      // console.log(`requested: ${info.url}`)
      return { cancel: true }
    },
    {
      urls: [
        '*://plus.nhk.jp/*',
      ],
    },
    ['blocking']);
