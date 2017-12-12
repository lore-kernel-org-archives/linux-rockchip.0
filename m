From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 04/41] drm/rockchip: Respect page offset for PRIME mmap
 calls
Date: Tue, 12 Dec 2017 17:58:24 +0100
Message-ID: <2101866.79D84rxXxt@phil>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <20170310043305.17216-5-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170310043305.17216-5-seanpaul@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Tomasz Figa <tfiga@chromium.org>, dri-devel@lists.freedesktop.org, =?ISO-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>, linux-arm-kernel@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

SGksCgpBbSBEb25uZXJzdGFnLCA5LiBNw6RyeiAyMDE3LCAyMzozMjoxOSBDRVQgc2NocmllYiBT
ZWFuIFBhdWw6Cj4gRnJvbTogw5hyamFuIEVpZGUgPG9yamFuLmVpZGVAYXJtLmNvbT4KPiAKPiBX
aGVuIG1hcHBpbmcgZXh0ZXJuYWwgRE1BLWJ1ZnMgdGhyb3VnaCB0aGUgUFJJTUUgbW1hcCBjYWxs
LCB3ZSBtaWdodCBiZQo+IGdpdmVuIGFuIG9mZnNldCB3aGljaCBoYXMgdG8gYmUgcmVzcGVjdGVk
LiBIb3dldmVyIGZvciB0aGUgaW50ZXJuYWwgRFJNCj4gR0VNIG1tYXAgcGF0aCwgd2UgaGF2ZSB0
byBpZ25vcmUgdGhlIGZha2UgbW1hcCBvZmZzZXQgdXNlZCB0byBpZGVudGlmeQo+IHRoZSBidWZm
ZXIgb25seS4gQ3VycmVudGx5IHRoZSBjb2RlIGFsd2F5cyB6ZXJvZXMgb3V0IHZtYS0+dm1fcGdv
ZmYsCj4gd2hpY2ggYnJlYWtzIHRoZSBmb3JtZXIuCj4gCj4gVGhpcyBwYXRjaCBmaXhlcyB0aGUg
cHJvYmxlbSBieSBtb3ZpbmcgdGhlIHZtX3Bnb2ZmIGFzc2lnbm1lbnQgdG8gYQo+IGZ1bmN0aW9u
IHRoYXQgaXMgdXNlZCBvbmx5IGZvciBHRU0gbW1hcCBwYXRoLCBzbyB0aGF0IHRoZSBQUklNRSBw
YXRoCj4gcmV0YWlucyB0aGUgb3JpZ2luYWwgb2Zmc2V0Lgo+IAo+IEJVRz1jaHJvbWUtb3MtcGFy
dG5lcjo1NjYxNQo+IFRFU1Q9Z3JhcGhpY3NfR0xCZW5jaAoKVW5uZWVkZWQgY2hyb21lb3MtY3J1
ZnQuCgo+IENjOiBEYW5pZWwgS3VydHogPGRqa3VydHpAY2hyb21pdW0ub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IMOYcmphbiBFaWRlIDxvcmphbi5laWRlQGFybS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
VG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFBh
dWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KCldpdGggdGhlIHNhbWUgdGVzdGFzIHBhdGNoIDMg
IChyazMzMjggKyBsaW1hKQpUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
