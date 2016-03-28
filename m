From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop: Don't reject empty modesets
Date: Mon, 28 Mar 2016 14:40:05 +0800
Message-ID: <56F8D1C5.6060504@rock-chips.com>
References: <1458300123-6397-1-git-send-email-tomeu.vizoso@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1458300123-6397-1-git-send-email-tomeu.vizoso@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>, linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDAz5pyIMTjml6UgMTk6MjIsIFRvbWV1IFZpem9zbyB3cm90ZToKPiBTbyB0aGF0
IHdoZW4gRFJNX0lPQ1RMX01PREVfU0VUQ1JUQyBpcyBjYWxsZWQgd2l0aG91dCBhIEZCIG5vciBt
b2RlLCB0aGUKPiBDUlRDIGdldHMgZGlzYWJsZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBW
aXpvc28gPHRvbWV1LnZpem9zb0Bjb2xsYWJvcmEuY29tPgo+IExpbms6IGh0dHA6Ly9sa21sLmtl
cm5lbC5vcmcvZy9DQUFPYnNLQXYrMDVpaDVVKz00a2ljX05zakdNaGZ4WWhlSFI4eFhYbWFjWnMr
cDVTSHdAbWFpbC5nbWFpbC5jb20KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wLmMgfCAzIC0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBp
bmRleCBmZDM3MDU0OGQ3ZDcuLjVlNTdmNWIyZTRiMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+IEBAIC04ODUsOSArODg1LDYgQEAgc3RhdGlj
IGJvb2wgdm9wX2NydGNfbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gICB7Cj4g
ICAJc3RydWN0IHZvcCAqdm9wID0gdG9fdm9wKGNydGMpOwo+ICAgCj4gLQlpZiAoYWRqdXN0ZWRf
bW9kZS0+aHRvdGFsID09IDAgfHwgYWRqdXN0ZWRfbW9kZS0+dnRvdGFsID09IDApCj4gLQkJcmV0
dXJuIGZhbHNlOwo+IC0KPiAgIAlhZGp1c3RlZF9tb2RlLT5jbG9jayA9Cj4gICAJCWNsa19yb3Vu
ZF9yYXRlKHZvcC0+ZGNsaywgbW9kZS0+Y2xvY2sgKiAxMDAwKSAvIDEwMDA7Cj4gICAKQXBwbGll
ZCB0byBteSBkcm0tZml4ZXMsIFRoYW5rcy4KCi0tIArvvK1hcmsgWWFvCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
