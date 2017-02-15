From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: add extcon dependency for DP
Date: Wed, 15 Feb 2017 09:06:15 +0800
Message-ID: <58A3A987.9020001@rock-chips.com>
References: <20170214213215.2888509-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170214213215.2888509-1-arnd@arndb.de>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Arnd Bergmann <arnd@arndb.de>, David Airlie <airlied@linux.ie>
Cc: Tobias Jakobi <tjakobi@math.uni-bielefeld.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chris Zhong <zyw@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxN+W5tDAy5pyIMTXml6UgMDU6MzEsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gVGhlIG5l
d2x5IGFkZGVkIERQIGRyaXZlciBsaW5rcyBhZ2FpbnN0IHRoZSBleHRjb24gY29yZSwgd2hpY2gg
ZmFpbHMgd2hlbgo+IGV4dGNvbiBpcyBhIG1vZHVsZSBhbmQgdGhpcyBkcml2ZXIgaXMgbm90Ogo+
Cj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLm86IEluIGZ1bmN0aW9uIGBj
ZG5fZHBfZ2V0X3BvcnRfbGFuZXMnOgo+IGNkbi1kcC1jb3JlLmM6KC50ZXh0LmNkbl9kcF9nZXRf
cG9ydF9sYW5lcysweDI0KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgZXh0Y29uX2dldF9zdGF0
ZScKPiBjZG4tZHAtY29yZS5jOigudGV4dC5jZG5fZHBfZ2V0X3BvcnRfbGFuZXMrMHg0NCk6IHVu
ZGVmaW5lZCByZWZlcmVuY2UgdG8gYGV4dGNvbl9nZXRfcHJvcGVydHknCj4KPiBMZXQncyBtYWtl
IEtjb25maWcgZW5mb3JjZSBjb3JyZWN0IGJlaGF2aW9yIHdpdGggYSBkZXBlbmRlbmN5LgoKVGhh
bmtzIGZvciB0aGUgZml4LgoKQXBwbGllZCB0byBteSBkcm0tbmV4dC4KCj4gRml4ZXM6IDFhMGY3
ZWQzYWJlMiAoImRybS9yb2NrY2hpcDogY2RuLWRwOiBhZGQgY2RuIERQIHN1cHBvcnQgZm9yIHJr
MzM5OSIpCj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIHwgMSArCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4gaW5k
ZXggYWQzMWIzZWI0MDhmLi4wZTRlYjg0NWNiYjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2Nv
bmZpZwo+IEBAIC0yNCw2ICsyNCw3IEBAIGNvbmZpZyBST0NLQ0hJUF9BTkFMT0dJWF9EUAo+ICAg
Y29uZmlnIFJPQ0tDSElQX0NETl9EUAo+ICAgICAgICAgICB0cmlzdGF0ZSAiUm9ja2NoaXAgY2Ru
IERQIgo+ICAgICAgICAgICBkZXBlbmRzIG9uIERSTV9ST0NLQ0hJUAo+ICsJZGVwZW5kcyBvbiBF
WFRDT04KPiAgIAlzZWxlY3QgU05EX1NPQ19IRE1JX0NPREVDIGlmIFNORF9TT0MKPiAgICAgICAg
ICAgaGVscAo+ICAgCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFNvQyBzcGVj
aWZpYyBleHRlbnNpb25zCgoKLS0gCu+8rWFyayBZYW8KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
