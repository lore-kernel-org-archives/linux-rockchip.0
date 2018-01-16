From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 39/40] drm/rockchip: analogix_dp: Fix invalid
 implementation of unbind
Date: Tue, 16 Jan 2018 11:10:55 +0900
Message-ID: <CAAFQd5DV0Njb=B7pNWUCZWGc6qiruQkXEAedCJDUr6+jU11PPw@mail.gmail.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
 <20180115171614.14474-40-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180115171614.14474-40-thierry.escande@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Thierry Escande <thierry.escande@collabora.com>
Cc: zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, Douglas Anderson <dianders@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Thierry Reding <thierry.reding@gmail.com>, Yakir Yang <ykk@rock-chips.com>, =?UTF-8?Q?=C3=98rjan_Eide?= <orjan.eide@arm.com>, Mark Yao <mark.yao@rock-chips.com>, Haixia Shi <hshi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgVGhpZXJyeSwKCk9uIFR1ZSwgSmFuIDE2LCAyMDE4IGF0IDI6MTYgQU0sIFRoaWVycnkgRXNj
YW5kZQo8dGhpZXJyeS5lc2NhbmRlQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IEZyb206IFRvbWFz
eiBGaWdhIDx0ZmlnYUBjaHJvbWl1bS5vcmc+Cj4KPiBDdXJyZW50IGltcGxlbWVudGF0aW9uIG9m
IHVuYmluZCBkZXJlZmVyZW5jZXMgdGhlIGRydmRhdGEgcG9pbnRlcgo+IGFzc3VtaW5nIHRoYXQg
aXQncyBpdHMgb3duIGRhdGEsIGhvd2V2ZXIgdGhlIG93bmVyc2hpcCBiZWxvbmdzIHRvIHRoZQo+
IGFuYWxvZ2l4IGNvZGUsIHdoaWNoIG1lYW5zIHRoYXQgdGhlIHBvaW50ZXIgaXMgZGVyZWZlcmVu
Y2VkIHdpdGggd3JvbmcKPiB0eXBlLiBGaXggdGhpcyBieSB1c2luZyB0aGUgcmVjZW50bHkgYWRk
ZWQgcGxhdGZvcm0gZGF0YSAuY2xlYW51cCgpCj4gY2FsbGJhY2sgdG8gZG8gUm9ja2NoaXAtc3Bl
Y2lmaWMgdGhpbmdzIGF0IHVuYmluZC4KCkZpcnN0IG9mIGFsbCwgdGhhbmtzIGEgbG90IGZvciB0
YWtpbmcgY2FyZSBvZiB0aGVzZSBwYXRjaGVzLiBNdWNoIGFwcHJlY2lhdGVkLgoKT25lIHRoaW5n
IHRvIG5vdGUsIHRob3VnaCwgaXMgdGhhdCB0aGUgZm91ciBwYXRjaGVzICgzMSwgMzIsIDMzIGFu
ZCAzOQppbiB0aGlzIHNlcmllcyksIHdoaWNoIHdlIGluaXRpYWxseSBtYWRlIGZvciBmaXhpbmcg
dGhlIHByb2JsZW1zCnJlbGF0ZWQsIHdlcmUgbGF0ZXIgcmV2ZXJ0ZWQgYW5kIHJlcGxhY2VkIGJ5
IGEgY2xlYW5lciBzb2x1dGlvbi4KUGxlYXNlIHRha2UgYSBsb29rIGF0IHRoaXMgc2VyaWVzIG9u
IG91ciBnZXJyaXQ6CgpodHRwczovL2Nocm9taXVtLXJldmlldy5nb29nbGVzb3VyY2UuY29tL2Mv
Y2hyb21pdW1vcy90aGlyZF9wYXJ0eS9rZXJuZWwvKy80NDIzOTAvCmh0dHBzOi8vY2hyb21pdW0t
cmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9jaHJvbWl1bW9zL3RoaXJkX3BhcnR5L2tlcm5lbC8r
LzQ0MjM5Mi8KaHR0cHM6Ly9jaHJvbWl1bS1yZXZpZXcuZ29vZ2xlc291cmNlLmNvbS9jL2Nocm9t
aXVtb3MvdGhpcmRfcGFydHkva2VybmVsLysvNDQyMzkxLwoKUGVyaGFwcyB3ZSBjb3VsZCBza2lw
IHRoaXMgaW50ZXJtZWRpYXRlIHNvbHV0aW9uIGFuZCBqdXN0IGdvIHdpdGggdGhlCmFib3ZlIDMg
cGF0Y2hlcz8KCkJlc3QgcmVnYXJkcywKVG9tYXN6Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=
