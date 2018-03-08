From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v9 2/5] drm/rockchip: inno_hdmi: Fix error handling path.
Date: Thu, 08 Mar 2018 17:38:30 +0100
Message-ID: <3005091.N6bvNJytYr@diego>
References: <20180302175757.28192-1-enric.balletbo@collabora.com>
 <20180302175757.28192-3-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180302175757.28192-3-enric.balletbo@collabora.com>
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

QW0gRnJlaXRhZywgMi4gTcOkcnogMjAxOCwgMTg6NTc6NTQgQ0VUIHNjaHJpZWIgRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYToKPiBGcm9tOiBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJvY2stY2hpcHMu
Y29tPgo+IAo+IEFkZCBtaXNzaW5nIGVycm9yIGhhbmRsaW5nIGluIGJpbmQoKS4KPiAKPiBGaXhl
czogNDEyZDRhZTZiN2E1ICgiZHJtL3JvY2tjaGlwOiBoZG1pOiBhZGQgSW5ub3NpbGljb24gSERN
SSBzdXBwb3J0IikKPiBTaWduZWQtb2ZmLWJ5OiBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJvY2st
Y2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRoaWVycnkgRXNjYW5kZSA8dGhpZXJyeS5lc2Nh
bmRlQGNvbGxhYm9yYS5jb20+Cj4gW21vdmVkIGNsa19kaXNhYmxlX3VucHJlcGFyZSByZW9yZGVy
aW5nIGluIHVuYmluZCB0byBzZXBhcmF0ZSBwYXRjaF0KPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBC
YWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgoKYXBwbGllZCB0
byBkcm0tbWlzYy1uZXh0CgpUaGFua3MKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpLWRldmVsCg==
