'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "2ad3b71e75c71cab69641beab581137e",
"assets/assets/dart_syntax.json": "c2a7c095c1d669f64dccba5e0d533575",
"assets/assets/data/search/history.json": "1a6e48e2f445a2ad796dccd54507ffbe",
"assets/assets/data/search/result.json": "99d8d178806416bc1fc19594db32d438",
"assets/assets/fonts/iconfont.ttf": "62f7948c199847661f3d31e4016ad979",
"assets/assets/image/htw.jpg": "ed2ee4c1152ba15889a0681bd89261c3",
"assets/assets/image/wth.jpg": "703d82ea43b2f64b4f938c5c7537ccb6",
"assets/assets/image/wxGroup.jpg": "601a0fb005e5d7fff025b766d931fe64",
"assets/assets/logo.png": "d91c275a6c318e104466a6b01dcd3287",
"assets/assets/md/material/basic/button/all.md": "a017a1430b1eb6c9c40173c6427526f4",
"assets/assets/md/material/basic/button/ElevatedButton.md": "561169af5161873b8e644680befe4f9c",
"assets/assets/md/material/basic/button/FloatingActionButton.md": "6b4e5261ea4613e8fea4cb1b62cd2c72",
"assets/assets/md/material/basic/button/IconButton.md": "195489906d53ad3a7a65b3939c4769d6",
"assets/assets/md/material/basic/button/MaterialButton.md": "777af11f4e181ea7c0ec25e9a4969d70",
"assets/assets/md/material/basic/button/OutlinedButton.md": "0e68a5b19ca1cf22b5d2fa70a3644113",
"assets/assets/md/material/basic/button/RawMaterialButton.md": "d3d126d7d8bf3208505ecd1d34159d60",
"assets/assets/md/material/basic/button/TextButton.md": "be63ff29306cbaf55b8f599e040b6dd3",
"assets/assets/md/material/basic/Container.md": "6f5d463de5060b34ad2dde363f9666c0",
"assets/assets/md/material/basic/Image.md": "ecee1138a4f5a5414d769d5e0e2dfe97",
"assets/assets/md/material/basic/Text.md": "c4ac39380d504a83c15a4b6daf7753d9",
"assets/assets/md/material/display/DataTable.md": "311b1f17967c97be28253fbf8a79320c",
"assets/assets/md/material/display/ExpansionTile.md": "d59dca4ba2b88c625e639b6142118521",
"assets/assets/md/material/display/GridTile.md": "bfd18a1319aad6e7a0ae3e3b5ded9eef",
"assets/assets/md/material/display/ListTile.md": "3c4b72b12ce34689d9fd8f9e9282959d",
"assets/assets/md/material/display/Progress.md": "5207f2a35941f915b1bbd5324e954777",
"assets/assets/md/material/display/ReorderableListView.md": "f53e32a263ae9065f94816bb7047fa31",
"assets/assets/md/material/display/UserAccountsDrawerHeader.md": "27d0cc2ad23197516bd183a608a6ce12",
"assets/assets/md/material/feedback/SnackBar.md": "033f4e03c24bac24b90fd459cd12488b",
"assets/assets/md/material/feedback/Tooltip.md": "d00124a7ec15031e436e206fdde87a48",
"assets/assets/md/material/form/Autocomplete.md": "f5cfb7885ffb8028cf89ae7a4187acd8",
"assets/assets/md/material/form/Checkbox.md": "3ed73fef1bcc127dab2484dc9e120520",
"assets/assets/md/material/form/DateTime.md": "6f55bfc1f917cdda16a2b5a7a86152aa",
"assets/assets/md/material/form/Input.md": "ad1c47e32c54a120788222690123c6ce",
"assets/assets/md/material/form/Radio.md": "d7ede56e786ba8fe3a99f915240a0712",
"assets/assets/md/material/form/Select.md": "ac4a01fa11efd5333cf4d0c8512b1877",
"assets/assets/md/material/form/Slider.md": "1e14488e4c0ce7e752d02a2ff261f66c",
"assets/assets/md/material/form/Swatch.md": "72a908d749dcffe69162cd646bd67487",
"assets/assets/md/material/form.md": "cb11d81f56529af3c7101f7b12f8621d",
"assets/assets/md/material/layout/LayoutDemo.md": "c1aa3554c4746edb8a221f203edbb9ba",
"assets/assets/md/material/layout/RowColumn.md": "6cf323b7886da0e7fc634f1bd758aa7d",
"assets/assets/md/material/layout/Scaffold.md": "386d7b2593b7aeefa7efaf1916f23400",
"assets/assets/md/material/layout/show.md": "3e177b9ea759ef4dc01a89d2ba587e4b",
"assets/assets/md/material/navigation/NavigationBar.md": "bb145df8b4ec9a2bd9728f47ce0673f8",
"assets/assets/md/material/navigation/NavigationRail.md": "c0578f1dba53c89063ff87541f08c7bf",
"assets/assets/md/material/navigation/PlatformMenuBar.md": "907ae5cfef91c4a9519e7fea7476dbda",
"assets/assets/md/material/navigation/PopupMenuButton.md": "836e182eaed38f1b7a1841717a459af1",
"assets/assets/md/material/navigation/Stepper.md": "7afdf171409c0b9ecc890ca083373f0e",
"assets/assets/md/material/navigation/Tabs.md": "e890cbf7b4f9d23339011d1d23bb080d",
"assets/assets/md/material/quick_start/about.md": "f03c6e340780a4e526fce21be2769196",
"assets/assets/md/material/quick_start/about_this.md": "2e4c381efc4b08f2d63a9c4fad934655",
"assets/assets/md/material/quick_start/all.md": "8da26aec9c0c942f1d38c321f670840f",
"assets/FontManifest.json": "e0bab9a27a85d940f3f5a39b709d6a32",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "4473d67aa73aee23041b522460be9045",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "46c8a33bd15691376c3dd7396be00522",
"/": "46c8a33bd15691376c3dd7396be00522",
"main.dart.js": "d1d020728ec330b80c0313f7cd49536b",
"manifest.json": "1de6618f9cda5d37ce44585544c2f0d8",
"version.json": "1c40fbcd935b7d0d5bc1bb130881da20"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
