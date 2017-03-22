From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH 40/41] drm/bridge: analogix_dp: Properly log AUX CH errors
Date: Wed, 22 Mar 2017 11:47:56 +0100
Message-ID: <0459cb7d-b00a-22be-8634-6c19ad9b9374@samsung.com>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <CGME20170310045125epcas4p4beef0f6ab61ff6d4fba2a347adfc452f@epcas4p4.samsung.com>
 <20170310043305.17216-41-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-reply-to: <20170310043305.17216-41-seanpaul@chromium.org>
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
Cc: =?UTF-8?B?5b6B5aKeIOeOiw==?= <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Douglas Anderson <dianders@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>, Yakir Yang <ykk@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gMTAuMDMuMjAxNyAwNTozMiwgU2VhbiBQYXVsIHdyb3RlOgo+IEZyb206IERvdWdsYXMgQW5k
ZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPgo+IFRoZSBjb2RlIGluIGFuYWxvZ2l4X2Rw
X3RyYW5zZmVyKCkgdGhhdCB3YXMgc3VwcG9zZWQgdG8gcHJpbnQgb3V0Ogo+ICAgQVVYIENIIGVy
cm9yIGhhcHBlbmVkCj4KPiBXYXMgYWN0dWFsbHkgZGVhZCBjb2RlLiBUaGF0J3MgYmVjYXVzZSB0
aGUgcHJldmlvdXMgY2hlY2sgKHdoZXRoZXIKPiB0aGUgaW50ZXJydXB0IHN0YXR1cyBpbmRpY2F0
ZWQgYW55IGVycm9ycykgd291bGQgaGF2ZSBoaXQgZm9yIGFsbAo+IGVycm9ycyBhbnl3YXkuCj4K
PiBMZXQncyBjb21iaW5lIHRoZSB0d28gZXJyb3IgY2hlY2tzIHNvIHdlIGNhbiBhY3R1YWxseSBz
ZWUgQVVYIENICj4gZXJyb3JzLiAgV2UnbGwgYWxzbyBkb3duZ3JhZGUgdGhlIG1lc3NhZ2UgdG8g
YSB3YXJuaW5nIHNpbmNlIHNvbWUgb2YKPiB0aGVzZSB0eXBlcyBvZiBlcnJvcnMgbWlnaHQgYmUg
ZXhwZWN0ZWQgZm9yIHNvbWUgZGlzcGxheXMuICBJZiB0aGlzCj4gZ2V0cyB0b28gbm9pc3kgd2Ug
Y2FuIGRvd25ncmFkZSBhZ2FpbiB0byBkZWJ1Zy4KPgo+IENjOiDlvoHlop4g546LIDx3enpAcm9j
ay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNA
Y2hyb21pdW0ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21p
dW0ub3JnPgpSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4K
LS0KUmVnYXJkcwpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwK
