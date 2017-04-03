From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2 7/9] drm/rockchip: Force disable all crtc when unload
Date: Mon, 3 Apr 2017 09:58:04 +0200
Message-ID: <CAKMK7uFzpk0VNr-hdeKKxB0Ur+qC7ZWe-EwyzqcudABdjQZXfQ@mail.gmail.com>
References: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com>
 <1491046529-4310-8-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1491046529-4310-8-git-send-email-jeffy.chen@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Douglas Anderson <dianders@chromium.org>, Brian Norris <briannorris@chromium.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gU2F0LCBBcHIgMSwgMjAxNyBhdCAxOjM1IFBNLCBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZHJ2LmMKPiBpbmRleCBhNWQ4M2NiLi41ZGJmMDExIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gQEAgLTI0Niw2ICsyNDYsNyBAQCBz
dGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgICAg
ICAgIHJvY2tjaGlwX2RybV9mYmRldl9maW5pKGRybV9kZXYpOwo+ICAgICAgICAgZHJtX2ttc19o
ZWxwZXJfcG9sbF9maW5pKGRybV9kZXYpOwo+Cj4gKyAgICAgICBkcm1fY3J0Y19mb3JjZV9kaXNh
YmxlX2FsbChkcm1fZGV2KTsKClRoaXMgd2lsbCByZXN1bHQgaW4gYSBXQVJOX09OIGluIGxhdGVz
dCBkcm0tbmV4dCBiZWNhdXNlIHJvY2tjaGlwIGlzCmF0b21pYywgYW5kIHRoaXMgaGVscGVyIGlz
IGZvciBsZWdhY3kga21zIGRyaXZlcnMuIFlvdSB3YW50IHRvIHVzZQpkcm1fYXRvbWljX2hlbHBl
cl9zaHV0ZG93biBoZXJlLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9n
LmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
