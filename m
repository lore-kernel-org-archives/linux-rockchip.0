From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Date: Mon, 2 Sep 2019 13:57:58 +0200
Message-ID: <9e049910-3f7a-a65c-c329-97865e35c8cc@baylibre.com>
References: <20190902035435.44463-1-cychiang@chromium.org>
 <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
 <HE1PR06MB4011E2F58875F30446D902BFACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <HE1PR06MB4011E2F58875F30446D902BFACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jonas Karlman <jonas@kwiboo.se>, Cheng-Yi Chiang <cychiang@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>, "tzungbi@chromium.org" <tzungbi@chromium.org>, "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>, "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "airlied@linux.ie" <airlied@linux.ie>, "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>, "dianders@chromium.org" <dianders@chromium.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>, "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>, "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, "dgreid@chromium.org" <dgreid@chromium.org>, "sam@ravnborg.org" <sam@ravnborg.org>, linux-arm-kernel@lists.infrad
List-Id: linux-rockchip.vger.kernel.org

T24gMDIvMDkvMjAxOSAxMjozMiwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBPbiAyMDE5LTA5LTAy
IDExOjQyLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4gSGksCj4+Cj4+IE9uIDAyLzA5LzIwMTkg
MDU6NTQsIENoZW5nLVlpIENoaWFuZyB3cm90ZToKPj4+IEluIHRoZSBkZXNpZ253YXJlIGRhdGFi
b29rLCB0aGUgc2VxdWVuY2Ugb2YgZW5hYmxpbmcgYXVkaW8gY2xvY2sgYW5kCj4+PiBzZXR0aW5n
IGZvcm1hdCBpcyBub3QgY2xlYXJseSBzcGVjaWZpZWQuCj4+PiBDdXJyZW50bHksIGF1ZGlvIGNs
b2NrIGlzIGVuYWJsZWQgaW4gdGhlIGVuZCBvZiBod19wYXJhbSBvcHMgYWZ0ZXIKPj4+IHNldHRp
bmcgZm9ybWF0Lgo+Pj4KPj4+IE9uIHNvbWUgbW9uaXRvcnMsIHRoZXJlIGlzIGEgcG9zc2liaWxp
dHkgdGhhdCBhdWRpbyBkb2VzIG5vdCBjb21lIG91dC4KPj4+IEZpeCB0aGlzIGJ5IGVuYWJsaW5n
IGF1ZGlvIGNsb2NrIGluIGF1ZGlvX3N0YXJ0dXAgb3BzCj4+PiBiZWZvcmUgaHdfcGFyYW0gb3Bz
IHNldHRpbmcgZm9ybWF0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENoZW5nLVlpIENoaWFuZyA8
Y3ljaGlhbmdAY2hyb21pdW0ub3JnPgo+Pj4gUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24g
PGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPj4+IFJldmlld2VkLWJ5OiBKb25hcyBLYXJsbWFuIDxq
b25hc0Brd2lib28uc2U+Cj4+PiBUZXN0ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJz
QGNocm9taXVtLm9yZz4KPj4+IC0tLQo+Pj4gIENoYW5nZXMgZnJvbSB2MToKPj4+ICAxLiBNb3Zl
IGF1ZGlvX3N0YXJ0dXAgdG8gdGhlIGZyb250IG9mIGF1ZGlvX3NodXRkb3duLgo+Pj4gIDIuIEZp
eCB0aGUgaW5kZW50YXRpb24gb2YgYXVkaW9fc3RhcnR1cCBlcXVhbCBzaWduIHVzaW5nIHRhYi4K
Pj4+ICAzLiBSZWJhc2UgdGhlIHBhdGNoIG9uIGxpbnV4LW5leHQvbWFzdGVyLgo+Pj4gIDQuIEFk
ZCBSZXZpZXdlZC1ieSBhbmQgVGVzdGVkLWJ5IGZpZWxkcyBmcm9tIGRpYW5kZXJzQGNocm9taXVt
Lm9yZy4KPj4+ICA1LiBBZGQgUmV2aWV3ZWQtYnkgZmllbGQgZnJvbSBqb25hc0Brd2lib28uc2Uu
Cj4+Pgo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1pMnMtYXVk
aW8uYyB8IDkgKysrKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWktaTJzLWF1ZGlvLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkt
aTJzLWF1ZGlvLmMKPj4+IGluZGV4IDFkMTVjZjliNjgyMS4uMzRkOGU4Mzc1NTVmIDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWkycy1hdWRp
by5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktaTJz
LWF1ZGlvLmMKPj4+IEBAIC0xMDksNiArMTA5LDE0IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9pMnNf
aHdfcGFyYW1zKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPj4+ICAJaGRtaV93cml0
ZShhdWRpbywgY29uZjAsIEhETUlfQVVEX0NPTkYwKTsKPj4+ICAJaGRtaV93cml0ZShhdWRpbywg
Y29uZjEsIEhETUlfQVVEX0NPTkYxKTsKPj4+ICAKPj4+ICsJcmV0dXJuIDA7Cj4+PiArfQo+Pj4g
Kwo+Pj4gK3N0YXRpYyBpbnQgZHdfaGRtaV9pMnNfYXVkaW9fc3RhcnR1cChzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEpCj4+PiArewo+Pj4gKwlzdHJ1Y3QgZHdfaGRtaV9pMnNfYXVkaW9f
ZGF0YSAqYXVkaW8gPSBkYXRhOwo+Pj4gKwlzdHJ1Y3QgZHdfaGRtaSAqaGRtaSA9IGF1ZGlvLT5o
ZG1pOwo+Pj4gKwo+Pj4gIAlkd19oZG1pX2F1ZGlvX2VuYWJsZShoZG1pKTsKPj4+ICAKPj4+ICAJ
cmV0dXJuIDA7Cj4+PiBAQCAtMTUzLDYgKzE2MSw3IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9pMnNf
Z2V0X2RhaV9pZChzdHJ1Y3Qgc25kX3NvY19jb21wb25lbnQgKmNvbXBvbmVudCwKPj4+ICAKPj4+
ICBzdGF0aWMgc3RydWN0IGhkbWlfY29kZWNfb3BzIGR3X2hkbWlfaTJzX29wcyA9IHsKPj4+ICAJ
Lmh3X3BhcmFtcwk9IGR3X2hkbWlfaTJzX2h3X3BhcmFtcywKPj4+ICsJLmF1ZGlvX3N0YXJ0dXAg
ID0gZHdfaGRtaV9pMnNfYXVkaW9fc3RhcnR1cCwKPj4+ICAJLmF1ZGlvX3NodXRkb3duCT0gZHdf
aGRtaV9pMnNfYXVkaW9fc2h1dGRvd24sCj4+PiAgCS5nZXRfZWxkCT0gZHdfaGRtaV9pMnNfZ2V0
X2VsZCwKPj4+ICAJLmdldF9kYWlfaWQJPSBkd19oZG1pX2kyc19nZXRfZGFpX2lkLAo+Pj4KPj4g
TG9va3Mgc2FuZSwgSm9uYXMgc2hvdWxkIEkgYXBwbHkgaXQgbm93IGl0J3MgcmViYXNlZCA/Cj4g
Cj4gU3VyZSwgbG9va3Mgc2FuZSBhbmQgY29tcGlsZXMgd2l0aG91dCB3YXJuaW5ncyBvbiBteSBi
dWlsZCBob3N0LgoKVGh4LCBBcHBsaWVkIHRvIGRybS1taXNjLW5leHQKCk5laWwKCj4gCj4gUmVn
YXJkcywKPiBKb25hcwo+IAo+Pgo+PiBOZWlsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWw=
