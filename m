From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH 31/41] drm/bridge: analogix_dp: Move fast link training
 detect to set_bridge
Date: Wed, 22 Mar 2017 11:25:34 +0100
Message-ID: <fe22f4a3-7def-3db0-e966-15b0d9d03dca@samsung.com>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <CGME20170310045055epcas4p1ee50079b7f176e70f22ab5219735d7a1@epcas4p1.samsung.com>
 <20170310043305.17216-32-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-reply-to: <20170310043305.17216-32-seanpaul@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Douglas Anderson <dianders@chromium.org>, Tomasz Figa <tfiga@chromium.org>, Yakir Yang <ykk@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gMTAuMDMuMjAxNyAwNTozMiwgU2VhbiBQYXVsIHdyb3RlOgo+IEZyb206IHphaW4gd2FuZyA8
d3p6QHJvY2stY2hpcHMuY29tPgo+Cj4gSXQncyB0b28gZWFybHkgdG8gZGV0ZWN0IGZhc3QgbGlu
ayB0cmFpbmluZywgaWYgb3RoZXIgc3RlcCBhZnRlciBpdCBmYWlsZWQsCj4gd2Ugd2lsbCBzZXQg
ZmFzdF9saW5rIGZsYWcgdG8gMSwgYW5kIHJldHJ5IHNldF9icmlkZ2UgYWdhaW4uIEluIHRoaXMg
Y2FzZQo+IHdlIHdpbGwgcG93ZXIgZG93biBhbmQgcG93ZXIgdXAgcGFuZWwgcG93ZXIgc3VwcGx5
LCBhbmQgd2Ugd2lsbCBkbyBmYXN0IGxpbmsKPiB0cmFpbmluZyBzaW5jZSB3ZSBoYXZlIHNldCBm
YXN0X2xpbmsgZmxhZyB0byAxLiBJbiBmYWN0LCB3ZSBzaG91bGQgZG8gZnVsbAo+IGxpbmsgdHJh
aW5pbmcgbm93LCBub3QgdGhlIGZhc3QgbGluayB0cmFpbmluZy4gU28gd2Ugc2hvdWxkIG1vdmUg
dGhlIGZhc3QKPiBsaW5rIGRldGVjdGlvbiBhdCB0aGUgZW5kIG9mIHNldF9icmlkZ2UuCj4KPiBD
YzogVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiB6YWlu
IHdhbmcgPHd6ekByb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEb3VnbGFzIEFuZGVy
c29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogU2VhbiBQYXVsIDxz
ZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpk
YUBzYW1zdW5nLmNvbT4KLS0KUmVnYXJkcwpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
