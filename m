From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: make
 dw_mipi_dsi_bridge_mode_set() static
Date: Thu, 11 Jan 2018 13:19:48 +0000
Message-ID: <fdea3fff-947b-803b-a53d-14fe96e321aa@st.com>
References: <20180109203319.139520-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180109203319.139520-1-briannorris@chromium.org>
Content-Language: en-US
Content-ID: <C283A4267713344CB6DE8CBB2DE3051E@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Brian Norris <briannorris@chromium.org>, Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: "hl@rock-chips.com" <hl@rock-chips.com>, David Airlie <airlied@linux.ie>, "hoegsberg@gmail.com" <hoegsberg@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Nickey Yang <nickey.yang@rock-chips.com>, "mka@chromium.org" <mka@chromium.org>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "xbl@rock-chips.com" <xbl@rock-chips.com>, Vincent ABRIOU <vincent.abriou@st.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgQnJpYW4sDQoNClJldmlld2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVA
c3QuY29tPg0KDQpNYW55IHRoYW5rcywNClBoaWxpcHBlIDotKQ0KDQpPbiAwMS8wOS8yMDE4IDA5
OjMzIFBNLCBCcmlhbiBOb3JyaXMgd3JvdGU6DQo+IHNwYXJzZSBjb21wbGFpbnM6DQo+IA0KPiBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmM6NzAzOjY6IHdhcm5p
bmc6IHN5bWJvbA0KPiAnZHdfbWlwaV9kc2lfYnJpZGdlX21vZGVfc2V0JyB3YXMgbm90IGRlY2xh
cmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPw0KPiANCj4gU2lnbmVkLW9mZi1ieTogQnJpYW4gTm9y
cmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyB8IDYgKysrLS0tDQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMNCj4gaW5kZXggOTBmMTNkZjZm
MTA2Li5kNjBhNzdlOThiNTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c3lub3BzeXMvZHctbWlwaS1kc2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5
bm9wc3lzL2R3LW1pcGktZHNpLmMNCj4gQEAgLTcwMCw5ICs3MDAsOSBAQCBzdGF0aWMgdm9pZCBk
d19taXBpX2RzaV9icmlkZ2VfcG9zdF9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2Up
DQo+ICAgCXBtX3J1bnRpbWVfcHV0KGRzaS0+ZGV2KTsNCj4gICB9DQo+ICAgDQo+IC12b2lkIGR3
X21pcGlfZHNpX2JyaWRnZV9tb2RlX3NldChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLA0KPiAt
CQkJCSBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwNCj4gLQkJCQkgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpDQo+ICtzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9i
cmlkZ2VfbW9kZV9zZXQoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwNCj4gKwkJCQkJc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsDQo+ICsJCQkJCXN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICphZGp1c3RlZF9tb2RlKQ0KPiAgIHsNCj4gICAJc3RydWN0IGR3X21pcGlfZHNpICpkc2kgPSBi
cmlkZ2VfdG9fZHNpKGJyaWRnZSk7DQo+ICAgCWNvbnN0IHN0cnVjdCBkd19taXBpX2RzaV9waHlf
b3BzICpwaHlfb3BzID0gZHNpLT5wbGF0X2RhdGEtPnBoeV9vcHM7DQo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
