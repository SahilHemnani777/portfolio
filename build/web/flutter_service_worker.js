'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "5eab9ea25d5081e382f3288f456bf628",
"assets/assets/images/41perBG.png": "303472e02d09670f9f39961f3be88700",
"assets/assets/images/android.png": "9709426e6d872048da7335a7b19bd768",
"assets/assets/images/background.png": "a316c661b11014286970661c25d416b8",
"assets/assets/images/bakda.gif": "d730c3cf191840f03f36c44f186f535d",
"assets/assets/images/brain.gif": "e0024b1df17ee4abf5e33edaae4ca53d",
"assets/assets/images/chatting.gif": "6043fa6bbffa0f1672a589e89163f050",
"assets/assets/images/chatting.png": "826ac7333958a30f186ac006564d774f",
"assets/assets/images/circle_sahil.png": "f19ae9acb13f1ce400884f790fa4d365",
"assets/assets/images/cpp.png": "8f42e018a9340b6e4e20161b06525308",
"assets/assets/images/dart.png": "4a1a3a9a5e33f69c1e97c71dc416c62b",
"assets/assets/images/down.png": "e85489df136f6699942c6c54d88bc8c1",
"assets/assets/images/firebase.png": "d12cf916a663b52d01d2e0bbb2e7c18a",
"assets/assets/images/flutter.png": "a00677017d2125bae828c751e4cb8f51",
"assets/assets/images/gcloud.png": "2ca1d797f8f0dd1c7f78200c5ce961b8",
"assets/assets/images/github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/images/instagram.png": "c21cddec8bbdb7bec9269d18371f8acc",
"assets/assets/images/java.png": "4eb1819dc863ef386e09d86e9f482a9f",
"assets/assets/images/kotlin.png": "7bae254bba26979ce1d52f914861c919",
"assets/assets/images/linkedIn.png": "72d9652163a94a8655fcca25f0e5bc17",
"assets/assets/images/mail.png": "ec142f93f56ee68be649558ad3266669",
"assets/assets/images/medium.png": "ca26226d1dd8129e83ee4f8df21bae32",
"assets/assets/images/mysql.png": "88430eff1740a636fe317e955e31ef5b",
"assets/assets/images/night.gif": "11a02cb6a8b2216188b6b4e75b8ba69f",
"assets/assets/images/phone.png": "29896041a9e1cfcead1f7255259f42c6",
"assets/assets/images/portfolio.png": "653d6a7d0a53fe406a508e1506fbdf1b",
"assets/assets/images/pygames.png": "e44bdcc9d1f785d63416e3e121b15470",
"assets/assets/images/python.png": "9ae7d0c2a37c4626d2ea58f615906814",
"assets/assets/images/rahul.png": "9cb900ff6ef4e71f79d32d0ed679fd92",
"assets/assets/images/resume.jpg": "08e9d8a834befbe0e7ba8d2d5b92867d",
"assets/assets/images/sahil.png": "5e06120a95ea8d8f86db5082897ca904",
"assets/assets/images/sklearn.png": "3085d5c79de5011556f10f6ad78bd81e",
"assets/assets/images/sqlite.png": "f697ba0c9244a5495766983a27636ff4",
"assets/assets/images/sudoku.png": "4cff56480a853a8aaf5847d103c1d01b",
"assets/assets/images/test.gif": "c7d32c03f4a3adbf6c26eb750ccfaacd",
"assets/assets/images/twitter.png": "e08259cf9701439815b59c534cebc18d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "735332fd9c913adf674aea5c5b9c8070",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "993cb835064246f4420febb8520500d4",
"/": "993cb835064246f4420febb8520500d4",
"main.dart.js": "c0a632f172898f959f23ec6170cac7da",
"manifest.json": "5a2c0526f1fe73e6f211bc7a9d15c210",
"version.json": "426313f2f3133c2f20415344c4a22df3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
