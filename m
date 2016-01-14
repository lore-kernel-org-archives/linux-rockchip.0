From: John Keeping <john@metanate.com>
Subject: [PATCH 0/3] drm/rockchip: fix cursor performance with atomic
Date: Thu, 14 Jan 2016 14:39:39 +0000
Message-ID: <cover.1452782114.git.john@metanate.com>
References: <20160114142047.GD19130@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20160114142047.GD19130@phenom.ffwll.local>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCAxNCBKYW4gMjAxNiAxNToyMDo0NyArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToK
Cj4gVWdoLiBPaCB3ZWxsLCB0aGVyZSdzIG5vdCByZWFsbHkgYW55dGhpbmcgd2UgY2FuIGRvIGlu
IGNvcmUgbm9yZSBoZWxwZXJzCj4gdG8gbWFrZSB0aGlzIGVhc2llciBmb3IgZHJpdmVycy4gVGhp
cyByZWFsbHkgb25seSBjYW4gYmUgZml4ZWQgc2Vuc2libHkgYXQKPiB0aGUgaGFyZHdhcmUgbGV2
ZWwuCj4gCj4gU28geWVhaCBJIHRoaW5rIGV4cG9zaW5nIGZyYW1lYnVmZmVyX2NoYW5nZWQgYXMg
YSBoZWxwZXIgaXMgdGhlIHdheSB0byBnbwo+IGhlcmUuCgpPSywgaGVyZSdzIGEgc2VyaWVzIHRv
IGRvIHRoYXQuICBJIGFsc28gYWRkZWQgYSBjb21tZW50IHRvCnJvY2tjaGlwX2F0b21pY193YWl0
X2Zvcl9jb21wbGV0ZSgpIGV4cGxhaW5pbmcgd2h5IHdlIGNhbid0IHVzZQpkcm1fYXRvbWljX2hl
bHBlcl93YWl0X2Zvcl92YmxhbmtzKCkuCgpKb2huIEtlZXBpbmcgKDMpOgogIGRybS9hdG9taWMt
aGVscGVyOiBFeHBvcnQgZnJhbWVidWZmZXJfY2hhbmdlZCgpCiAgZHJtL3JvY2tjaGlwOiBkb24n
dCB3YWl0IGZvciB2YmxhbmsgaWYgZmIgaGFzbid0IGNoYW5nZWQKICBkcm0vcm9ja2NoaXA6IGV4
cGxhaW4gd2h5IHdlIGNhbid0IHdhaXRfZm9yX3ZibGFua3MKCiBkcml2ZXJzL2dwdS9kcm0vZHJt
X2F0b21pY19oZWxwZXIuYyAgICAgICAgfCAyNCArKysrKysrKysrKysrKysrKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyB8IDE0ICsrKysrKysrKysr
Ky0tCiBpbmNsdWRlL2RybS9kcm1fYXRvbWljX2hlbHBlci5oICAgICAgICAgICAgfCAgNCArKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgotLSAK
Mi43LjAuMjI2LmdmZTk4NmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aS1kZXZlbAo=
