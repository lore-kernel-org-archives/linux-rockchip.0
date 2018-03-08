From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v9 4/5] drm/rockchip: dw_hdmi: Move HDMI vpll clock enable
 to bind()
Date: Thu, 08 Mar 2018 17:38:54 +0100
Message-ID: <4713538.mFGgDtM9HE@diego>
References: <20180302175757.28192-1-enric.balletbo@collabora.com>
 <20180302175757.28192-5-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180302175757.28192-5-enric.balletbo@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>, Russell King <rmk+kernel@armlinux.org.uk>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRnJlaXRhZywgMi4gTcOkcnogMjAxOCwgMTg6NTc6NTYgQ0VUIHNjaHJpZWIgRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYToKPiBGcm9tOiBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJvY2stY2hpcHMu
Y29tPgo+IAo+IFRoZSBIRE1JIHZwbGwgY2xvY2sgc2hvdWxkIGJlIGVuYWJsZWQgd2hlbiBiaW5k
KCkgaXMgY2FsbGVkLiBTbyBtb3ZlIHRoZQo+IGNsa19wcmVwYXJlX2VuYWJsZSBvZiB0aGF0IGNs
b2NrIHRvIGJpbmQoKSBmdW5jdGlvbiBhbmQgYWRkIHRoZSBtaXNzaW5nCj4gY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKCkgcmVxdWlyZWQgaW4gZXJyb3IgaGFuZGxpbmcgcGF0aCBhbmQgdW5iaW5kKCku
Cj4gCj4gRml4ZXM6IDEyYjlmMjA0ZTgwNCAoImRybTogYnJpZGdlL2R3X2hkbWk6IGFkZCByb2Nr
Y2hpcCByazMyODggc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogSmVmZnkgQ2hlbiA8amVmZnku
Y2hlbkByb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUaGllcnJ5IEVzY2FuZGUgPHRo
aWVycnkuZXNjYW5kZUBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxl
dGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+CgphcHBsaWVkIHRvIGRy
bS1taXNjLW5leHQKClRoYW5rcwpIZWlrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwK
