From: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Date: Mon, 2 Sep 2019 10:32:37 +0000
Message-ID: <HE1PR06MB4011E2F58875F30446D902BFACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20190902035435.44463-1-cychiang@chromium.org>
 <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
Content-Language: en-US
Content-ID: <28AEFB56CC9D7540A050CC1E73674443@eurprd06.prod.outlook.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Neil Armstrong <narmstrong@baylibre.com>, Cheng-Yi Chiang <cychiang@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>, "tzungbi@chromium.org" <tzungbi@chromium.org>, "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>, "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "airlied@linux.ie" <airlied@linux.ie>, "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>, "dianders@chromium.org" <dianders@chromium.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>, "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>, "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, "dgreid@chromium.org" <dgreid@chromium.org>, "sam@ravnborg.org" <sam@ravnborg.org>, linux-arm-kernel@lists.infrad
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxOS0wOS0wMiAxMTo0MiwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6DQo+IEhpLA0KPg0KPiBP
biAwMi8wOS8yMDE5IDA1OjU0LCBDaGVuZy1ZaSBDaGlhbmcgd3JvdGU6DQo+PiBJbiB0aGUgZGVz
aWdud2FyZSBkYXRhYm9vaywgdGhlIHNlcXVlbmNlIG9mIGVuYWJsaW5nIGF1ZGlvIGNsb2NrIGFu
ZA0KPj4gc2V0dGluZyBmb3JtYXQgaXMgbm90IGNsZWFybHkgc3BlY2lmaWVkLg0KPj4gQ3VycmVu
dGx5LCBhdWRpbyBjbG9jayBpcyBlbmFibGVkIGluIHRoZSBlbmQgb2YgaHdfcGFyYW0gb3BzIGFm
dGVyDQo+PiBzZXR0aW5nIGZvcm1hdC4NCj4+DQo+PiBPbiBzb21lIG1vbml0b3JzLCB0aGVyZSBp
cyBhIHBvc3NpYmlsaXR5IHRoYXQgYXVkaW8gZG9lcyBub3QgY29tZSBvdXQuDQo+PiBGaXggdGhp
cyBieSBlbmFibGluZyBhdWRpbyBjbG9jayBpbiBhdWRpb19zdGFydHVwIG9wcw0KPj4gYmVmb3Jl
IGh3X3BhcmFtIG9wcyBzZXR0aW5nIGZvcm1hdC4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaGVu
Zy1ZaSBDaGlhbmcgPGN5Y2hpYW5nQGNocm9taXVtLm9yZz4NCj4+IFJldmlld2VkLWJ5OiBEb3Vn
bGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+DQo+PiBSZXZpZXdlZC1ieTogSm9u
YXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPg0KPj4gVGVzdGVkLWJ5OiBEb3VnbGFzIEFuZGVy
c29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+DQo+PiAtLS0NCj4+ICBDaGFuZ2VzIGZyb20gdjE6
DQo+PiAgMS4gTW92ZSBhdWRpb19zdGFydHVwIHRvIHRoZSBmcm9udCBvZiBhdWRpb19zaHV0ZG93
bi4NCj4+ICAyLiBGaXggdGhlIGluZGVudGF0aW9uIG9mIGF1ZGlvX3N0YXJ0dXAgZXF1YWwgc2ln
biB1c2luZyB0YWIuDQo+PiAgMy4gUmViYXNlIHRoZSBwYXRjaCBvbiBsaW51eC1uZXh0L21hc3Rl
ci4NCj4+ICA0LiBBZGQgUmV2aWV3ZWQtYnkgYW5kIFRlc3RlZC1ieSBmaWVsZHMgZnJvbSBkaWFu
ZGVyc0BjaHJvbWl1bS5vcmcuDQo+PiAgNS4gQWRkIFJldmlld2VkLWJ5IGZpZWxkIGZyb20gam9u
YXNAa3dpYm9vLnNlLg0KPj4NCj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3
LWhkbWktaTJzLWF1ZGlvLmMgfCA5ICsrKysrKysrKw0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9z
eW5vcHN5cy9kdy1oZG1pLWkycy1hdWRpby5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1oZG1pLWkycy1hdWRpby5jDQo+PiBpbmRleCAxZDE1Y2Y5YjY4MjEuLjM0ZDhlODM3
NTU1ZiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
aGRtaS1pMnMtYXVkaW8uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5
cy9kdy1oZG1pLWkycy1hdWRpby5jDQo+PiBAQCAtMTA5LDYgKzEwOSwxNCBAQCBzdGF0aWMgaW50
IGR3X2hkbWlfaTJzX2h3X3BhcmFtcyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsDQo+
PiAgCWhkbWlfd3JpdGUoYXVkaW8sIGNvbmYwLCBIRE1JX0FVRF9DT05GMCk7DQo+PiAgCWhkbWlf
d3JpdGUoYXVkaW8sIGNvbmYxLCBIRE1JX0FVRF9DT05GMSk7DQo+PiAgDQo+PiArCXJldHVybiAw
Ow0KPj4gK30NCj4+ICsNCj4+ICtzdGF0aWMgaW50IGR3X2hkbWlfaTJzX2F1ZGlvX3N0YXJ0dXAo
c3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpkYXRhKQ0KPj4gK3sNCj4+ICsJc3RydWN0IGR3X2hk
bWlfaTJzX2F1ZGlvX2RhdGEgKmF1ZGlvID0gZGF0YTsNCj4+ICsJc3RydWN0IGR3X2hkbWkgKmhk
bWkgPSBhdWRpby0+aGRtaTsNCj4+ICsNCj4+ICAJZHdfaGRtaV9hdWRpb19lbmFibGUoaGRtaSk7
DQo+PiAgDQo+PiAgCXJldHVybiAwOw0KPj4gQEAgLTE1Myw2ICsxNjEsNyBAQCBzdGF0aWMgaW50
IGR3X2hkbWlfaTJzX2dldF9kYWlfaWQoc3RydWN0IHNuZF9zb2NfY29tcG9uZW50ICpjb21wb25l
bnQsDQo+PiAgDQo+PiAgc3RhdGljIHN0cnVjdCBoZG1pX2NvZGVjX29wcyBkd19oZG1pX2kyc19v
cHMgPSB7DQo+PiAgCS5od19wYXJhbXMJPSBkd19oZG1pX2kyc19od19wYXJhbXMsDQo+PiArCS5h
dWRpb19zdGFydHVwICA9IGR3X2hkbWlfaTJzX2F1ZGlvX3N0YXJ0dXAsDQo+PiAgCS5hdWRpb19z
aHV0ZG93bgk9IGR3X2hkbWlfaTJzX2F1ZGlvX3NodXRkb3duLA0KPj4gIAkuZ2V0X2VsZAk9IGR3
X2hkbWlfaTJzX2dldF9lbGQsDQo+PiAgCS5nZXRfZGFpX2lkCT0gZHdfaGRtaV9pMnNfZ2V0X2Rh
aV9pZCwNCj4+DQo+IExvb2tzIHNhbmUsIEpvbmFzIHNob3VsZCBJIGFwcGx5IGl0IG5vdyBpdCdz
IHJlYmFzZWQgPw0KDQpTdXJlLCBsb29rcyBzYW5lIGFuZCBjb21waWxlcyB3aXRob3V0IHdhcm5p
bmdzIG9uIG15IGJ1aWxkIGhvc3QuDQoNClJlZ2FyZHMsDQpKb25hcw0KDQo+DQo+IE5laWwNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
