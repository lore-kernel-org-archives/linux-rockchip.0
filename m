From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip/dsi: fix handling
 mipi_dsi_pixel_format_to_bpp result
Date: Fri, 15 Jan 2016 09:04:12 +0800
Message-ID: <5698458C.3070901@rock-chips.com>
References: <1452761942-23864-1-git-send-email-a.hajda@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1452761942-23864-1-git-send-email-a.hajda@samsung.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Andrzej Hajda <a.hajda@samsung.com>, Mark Yao <mark.yao@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Marek Szyprowski <m.szyprowski@samsung.com>, "open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgQW5kcnplagoKT24gMDEvMTQvMjAxNiAwNDo1OSBQTSwgQW5kcnplaiBIYWpkYSB3cm90ZToK
PiBUaGUgZnVuY3Rpb24gY2FuIHJldHVybiBuZWdhdGl2ZSB2YWx1ZSBzbyBpdCBzaG91bGQgYmUg
YXNzaWduZWQgdG8gc2lnbmVkCj4gdmFyaWFibGUuCj4KPiBUaGUgcHJvYmxlbSBoYXMgYmVlbiBk
ZXRlY3RlZCB1c2luZyBwYXRjaAo+IHNjcmlwdHMvY29jY2luZWxsZS90ZXN0cy91bnNpZ25lZF9s
ZXNzZXJfdGhhbl96ZXJvLmNvY2NpLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5kcnplaiBIYWpkYSA8
YS5oYWpkYUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
dy1taXBpLWRzaS5jIHwgMyArKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
ZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCj4g
aW5kZXggN2JmZTI0My4uZjhmOGYyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHctbWlwaS1kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS5jCj4gQEAgLTQ2MSwxMCArNDYxLDExIEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lf
cGh5X2luaXQoc3RydWN0IGR3X21pcGlfZHNpICpkc2kpCj4gICAKPiAgIHN0YXRpYyBpbnQgZHdf
bWlwaV9kc2lfZ2V0X2xhbmVfYnBzKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICAgewo+IC0J
dW5zaWduZWQgaW50IGJwcCwgaSwgcHJlOwo+ICsJdW5zaWduZWQgaW50IGksIHByZTsKPiAgIAl1
bnNpZ25lZCBsb25nIG1wY2xrLCBwbGxyZWYsIHRtcDsKPiAgIAl1bnNpZ25lZCBpbnQgbSA9IDEs
IG4gPSAxLCB0YXJnZXRfbWJwcyA9IDEwMDA7Cj4gICAJdW5zaWduZWQgaW50IG1heF9tYnBzID0g
ZHB0ZGluX21hcFtBUlJBWV9TSVpFKGRwdGRpbl9tYXApIC0gMV0ubWF4X21icHM7Cj4gKwlpbnQg
YnBwOwo+ICAgCj4gICAJYnBwID0gbWlwaV9kc2lfcGl4ZWxfZm9ybWF0X3RvX2JwcChkc2ktPmZv
cm1hdCk7Cj4gICAJaWYgKGJwcCA8IDApIHsKUmV2aWV3ZWQtYnk6IENocmlzIFpob25nIDx6eXdA
cm9jay1jaGlwcy5jb20+CgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCg==
