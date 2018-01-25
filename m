From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH v3] drm/bridge/synopsys: dsi: add optional pixel clock
Date: Thu, 25 Jan 2018 11:34:51 +0000
Message-ID: <35d72e79-7200-dec7-2b53-a672f1c02b3b@st.com>
References: <20180123170806.5282-1-philippe.cornu@st.com>
 <20180123204939.qirvr34mlwgiwmqz@ban.mtv.corp.google.com>
 <507552a3-c68f-d6ac-a747-b8f5168d0d41@st.com>
 <20180124180859.mr736rpzysq5vn54@ban.mtv.corp.google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180124180859.mr736rpzysq5vn54@ban.mtv.corp.google.com>
Content-Language: en-US
Content-ID: <38BA446193370D47BDBB66B8E2EE22D5@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Brian Norris <briannorris@chromium.org>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, Chris Zhong <zyw@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "nickey.yang@rock-chips.com" <nickey.yang@rock-chips.com>, "hl@rock-chips.com" <hl@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgQnJpYW4sDQoNCk9uIDAxLzI0LzIwMTggMDc6MDkgUE0sIEJyaWFuIE5vcnJpcyB3cm90ZToN
Cj4gT24gV2VkLCBKYW4gMjQsIDIwMTggYXQgMDk6MjQ6MDZBTSArMDAwMCwgUGhpbGlwcGUgQ09S
TlUgd3JvdGU6DQo+PiBPbiAwMS8yMy8yMDE4IDA5OjQ5IFBNLCBCcmlhbiBOb3JyaXMgd3JvdGU6
DQo+Pj4gT24gVHVlLCBKYW4gMjMsIDIwMTggYXQgMDY6MDg6MDZQTSArMDEwMCwgUGhpbGlwcGUg
Q29ybnUgd3JvdGU6DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMv
ZHctbWlwaS1kc2kuYw0KPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lz
L2R3LW1pcGktZHNpLmMNCj4gDQo+Pj4+IEBAIC04MjgsNiArODMzLDE0IEBAIF9fZHdfbWlwaV9k
c2lfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwNCj4+Pj4gICAgCQlyZXR1cm4g
RVJSX1BUUihyZXQpOw0KPj4+PiAgICAJfQ0KPj4+PiAgICANCj4+Pj4gKwlkc2ktPnB4X2NsayA9
IGRldm1fY2xrX2dldChkZXYsICJweF9jbGsiKTsNCj4+Pg0KPj4+IERpZCB5b3Ugd3JpdGUgYSBk
ZXZpY2UgdHJlZSBiaW5kaW5nIGRvY3VtZW50IHVwZGF0ZSBmb3IgdGhpcyBhbnl3aGVyZT8NCj4+
DQo+PiBNYW55IHRoYW5rcyBmb3IgeW91ciByZXZpZXcsDQo+Pg0KPj4geWVzLCAicHhfY2xrIiBp
cyBhbHJlYWR5IGRvY3VtZW50ZWQsIHBsZWFzZSBoYXZlIGEgbG9vayB0bw0KPj4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2R3X21pcGlfZHNpLnR4dA0K
PiANCj4gQWgsIEkgc2VlLiBOb3JtYWxseSBJIGV4cGVjdCB0aGF0IHRoZSBiaW5kaW5nIGRvY3Vt
ZW50IGlzIHNlbnQgYXJvdW5kDQo+IHdoZW4gdGhlIGZpcnN0IHVzZXIgb2YgaXQgc2hvd3MgdXAs
IGJ1dCBJIGd1ZXNzIHRoYXQncyBub3QgYQ0KPiByZXF1aXJlbWVudC4gU29ycnkgSSBtaXNzZWQg
dGhhdCENCj4gDQo+IEp1c3QgYSBub3RlOiBJIGRvbid0IHRoaW5rIHRoYXQgUm9ja2NoaXAgc3lz
dGVtcyBoYXZlIGFuIGVxdWl2YWxlbnQNCj4gY2xvY2sgZnJvbSB3aGljaCB0byBkaXJlY3RseSBk
ZXJpdmUgdGhlIHBpeGVsIGNsb2NrIHJhdGUuIEkgYmVsaWV2ZSBpdCdzDQo+IGNvbnRyb2xsZWQg
dGhyb3VnaCBhZGRpdGlvbmFsIGRpdmlkZXJzIHRoYXQgYXJlIG5vdCBwYXJ0IG9mIHRoZSBjb21t
b24NCj4gY2xvY2sgZnJhbWV3b3JrLiBTbyB0aGlzIGlzbid0IHBhcnRpY3VsYXJseSB1c2VmdWwg
Zm9yIHRoZW0uDQo+IA0KPiBJIGRvbid0IHRoaW5rIGl0J3Mgd29ydGggdmVyeSBtdWNoIGluIHRo
aXMgY2FzZSwgYnV0Og0KPiANCj4gUmV2aWV3ZWQtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3Jy
aXNAY2hyb21pdW0ub3JnPg0KPiANCg0KTWFueSB0aGFua3MgZm9yIHRoZSByZXZpZXcgYW5kIHlv
dXIgY29tbWVudHMuDQoNCkxvb2tpbmcgbW9yZSBkZWVwbHkgaW50byB0aGUgcm9ja2NoaXAgdm9w
IGRyaXZlciAoaW4gb3JkZXIgdG8gdW5kZXJzdGFuZCANCmhvdyB0aGUgcHggY2xvY2sgaXMgdXNl
ZCksIEkgY2FuIHNlZSB0aGF0IGFkanVzdGVkX21vZGUvbW9kZV9maXh1cCBpcyANCihub3cpIHVz
ZWQuDQoNCkkgaGF2ZSBhbHJlYWR5IHRyaWVkIHRvIHVzZSBhZGp1c3RlZF9tb2RlL21vZGVfZml4
dXAgb24gc3RtMzIgYnV0IA0Kd2l0aG91dCBzdWNjZXNzLg0KDQpOZXZlcnRoZWxlc3MsIEkgd2ls
bCBkbyBtb3JlIHRlc3RzIHdpdGggYWRqdXN0ZWRfbW9kZS9tb2RlX2ZpeHVwIGFzIGl0IA0KY291
bGQgaGVscCB0byBoYXZlIGEgc2ltcGxlciBwYXRjaCB0aGFuIGFkZGluZyB0aGUgcHhfY2xrLg0K
DQpNYW55IHRoYW5rcywNClBoaWxpcHBlIDotKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcmktZGV2ZWwK
