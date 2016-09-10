From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: add missing header dependencies
Date: Sat, 10 Sep 2016 10:59:19 +0800
Message-ID: <57D37707.8050607@rock-chips.com>
References: <1473245580-538-1-git-send-email-baoyou.xie@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1473245580-538-1-git-send-email-baoyou.xie@linaro.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Baoyou Xie <baoyou.xie@linaro.org>, airlied@linux.ie, heiko@sntech.de
Cc: arnd@arndb.de, xie.baoyou@zte.com.cn, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDA55pyIMDfml6UgMTg6NTMsIEJhb3lvdSBYaWUgd3JvdGU6Cj4gV2UgZ2V0IDIg
d2FybmluZ3Mgd2hlbiBidWlsZGluZyBrZXJuZWwgd2l0aCBXPTE6Cj4gZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYmRldi5jOjEzMDo1OiB3YXJuaW5nOiBubyBwcmV2aW91
cyBwcm90b3R5cGUgZm9yICdyb2NrY2hpcF9kcm1fZmJkZXZfaW5pdCcgWy1XbWlzc2luZy1wcm90
b3R5cGVzXQo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYzox
NzM6Njogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciAncm9ja2NoaXBfZHJtX2Zi
ZGV2X2ZpbmknIFstV21pc3NpbmctcHJvdG90eXBlc10KPgo+IEluIGZhY3QsIHRoZXNlIGZ1bmN0
aW9ucyBhcmUgZGVjbGFyZWQKPiBpbiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2ZiZGV2LmgsCj4gc28gdGhpcyBwYXRjaCBhZGRzIG1pc3NpbmcgaGVhZGVyIGRlcGVuZGVu
Y2llcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEJhb3lvdSBYaWUgPGJhb3lvdS54aWVAbGluYXJvLm9y
Zz4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYu
YyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpBcHBsaWVkIHRvIG15
IGRybS1maXhlcywgVGhhbmtzCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2ZiZGV2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2ZiZGV2LmMKPiBpbmRleCAyMDdlMDFkLi5hMTZjNjlmIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYwo+IEBAIC0yMCw2ICsyMCw3
IEBACj4gICAjaW5jbHVkZSAicm9ja2NoaXBfZHJtX2Rydi5oIgo+ICAgI2luY2x1ZGUgInJvY2tj
aGlwX2RybV9nZW0uaCIKPiAgICNpbmNsdWRlICJyb2NrY2hpcF9kcm1fZmIuaCIKPiArI2luY2x1
ZGUgInJvY2tjaGlwX2RybV9mYmRldi5oIgo+ICAgCj4gICAjZGVmaW5lIFBSRUZFUlJFRF9CUFAJ
CTMyCj4gICAjZGVmaW5lIHRvX2RybV9wcml2YXRlKHgpIFwKCgotLSAK77ytYXJrIFlhbwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
