From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v8 3/8] drm/rockchip: analogix_dp: Add a sanity check for
 rockchip_drm_psr_register()
Date: Thu, 01 Mar 2018 16:41:19 +0100
Message-ID: <1924595.cjJt1kUqps@diego>
References: <20180110162348.22765-1-thierry.escande@collabora.com>
 <20180110162348.22765-4-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180110162348.22765-4-thierry.escande@collabora.com>
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

QW0gTWl0dHdvY2gsIDEwLiBKYW51YXIgMjAxOCwgMTc6MjM6NDMgQ0VUIHNjaHJpZWIgVGhpZXJy
eSBFc2NhbmRlOgo+IEZyb206IEplZmZ5IENoZW4gPGplZmZ5LmNoZW5Acm9jay1jaGlwcy5jb20+
Cj4gCj4gVGhlIHJvY2tjaGlwX2RybV9wc3JfcmVnaXN0ZXIoKSBjYW4gZmFpbCwgc28gYWRkIGEg
c2FuaXR5IGNoZWNrIGZvciB0aGF0Lgo+IAo+IEFsc28gcmVvcmRlciB0aGUgY2FsbHMgaW4gdW5i
aW5kKCkgdG8gbWF0Y2ggYmluZCgpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEplZmZ5IENoZW4gPGpl
ZmZ5LmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBFc2NhbmRl
IDx0aGllcnJ5LmVzY2FuZGVAY29sbGFib3JhLmNvbT4KCmFwcGxpZWQgdG8gZHJtLW1pc2MsIGFm
dGVyIHNwbGl0dGluZyBvdXQgdGhlIHJlb3JkZXJpbmcgaW50byBhCnNlcGFyYXRlIHBhdGNoLiBI
YXZpbmcgdGhlc2Ugc3VycHJpc2UgY2hhbmdlcyBoaWRkZW4gYmVoaW5kCmFuICJhbHNvIiBmZWVs
cyBub3QgaWRlYWwuCgoKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCg==
