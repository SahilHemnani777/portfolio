'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "a8ba672d93697971031015181d7008c3",
".git/config": "a0a133eb0efb2e2d40bd5f5f548aa68f",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "ff8292ae08e159dc349fe4d47bc3ea26",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "2b258733334777d94093b29835654c0d",
".git/logs/refs/heads/master": "2b258733334777d94093b29835654c0d",
".git/logs/refs/remotes/origin/master": "5fb31cb94b834441680a173e99103d94",
".git/objects/07/dd67adfa388784489e74c25dfa476f35c1f231": "99e79241b1a29c1fa8c41002eabe6e4d",
".git/objects/08/7b1396244e248b97724b036a64a65c7d9d28be": "ef539c73d179ade506aad7a255b7610d",
".git/objects/0d/f38eb8ed4077310ab4d5b8d2381043fd01bdf3": "85622a804c8c59f82b94b2cfe84b86ef",
".git/objects/1a/bf702e03157aa05aa931019704af49241b14a8": "1ffdc7f9feff9f7da047cb84720e730f",
".git/objects/1f/aa8d39d60db80c95e4381612744507a9df9381": "7f8eae0736558eba69ecb9c482ea1717",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/20/8343186b4851263c4ae7af11b19a937b5d3894": "40aeb63428c35e4ca982693036bd8c09",
".git/objects/20/d7d5854fa67e4fc7ebcb408f47217b1e413db5": "0e7b4383c9c0e90ddcaa346b42ac6c8f",
".git/objects/25/89ce253a06120d32af79e1a8f2e048070c3e79": "b77999c9ad840d80f05bf074497637e7",
".git/objects/25/cb4f23566ada3d8270617d6b05143717657e85": "9778feced3fbbfacd9edbccff2445afb",
".git/objects/2e/ce05770e192c6ec23420aef161079c709e9efd": "b0739a8ff449a2c98ad94ee5226d8281",
".git/objects/2f/f47a3bf480b9f4b2babb6ddb344f5b92793b59": "0cec7d38a71bfc1bcfd704eeb653a716",
".git/objects/38/bdfbe581e397a25aebee296bfd855a643097a1": "5628361f8b19a417fba2953d13db769f",
".git/objects/40/7aaa5db10d756fa87cae7c50093cbdcfe93ad7": "1570cd737fda44ad2493f60e4591aa8d",
".git/objects/46/41bcbe271f76d342f9128809290957f8a36b2b": "0a635f81eadbb9d19305f6332c96229f",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/46/7ccabd32d4fce6d40c4ff383612d48a3400ef4": "0d851999ad9a04342fe95444189849d5",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/objects/48/4659613ad7a2ac2b9cfff1ad4d5e7f53fc7b4f": "009b219746bedf00bdef89ffb6da960c",
".git/objects/49/ea8f5ba9252776c0a9e0ab37d21700b42e3b2b": "bbb57ccd02bb514f5721367f05009c02",
".git/objects/51/b1d9af5b81eaf01ff506f4ca458d0b3186f10a": "83ff68aedda91710bcd5b82ea425befe",
".git/objects/52/24b0f27bc110ece4783514ba06676f9e83d73f": "ae32b77f0bfa3110ef23bce4ea42dc78",
".git/objects/56/f60aaa8d698ded188510461beca97f3916cc44": "8912a331ebf7fca524545752dfaadd70",
".git/objects/5b/324e6eb0e5610c5a5d235f981ea886d69c5bb4": "4b3fc53568c13195298974440ccd57aa",
".git/objects/5e/e748c41e8ce41e9383b12428c2e6b94cfb67e8": "190ec3b6d4eff7f0fdfcf3deabff0e6a",
".git/objects/5f/bb1b8584a962e9631b575b87237316253523c6": "28f0f27acb5464cd8756b6fc34622adf",
".git/objects/68/93ebfddd657057bf372172f14842111303494f": "8d4a112bc2858b58c58623ac19c4ab6c",
".git/objects/77/e6a47a032f7bbe6c63006b9130c71c27f011bf": "80849772bb304828c01a5470a663f332",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7a/0e866c315887f2f562e9e12a4ee3e1ea8d2793": "effa3e8b5ff6cfe4680d39086b02793e",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/86/eacac0ac79cd2dd986b6fbb412dc6f516dcc66": "03fa35e543f4f69cd428a815a19b252a",
".git/objects/87/d29bc45cc9a02149b659174b88c0802699fda8": "be567f9a9682fb67dcbb066ee42be18b",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/e8178d0c9dc722bca87f525bcc3df9ed3e37e9": "7621626cd6b7bbf80a171c204d5406c8",
".git/objects/93/27a87247133104efb5dfe49ec52329323e405b": "db3f16fdf36879d0f7e8dc5db17d12e1",
".git/objects/94/90ffc6d2e158b266f719d58365905c1c5060cb": "98801650050f9fa10870b4e56c89676a",
".git/objects/98/5c7648ba2bd6e98aeb4cb066d02e7a14b1ca93": "e7a16966673eb737549c8c681e83aa10",
".git/objects/9a/bb3505001a8fe3cc3a570592d297bab652270e": "36b8fee7db4b3251d2c781e92fc0ba93",
".git/objects/9f/35f2bdf3c9eb5d8a8fd48dc81627082a1d03fa": "bde08a5ae7be55b0609dca9167ff8a6f",
".git/objects/9f/5d5dc750bb8a28d56be62836bf77d2f5ff9929": "c9545c298cab43c31e8a81fba3997331",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/5b82d822a6d7c2a0fd988ce9c529eefb896396": "b3b23123217320470e30592b04799bdd",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b0/a2d47ee00b96680c47ec7389a2a4a5f5b2fa53": "32faa0daf6fb08ea829bf134abe4e45a",
".git/objects/b2/2fdc40258aa82e413680e0f2ec1babc6fc566b": "025559d7e51c51e18eedbfa60e238acf",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/c6/75227755377317d0ccc5e0b25337d1fa3700ed": "6bbbd11d0ec0e42b00e606d48fe582e7",
".git/objects/c8/c08da8d26a191fe1632ca81f385def00bc6967": "c8cbe1be6d798a219f6066c571742e4c",
".git/objects/ca/6d8271b14373d4288181767a3b9eb93ea22a8f": "77649a6c3e86f714bf04be3d97166eab",
".git/objects/cb/617f4f418133cc629b73c4e896d4898bebee95": "a139d6de16b72137fdcea5f13d367986",
".git/objects/e4/69d6be13258d6cb555b9feb29e48a27f1e4cab": "d04c7b28cccb8760a6e43282b5d66f2b",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e8/991874e7bd2753cce76344392e11341a77f597": "58c622982d6e2b0d080a6af40c2e8861",
".git/objects/ed/957cffb231d21972553f27fdaf646d58df4af3": "c9249260024f3b3da9e956ba1fba02e1",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/f3/e6644dc039722d1fcd50ba6538355411b02255": "b3c6ab5d19a4b7c18d3637907759354b",
".git/refs/heads/master": "b836f677102abc1e6f0ad048506760f3",
".git/refs/remotes/origin/master": "b836f677102abc1e6f0ad048506760f3",
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
"assets/NOTICES": "b41897c0bb1a4afa612cd542497de438",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "da79a5b929f8369ebc8e9cfe93bbe168",
"/": "da79a5b929f8369ebc8e9cfe93bbe168",
"main.dart.js": "6361f964aa5c79f91b45ea4fb43683d7",
"manifest.json": "31c82aebb21c2376939297e72e92d77f",
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
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
