From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH 06/41] drm/bridge: analogix_dp: Don't power bridge in
 analogix_dp_bind
Date: Thu, 16 Mar 2017 13:31:51 +0100
Message-ID: <241af00e-6e29-54f1-fc64-81d1ea03dd2e@samsung.com>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <CGME20170310044535epcas2p115e856e9d5985512e95da4dae444d854@epcas2p1.samsung.com>
 <20170310043305.17216-7-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-reply-to: <20170310043305.17216-7-seanpaul@chromium.org>
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
Cc: zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Douglas Anderson <dianders@chromium.org>, Yakir Yang <ykk@rock-chips.com>, =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gMTAuMDMuMjAxNyAwNTozMiwgU2VhbiBQYXVsIHdyb3RlOgo+IEZyb206IHphaW4gd2FuZyA8
d3p6QHJvY2stY2hpcHMuY29tPgo+Cj4gVGhlIGJyaWRnZSBkb2VzIG5vdCBuZWVkIHRvIGJlIHBv
d2VyZWQgaW4gYW5hbG9naXhfZHBfYmluZCgpLCBzbwo+IHJlbW92ZSB0aGUgY2FsbHMgdG8gcG1f
cnVudGltZV9nZXQoKS9waHlfcG93ZXJfb24oKS9hbmFsb2dpeF9kcF9pbml0X2RwKCkKPiBhcyB3
ZWxsIGFzIHRoZWlyIHBvd2VyLW9mZiBjb3VudGVycGFydHMuCj4KPiBDYzogU3TDqXBoYW5lIE1h
cmNoZXNpbiA8bWFyY2hldUBjaHJvbWl1bS5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogemFpbiB3YW5n
IDx3enpAcm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2Flc2FyIFdhbmcgPHd4dEBy
b2NrLWNoaXBzLmNvbT4KPiBbdGhlIHBhdGNoIG9yaWdpbmFsbHkganVzdCByZW1vdmVkIHRoZSBw
b3dlcl9vbiBwb3J0aW9uLCBzZWFucGF1bCByZW1vdmVkCj4gdGhlIHBvd2VyIG9mZiBjb2RlIGFz
IHdlbGwgYXMgaW1wcm92ZWQgdGhlIGNvbW1pdCBtZXNzYWdlXQo+IFNpZ25lZC1vZmYtYnk6IFNl
YW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgoKUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogSGFq
ZGEgPGEuaGFqZGFAc2Ftc3VuZy5jb20+Ci0tClJlZ2FyZHMKQW5kcnplagpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
