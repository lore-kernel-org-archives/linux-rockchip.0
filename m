From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: Use struct_size() in devm_kzalloc()
Date: Wed, 29 Aug 2018 13:41:50 +0200
Message-ID: <2639880.ggikvLCEDc@phil>
References: <20180826184712.GA9330@embeddedor.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180826184712.GA9330@embeddedor.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gU29ubnRhZywgMjYuIEF1Z3VzdCAyMDE4LCAyMDo0NzoxMiBDRVNUIHNjaHJpZWIgR3VzdGF2
byBBLiBSLiBTaWx2YToKPiBPbmUgb2YgdGhlIG1vcmUgY29tbW9uIGNhc2VzIG9mIGFsbG9jYXRp
b24gc2l6ZSBjYWxjdWxhdGlvbnMgaXMgZmluZGluZwo+IHRoZSBzaXplIG9mIGEgc3RydWN0dXJl
IHRoYXQgaGFzIGEgemVyby1zaXplZCBhcnJheSBhdCB0aGUgZW5kLCBhbG9uZwo+IHdpdGggbWVt
b3J5IGZvciBzb21lIG51bWJlciBvZiBlbGVtZW50cyBmb3IgdGhhdCBhcnJheS4gRm9yIGV4YW1w
bGU6Cj4gCj4gc3RydWN0IGZvbyB7Cj4gCWludCBzdHVmZjsKPiAgICAgICAgIHZvaWQgKmVudHJ5
W107Cj4gfTsKPiAKPiBpbnN0YW5jZSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZihzdHJ1Y3Qg
Zm9vKSArIHNpemVvZih2b2lkICopICogY291bnQsIEdGUF9LRVJORUwpOwo+IAo+IG9yLCBsaWtl
IGluIHRoaXMgcGFydGljdWxhciBjYXNlOgo+IAo+IHNpemUgPSBzaXplb2Yoc3RydWN0IGZvbykg
KyBzaXplb2Yodm9pZCAqKSAqIGNvdW50Owo+IGluc3RhbmNlID0gZGV2bV9remFsbG9jKGRldiwg
c2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gCj4gSW5zdGVhZCBvZiBsZWF2aW5nIHRoZXNlIG9wZW4tY29k
ZWQgYW5kIHByb25lIHRvIHR5cGUgbWlzdGFrZXMsIHdlIGNhbgo+IG5vdyB1c2UgdGhlIG5ldyBz
dHJ1Y3Rfc2l6ZSgpIGhlbHBlcjoKPiAKPiBpbnN0YW5jZSA9IGRldm1fa3phbGxvYyhkZXYsIHN0
cnVjdF9zaXplKGluc3RhbmNlLCBlbnRyeSwgY291bnQpLAo+IEdGUF9LRVJORUwpOwo+IAo+IFRo
aXMgaXNzdWUgd2FzIGRldGVjdGVkIHdpdGggdGhlIGhlbHAgb2YgQ29jY2luZWxsZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZvQGVtYmVkZGVkb3IuY29t
PgoKYXBwbGllZCB0byBkcm0tbWlzYyB3aXRoIEtlZXMnIFJldmlldwoKVGhhbmtzCkhlaWtvCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
