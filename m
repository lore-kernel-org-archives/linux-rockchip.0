From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v9 3/5] drm/rockchip: inno_hdmi: reorder
 clk_disable_unprepare call in unbind
Date: Thu, 08 Mar 2018 17:38:42 +0100
Message-ID: <7281273.So3vQhM8Nz@diego>
References: <20180302175757.28192-1-enric.balletbo@collabora.com>
 <20180302175757.28192-4-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180302175757.28192-4-enric.balletbo@collabora.com>
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

QW0gRnJlaXRhZywgMi4gTcOkcnogMjAxOCwgMTg6NTc6NTUgQ0VUIHNjaHJpZWIgRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYToKPiBGcm9tOiBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJvY2stY2hpcHMu
Y29tPgo+IAo+IEluIGJpbmQgdGhlIGNsa19wcmVwYXJlX2VuYWJsZSBvZiB0aGUgSERNSSBwY2xr
IGlzIGNhbGxlZCBiZWZvcmUgYWRkaW5nIHRoZQo+IGkyY19hZGFwdGVyLiBTbyBpdCBzaG91bGQg
YmUgdGhlIG90aGVyIHdheSBhcm91bmQgaW4gdW5iaW5kLCBmaXJzdCByZW1vdmUKPiB0aGUgaTJj
X2FkYXB0ZXIgYW5kIHRoZW4gY2FsbCB0aGUgY2xrX2Rpc2FibGVfdW5wcmVwYXJlLgo+IAo+IEZp
eGVzOiA0MTJkNGFlNmI3YTUgKCJkcm0vcm9ja2NoaXA6IGhkbWk6IGFkZCBJbm5vc2lsaWNvbiBI
RE1JIHN1cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6IEplZmZ5IENoZW4gPGplZmZ5LmNoZW5Acm9j
ay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBFc2NhbmRlIDx0aGllcnJ5LmVz
Y2FuZGVAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNl
cnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgoKYXBwbGllZCB0byBkcm0tbWlzYy1u
ZXh0CgpUaGFua3MKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCg==
