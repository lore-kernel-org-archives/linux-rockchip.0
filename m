From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v8 2/8] drm/bridge: analogix_dp: Fix connector and encoder
 cleanup
Date: Thu, 01 Mar 2018 16:39:47 +0100
Message-ID: <17473410.zGek1k5XFt@diego>
References: <20180110162348.22765-1-thierry.escande@collabora.com>
 <20180110162348.22765-3-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180110162348.22765-3-thierry.escande@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: Thierry Escande <thierry.escande@collabora.com>, Neil Armstrong <narmstrong@baylibre.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel.vetter@intel.com>
List-Id: linux-rockchip.vger.kernel.org

QW0gTWl0dHdvY2gsIDEwLiBKYW51YXIgMjAxOCwgMTc6MjM6NDIgQ0VUIHNjaHJpZWIgVGhpZXJy
eSBFc2NhbmRlOgo+IEZyb206IEplZmZ5IENoZW4gPGplZmZ5LmNoZW5Acm9jay1jaGlwcy5jb20+
Cj4gCj4gU2luY2Ugd2UgYXJlIGluaXRpbmcgY29ubmVjdG9yIGluIHRoZSBjb3JlIGRyaXZlciBh
bmQgZW5jb2RlciBpbiB0aGUKPiBwbGF0IGRyaXZlciwgbGV0J3MgY2xlYW4gdGhlbSB1cCBpbiB0
aGUgcmlnaHQgcGxhY2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEplZmZ5IENoZW4gPGplZmZ5LmNo
ZW5Acm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBFc2NhbmRlIDx0aGll
cnJ5LmVzY2FuZGVAY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8
YS5oYWpkYUBzYW1zdW5nLmNvbT4KCmFwcGxpZWQgdG8gZHJtLW1pc2MtbmV4dCBhcyBpdCBoYWQg
YWxzbyBhIFJldmlldyBmcm9tIGRybS1icmlkZ2UgcGVvcGxlCgpUaGFua3MKSGVpa28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxp
bmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
