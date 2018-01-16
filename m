From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 2/2] drm/bridge/synopsys: dsi: handle endianness
 correctly in dw_mipi_dsi_write()
Date: Tue, 16 Jan 2018 10:57:37 -0800
Message-ID: <20180116185736.GA149565@google.com>
References: <20180109203248.139249-1-briannorris@chromium.org>
 <CGME20180109203308epcas1p17226c8b3b3a0474adcd51b87b70084bf@epcas1p1.samsung.com>
 <20180109203248.139249-2-briannorris@chromium.org>
 <199f9097-736e-afe8-2093-bb28fba8b308@samsung.com>
 <e4d9d6d6-76c4-4914-d800-c007a6e8938b@codeaurora.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <e4d9d6d6-76c4-4914-d800-c007a6e8938b@codeaurora.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Archit Taneja <architt@codeaurora.org>
Cc: hl@rock-chips.com, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, hoegsberg@gmail.com, Philippe Cornu <philippe.cornu@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Yannick Fertre <yannick.fertre@st.com>, Nickey Yang <nickey.yang@rock-chips.com>, mka@chromium.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, zyw@rock-chips.com, xbl@rock-chips.com, Vincent Abriou <vincent.abriou@st.com>
List-Id: linux-rockchip.vger.kernel.org

T24gVHVlLCBKYW4gMTYsIDIwMTggYXQgMTI6MjI6NTJQTSArMDUzMCwgQXJjaGl0IFRhbmVqYSB3
cm90ZToKPiBPbiAwMS8xMC8yMDE4IDA4OjAzIFBNLCBBbmRyemVqIEhhamRhIHdyb3RlOgo+ID5P
biAwOS4wMS4yMDE4IDIxOjMyLCBCcmlhbiBOb3JyaXMgd3JvdGU6Cj4gPj5AQCAtMzg2LDkgKzM4
Niw5IEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfd3JpdGUoc3RydWN0IGR3X21pcGlfZHNpICpk
c2ksCj4gPj4gIAkJfQo+ID4+ICAJfQo+ID4+LQlyZW1haW5kZXIgPSAwOwo+ID4+LQltZW1jcHko
JnJlbWFpbmRlciwgcGFja2V0LT5oZWFkZXIsIHNpemVvZihwYWNrZXQtPmhlYWRlcikpOwo+ID4+
LQlyZXR1cm4gZHdfbWlwaV9kc2lfZ2VuX3BrdF9oZHJfd3JpdGUoZHNpLCByZW1haW5kZXIpOwo+
ID4+Kwl3b3JkID0gMDsKPiA+PisJbWVtY3B5KCZ3b3JkLCBwYWNrZXQtPmhlYWRlciwgc2l6ZW9m
KHBhY2tldC0+aGVhZGVyKSk7Cj4gPj4rCXJldHVybiBkd19taXBpX2RzaV9nZW5fcGt0X2hkcl93
cml0ZShkc2ksIGxlMzJfdG9fY3B1KHdvcmQpKTsKPiA+Cj4gPllvdSBjb3VsZCBjcmVhdGUgYW5k
IHVzZSBhcHByb3ByaWF0ZSBoZWxwZXIsIGxldHMgc2F5Ogo+ID4KPiA+dTMyIGxlX3RvX2NwdXAo
Y29uc3QgdTggKnAsIGludCBjb3VudCkKPiA+ewo+ID4gwqDCoMKgIF9fbGUzMiByID0gMDsKPiA+
Cj4gPiDCoMKgwqAgbWVtY3B5KCZyLCBwLCBjb3VudCk7Cj4gPiDCoMKgwqAgcmV0dXJuIGxlMzJf
dG9fY3B1KHIpOwo+ID59CgpJIHN1cHBvc2UgdGhhdCBjb3VsZCBiZSBhIHNtYWxsIGltcHJvdmVt
ZW50LCBmb3IgZnV0dXJlIGNvbnNpZGVyYXRpb24sCmlmIHRoaXMgZ2V0cyB0b28gb3V0IG9mIGhh
bmQuCgo+ID5XaXRoIG9yIHdpdGhvdXQgdGhpcyBjaGFuZ2U6Cj4gPlJldmlld2VkLWJ5OiBBbmRy
emVqIEhhamRhIDxhLmhhamRhQHNhbXN1bmcuY29tPgoKVGhhbmtzIQoKPiBRdWV1ZWQgdG8gZHJt
LW1pc2MtbmV4dCBhcyBpcy4KClRoYW5rcyEKCkJyaWFuCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
