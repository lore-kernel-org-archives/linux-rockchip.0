From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dsi: Add a warning msg on dsi
 read requests
Date: Tue, 30 Jan 2018 14:29:13 +0000
Message-ID: <75fe97b4-ff59-e7cf-3f0c-085b281ead80@st.com>
References: <20180125103800.1999-1-philippe.cornu@st.com>
 <20180125103800.1999-2-philippe.cornu@st.com>
 <20180126004441.k4pymmsr6brcdzmq@ban.mtv.corp.google.com>
 <18888350-d764-f6bd-5285-a7fac3d300e0@codeaurora.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <18888350-d764-f6bd-5285-a7fac3d300e0@codeaurora.org>
Content-Language: en-US
Content-ID: <BB24A99D0D1E8C408EFB8C663B84AB31@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Archit Taneja <architt@codeaurora.org>, Brian Norris <briannorris@chromium.org>
Cc: Bhumika Goyal <bhumirks@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>, David Airlie <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgQXJjaGl0LA0KDQpBbmQgbWFueSB0aGFua3MsDQpQaGlsaXBwZSA6LSkNCg0KT24gMDEvMzAv
MjAxOCAwMzowOSBQTSwgQXJjaGl0IFRhbmVqYSB3cm90ZToNCj4gDQo+IA0KPiBPbiAwMS8yNi8y
MDE4IDA2OjE0IEFNLCBCcmlhbiBOb3JyaXMgd3JvdGU6DQo+PiBPbiBUaHUsIEphbiAyNSwgMjAx
OCBhdCAxMTozNzo1OUFNICswMTAwLCBQaGlsaXBwZSBDb3JudSB3cm90ZToNCj4+PiBUaGUgZGNz
L2dlbmVyaWMgZHNpIHJlYWQgZmVhdHVyZSBpcyBub3QgeWV0IGltcGxlbWVudGVkIHNvIGl0DQo+
Pj4gaXMgaW1wb3J0YW50IHRvIHdhcm4gdGhlIGhvc3RfdHJhbnNmZXIoKSBjYWxsZXIgaW4gY2Fz
ZSBvZg0KPj4+IHJlYWQgb3BlcmF0aW9uIHJlcXVlc3RzLg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1i
eTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4NCj4+DQo+PiBBd2Vzb21l
LCB0aGFua3MuDQo+Pg0KPj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNA
Y2hyb21pdW0ub3JnPg0KPj4NCj4gDQo+IFF1ZXVlZCB0byBkcm0tbWlzYy1uZXh0Lg0KPiANCj4g
VGhhbmtzLA0KPiBBcmNoaXQNCj4gDQo+Pj4gLS0tDQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jIHwgNiArKysrKysNCj4+PiDCoCAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jIA0KPj4+IGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jDQo+Pj4gaW5kZXggZGFlYzc4ODFiZTZkLi43
MmVjYWViNDA4MjIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1taXBpLWRzaS5jDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1taXBpLWRzaS5jDQo+Pj4gQEAgLTQwNSw2ICs0MDUsMTIgQEAgc3RhdGljIHNzaXpl
X3QgZHdfbWlwaV9kc2lfaG9zdF90cmFuc2ZlcihzdHJ1Y3QgDQo+Pj4gbWlwaV9kc2lfaG9zdCAq
aG9zdCwNCj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBtaXBpX2RzaV9wYWNrZXQgcGFja2V0Ow0KPj4+
IMKgwqDCoMKgwqAgaW50IHJldDsNCj4+PiArwqDCoMKgIGlmIChtc2ctPnJ4X2J1ZiB8fCBtc2ct
PnJ4X2xlbikgew0KPj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBUT0RPIGR3IGRydiBpbXByb3ZlbWVu
dHM6IGltcGxlbWVudCByZWFkIGZlYXR1cmUgKi8NCj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X3dh
cm4oZHNpLT5kZXYsICJyZWFkIG9wZXJhdGlvbnMgbm90IHlldCBpbXBsZW1lbnRlZFxuIik7DQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0KPj4+ICvCoMKgwqAgfQ0KPj4+ICsN
Cj4+PiDCoMKgwqDCoMKgIHJldCA9IG1pcGlfZHNpX2NyZWF0ZV9wYWNrZXQoJnBhY2tldCwgbXNn
KTsNCj4+PiDCoMKgwqDCoMKgIGlmIChyZXQpIHsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2
X2Vycihkc2ktPmRldiwgImZhaWxlZCB0byBjcmVhdGUgcGFja2V0OiAlZFxuIiwgcmV0KTsNCj4+
PiAtLSANCj4+PiAyLjE1LjENCj4+Pg0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCg==
