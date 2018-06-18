From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v4 1/2] drm/rockchip: vop: split out core clock enablement
 into separate functions
Date: Mon, 18 Jun 2018 18:44:24 +0900
Message-ID: <CAAFQd5Be53CNQXROdRyZ0mFc2dDHhLDcQ+vCvWfW-9V3078_Bg@mail.gmail.com>
References: <20180612132028.27490-1-heiko@sntech.de>
 <20180612132028.27490-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180612132028.27490-2-heiko@sntech.de>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: marc.zyngier@arm.com, Robin Murphy <robin.murphy@arm.com>, Jeffy <jeffy.chen@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>, Tomeu Vizoso <tomeu.vizoso@collabora.co.uk>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, enric.balletbo@collabora.co.uk, stable@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgSGVpa28sCgpPbiBUdWUsIEp1biAxMiwgMjAxOCBhdCAxMDoyMCBQTSBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEp1ZGdpbmcgZnJvbSB0aGUgaW9tbXUgY29k
ZSwgYm90aCB0aGUgaGNsayBhbmQgYWNsayBhcmUgbmVjZXNzYXJ5IGZvcgo+IHJlZ2lzdGVyIGFj
Y2Vzcy4gU3BsaXQgdGhlbSBvZmYgaW50byBzZXBhcmF0ZSBmdW5jdGlvbnMgZnJvbSB0aGUgcmVn
dWxhcgo+IHZvcCBlbmFibGVtZW50LCBzbyB0aGF0IHdlIGNhbiB1c2UgdGhlbSBlbHNld2hlcmUg
YXMgd2VsbC4KPgo+IEZpeGVzOiBkMGI5MTJiZDRjMjMgKCJpb21tdS9yb2NrY2hpcDogUmVxdWVz
dCBpcnFzIGluIHJrX2lvbW11X3Byb2JlKCkiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3Jn
Cj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBUZXN0
ZWQtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDQ0ICsrKysrKysr
KysrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCgpSZXZpZXdlZC1ieTogVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9yZz4K
CkJlc3QgcmVnYXJkcywKVG9tYXN6Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbAo=
