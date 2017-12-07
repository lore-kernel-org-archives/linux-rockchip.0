From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH v6 1/3] drm/bridge/synopsys: dsi: stop clobbering drvdata
Date: Thu, 7 Dec 2017 11:41:17 +0000
Message-ID: <e24ca009-6ac2-94f8-2f9d-53d339da1e8d@st.com>
References: <1512551301-12946-1-git-send-email-nickey.yang@rock-chips.com>
 <1512551301-12946-2-git-send-email-nickey.yang@rock-chips.com>
 <20171206213858.GA14257@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171206213858.GA14257@google.com>
Content-Language: en-US
Content-ID: <829467ED1C4E88438CBB5BF9AF17962D@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Brian Norris <briannorris@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, "hoegsberg@gmail.com" <hoegsberg@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "xbl@rock-chips.com" <xbl@rock-chips.com>, "mka@chromium.org" <mka@chromium.org>, "hl@rock-chips.com" <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgTmlja2V5LA0KDQpwbGF0Zm9ybV9zZXRfZHJ2ZGF0YSgpIGlzIHN0aWxsIG1pc3NpbmcgaW4g
eW91ciB2ZXJzaW9uLg0KDQpUaGFua3MsDQpQaGlsaXBwZSA6LSkNCg0KT24gMTIvMDYvMjAxNyAx
MDozOSBQTSwgQnJpYW4gTm9ycmlzIHdyb3RlOg0KPiBPbiBXZWQsIERlYyAwNiwgMjAxNyBhdCAw
NTowODoxOVBNICswODAwLCBOaWNrZXkgWWFuZyB3cm90ZToNCj4+IEZyb206IEJyaWFuIE5vcnJp
cyA8YnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnPg0KPj4NCj4+IEJyaWRnZSBkcml2ZXJzL2hlbHBl
cnMgc2hvdWxkbid0IGJlIGNsb2JiZXJpbmcgdGhlIGRydmRhdGEsIHNpbmNlIGENCj4+IHBhcmVu
dCBkcml2ZXIgbWlnaHQgbmVlZCB0byBvd24gdGhpcy4gSW5zdGVhZCwgbGV0J3MgcmV0dXJuIG91
cg0KPj4gJ2R3X21pcGlfZHNpJyBvYmplY3QgYW5kIGhhdmUgY2FsbGVycyBwYXNzIHRoYXQgYmFj
ayB0byB1cyBmb3IgcmVtb3ZhbC4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBOb3JyaXMg
PGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4NCj4+IFNpZ25lZC1vZmYtYnk6IE5pY2tleSBZYW5n
IDxuaWNrZXkueWFuZ0Byb2NrLWNoaXBzLmNvbT4NCj4+IExpbms6aHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDA3ODQ5My8NCj4+DQo+PiAtLS0NCj4+IENoYW5nZXMNCj4+DQo+
PiB2NDoNCj4+IC0gQWRkIEZyb20gdGFnLHVwZGF0ZSBzdWJqZWN0IGxpbmUNCj4+IC0ga2VlcCBw
YXRjaCAiZHJtL3N0bTogZHNpOiBBZGp1c3QgZHdfbWlwaV9kc2lfcHJvYmUgYW5kIHJlbW92ZSIN
Cj4+ICAgIGluIHRoaXMgcGllY2UgdG9nZXRoZXIuDQo+Pg0KPj4gdjU6DQo+PiAtIHJlbW92ZSBS
ZXZpZXcgJiBBY2sgdGFnDQo+PiAtIGZpeCByZW1vdmUoKSBkaXJlY3RseSByZWZlcmVuY2luZyB0
aGUgc3RhdGljDQo+PiAgICBkd19taXBpX2RzaV9zdG1fcGxhdF9kYXRhIHN0cnVjdC4NCj4gDQo+
IFlvdSd2ZSBnb3R0ZW4gdGhpcyBiYWNrIGludG8gYmFzaWNhbGx5IHRoZSBzaGFwZSBJIHNlbnQg
djEgaW4sIHNvIEkNCj4gZ3Vlc3MgdGhpcyBkZXNlcnZlcyBhbjoNCj4gDQo+IEFja2VkLWJ5OiBC
cmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4NCj4gDQo+IDopDQo+IA0KPiBP
bmx5IG5ldCBjaGFuZ2VzOiB5b3UgcmVuYW1lZCB0aGUgJ2RzaScgZmllbGQgdG8gJ2RtZCcgKER3
YyBNaXBpDQo+IERldmljZT8pLCBhbmQgbXkgJ3JldHVybiAwJyBjaGFuZ2VkIGJhY2sgdG8gdGhl
IG9yaWdpbmFsICdyZXR1cm4gcmV0JyBhdA0KPiB0aGUgZW5kIG9mIHByb2JlKCkuIERvZXNuJ3Qg
bWFrZSBhbnkgZnVuY3Rpb25hbCBkaWZmZXJlbmNlLCBzbyBmaW5lIHdpdGgNCj4gbWUuDQo+IA0K
PiBJZiBldmVyeWJvZHkncyBqdXN0IGFzIGhhcHB5IHdpdGggdGhpcyBhcyB3aXRoIHRoZSBmaXJz
dA0KPiB2ZXJzaW9uLi4uc2hvdWxkIGl0IGp1c3QgYmUgYXBwbGllZCBub3csIHJlZ2FyZGxlc3Mg
b2YgdGhlIHN0YXR1cyBvZiB0aGUNCj4gbmV4dCAyIHBhdGNoZXM/IENvdWxkIGhlbHAgcmVkdWNl
IHRoZSBkaXNjdXNzaW9uIChhbmQgY29uZnVzaW9uKQ0KPiBzdXJmYWNlLg0KPiANCj4gUmVnYXJk
cywNCj4gQnJpYW4NCj4gDQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
bWlwaS1kc2kuYyB8IDM2ICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQ0KPj4gICBkcml2ZXJz
L2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jICAgICAgICAgfCAxMCArKysrKy0tLQ0KPj4g
ICBpbmNsdWRlL2RybS9icmlkZ2UvZHdfbWlwaV9kc2kuaCAgICAgICAgICAgICAgfCAxNyArKysr
KysrKy0tLS0tDQo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMzMgZGVs
ZXRpb25zKC0pDQo+IC4uLg0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCg==
