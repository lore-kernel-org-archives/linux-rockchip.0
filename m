From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 0/3] drm/rockchip: fix cursor performance with atomic
Date: Thu, 21 Jan 2016 08:51:58 +0800
Message-ID: <56A02BAE.1050009@rock-chips.com>
References: <cover.1452782114.git.john@metanate.com>
 <cover.1453200263.git.john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <cover.1453200263.git.john@metanate.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@metanate.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDAx5pyIMTnml6UgMTg6NDYsIEpvaG4gS2VlcGluZyB3cm90ZToKPiBUaGUgZmly
c3QgdHdvIHBhdGNoZXMgYXJlIHVuY2hhbmdlZCBzaW5jZSB2MSBidXQgdGhlIGNvbW1lbnQgaW4g
dGhlCj4gdGhpcmQgaGFzIGJlZW4gZXhwYW5kZWQgZm9sbG93aW5nIFRoaWVycnkncyBjb21tZW50
cy4KPgo+IEpvaG4gS2VlcGluZyAoMyk6Cj4gICAgZHJtL2F0b21pYy1oZWxwZXI6IEV4cG9ydCBm
cmFtZWJ1ZmZlcl9jaGFuZ2VkKCkKPiAgICBkcm0vcm9ja2NoaXA6IGRvbid0IHdhaXQgZm9yIHZi
bGFuayBpZiBmYiBoYXNuJ3QgY2hhbmdlZAo+ICAgIGRybS9yb2NrY2hpcDogZXhwbGFpbiB3aHkg
d2UgY2FuJ3Qgd2FpdF9mb3JfdmJsYW5rcwo+Cj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21p
Y19oZWxwZXIuYyAgICAgICAgfCAyNCArKysrKysrKysrKysrKysrKysrKy0tLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyB8IDIzICsrKysrKysrKysrKysr
KysrKysrKy0tCj4gICBpbmNsdWRlL2RybS9kcm1fYXRvbWljX2hlbHBlci5oICAgICAgICAgICAg
fCAgNCArKysrCj4gICAzIGZpbGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCj4KCkhpIEpvaG4KClRoYW5rcyBmb3IgeW91ciBmaXgsIGFwcGxpZWQgdGhlc2UgdGhy
ZWUgcGF0Y2hlcyBpbnRvIG15IGRybS1uZXh0LCA6LSkKCi0tIArvvK1hcmsgWWFvCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxp
bmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
