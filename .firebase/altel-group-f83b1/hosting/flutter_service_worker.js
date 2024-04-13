'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "58bc3dd9c1244ff8c835dd1f94cd2627",
"index.html": "d6e3fe21740acd002312e1e793fab184",
"/": "d6e3fe21740acd002312e1e793fab184",
"main.dart.js": "c4efa6a4ba1a1746161bae9e4ab0a7e4",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d89b69232b0eb0ab21f5a48a0abab3f9",
"assets/images/new2.jpg": "e63c4ae628ee2e5022085d91486d8ad7",
"assets/images/gear.png": "d534b72548198fe4c3611de98ff470be",
"assets/images/slider.jpg": "178ff9aa1417e51580d997316e33fe22",
"assets/images/szyb2.jpg": "cd5b1b68ab60d30c1b4132e765676228",
"assets/images/new3.jpg": "32174e9d1cec965a94eb75571cd482c0",
"assets/images/new1.jpg": "d4b0700442d5d8b58b962bb5d3536134",
"assets/images/goal.png": "41ea3dd439004e55738b162f236e3935",
"assets/images/suwnica3.png": "fb88ab22ab3bd85f82cfcf6f8ff9f323",
"assets/images/plans.png": "830f4fc3e64d3f6143f2269fb650b573",
"assets/images/electric.jpg": "7552325d2cf4027cf1b03a45320122b0",
"assets/images/safety.png": "3025758d66febf29c2502ba8cfcdc136",
"assets/images/pointer.png": "48b209b51c67938900a7b6b94aef3690",
"assets/images/suwnica.jpg": "62df5f73096a38a0277064445404dd33",
"assets/images/dzwigisterowanie.png": "9a791ffd5ba299bceb61792dc1b234c5",
"assets/images/Services.jpeg": "584ef5501a1b4244aec5d83acf7d5409",
"assets/images/im3.jpg": "95e2ab397e14ac9ac7a125ba9fc4c4bf",
"assets/images/offerimage3.jpg": "cdc2c57e9c7aa8dafe40d357075762fd",
"assets/images/offerimage.jpg": "e0ae1a3efc2a30e6ec1b47a30b539e56",
"assets/images/technology.png": "9bc831326da05666c0d95de13e9f1c08",
"assets/images/offerimage2.jpg": "059f9f6ff0636e62f1a210e917257f9e",
"assets/images/logo1.png": "643d2ddb9d8a536fda4be012b3e9ba06",
"assets/images/logo3.png": "773e025d3aacfcf79ef4416535959931",
"assets/images/1000s.jpg": "88f17ea2310e4d23a8e26f79d176c667",
"assets/images/wozek.jpg": "64006895ff96dafe7ad2abddf523ef15",
"assets/images/elevator.png": "4ee9683a736e287c72352690e60337cb",
"assets/images/willchair.jpg": "9596b47a0985175ae31f8413ea977592",
"assets/images/logo.png": "9e964ed40841a299b250df5c4de48252",
"assets/images/offerimage1.jpg": "14f0eb654275f6e002994b6f0c2fdc4b",
"assets/images/handshake.png": "1a7c7e7b0a7de3fa557a31c2415e7802",
"assets/images/wozek3.png": "c665cd7ad79f5798ee1ec9412aae0065",
"assets/images/mapa.png": "9e31384a325b681285a1f75cb1d20d49",
"assets/images/wozek2.jpg": "6aa645f5480011877edbe7a098e665f6",
"assets/images/image1.jpg": "19a2d2cfa836bdae10869b0de8055cad",
"assets/images/firm.png": "932c60f632070eaea5cbf20edb3cc691",
"assets/AssetManifest.json": "0685e9fadbfb0e1918e81d6bbbbfbbb0",
"assets/NOTICES": "3fbadbdf32993185677a15f97fd5ad99",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "65f40d380649301c426fd6aa795d874b",
"assets/fonts/MaterialIcons-Regular.otf": "26115c55808f229cab497244f535e62c",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
