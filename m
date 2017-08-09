From: Archit Taneja <architt@codeaurora.org>
Subject: Re: [PATCH 0/3] drm: make drm_connector_funcs structures const
Date: Wed, 9 Aug 2017 16:02:45 +0530
Message-ID: <3bb03b50-5b73-4fee-2323-d3b67ed3553e@codeaurora.org>
References: <1502191712-11231-1-git-send-email-bhumirks@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1502191712-11231-1-git-send-email-bhumirks@gmail.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Bhumika Goyal <bhumirks@gmail.com>, julia.lawall@lip6.fr, a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, maxime.ripard@free-electrons.com, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

CgpPbiAwOC8wOC8yMDE3IDA0OjU4IFBNLCBCaHVtaWthIEdveWFsIHdyb3RlOgo+IERlY2xhcmUg
ZHJtX2Nvbm5lY3Rvcl9mdW5jcyBzdHJ1Y3R1cmVzIGFzIGNvbnN0LgoKQ291bGQgeW91IHJlYmFz
ZSB0aGlzIHNlcmllcyBvdmVyIHRoZSBsYXRlc3QgZHJtLW1pc2MtbmV4dD8gVGhlCnJlY2VudGx5
IG1lcmdlZCBwYXRjaCAiZHJtOiBOdWtlIGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kcG1z
IgpjYXVzZXMgY29uZmxpY3RzIHdpdGggdGhlc2UuCgpkcm0tbWlzYy1uZXh0OgoKaHR0cHM6Ly9j
Z2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MvbG9nLwoKVGhhbmtzLApBcmNoaXQKCj4g
Cj4gQmh1bWlrYSBHb3lhbCAoMyk6Cj4gICAgZHJtL2JyaWRnZTogbWFrZSBkcm1fY29ubmVjdG9y
X2Z1bmNzIHN0cnVjdHVyZXMgY29uc3QKPiAgICBkcm0vc3VuNGk6IG1ha2UgZHJtX2Nvbm5lY3Rv
cl9mdW5jcyBzdHJ1Y3R1cmVzIGNvbnN0Cj4gICAgZHJtL3JvY2tjaGlwOiBtYWtlIGRybV9jb25u
ZWN0b3JfZnVuY3Mgc3RydWN0dXJlcyBjb25zdAo+IAo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9hZHY3NTExL2Fkdjc1MTFfZHJ2LmMgfCAyICstCj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvaW5ub19oZG1pLmMgICAgICAgICB8IDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9z
dW40aV9yZ2IuYyAgICAgICAgICAgIHwgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjRpX3R2LmMgICAgICAgICAgICAgfCAyICstCj4gICA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKCi0tIApRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRl
ciwgSW5jLiBpcyBhIG1lbWJlciBvZiBDb2RlIEF1cm9yYSBGb3J1bSwKYSBMaW51eCBGb3VuZGF0
aW9uIENvbGxhYm9yYXRpdmUgUHJvamVjdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwK
