From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: fix VOP_WIN_GET macro
Date: Thu, 08 Aug 2019 00:48:14 +0200
Message-ID: <2679769.bco7YeSQm7@diego>
References: <20190703095111.29117-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20190703095111.29117-1-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@metanate.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

QW0gTWl0dHdvY2gsIDMuIEp1bGkgMjAxOSwgMTE6NTE6MTEgQ0VTVCBzY2hyaWViIEpvaG4gS2Vl
cGluZzoKPiBDb21taXQgOWE2MWM1NGI5YmZmICgiZHJtL3JvY2tjaGlwOiB2b3A6IGdyb3VwIHZv
cCByZWdpc3RlcnMiKSBzZWVtcyB0bwo+IGhhdmUgdW5pbnRlbnRpb25hbGx5IGNoYW5nZWQgdGhl
IGRlZmludGlvbiBvZiB0aGlzIG1hY3JvLiAgU2luY2UgaXQgaXMKPiB1bnVzZWQsIHRoaXMgd2Fz
IG5vdCBzcG90dGVkIGJ1dCBhbnkgYXR0ZW1wdCB0byB1c2UgaXQgcmVzdWx0cyBpbgo+IGNvbXBp
bGF0aW9uIGVycm9ycy4KPiAKPiBSZXZlcnQgdG8gdGhlIHByZXZpb3VzIGRlZmluaXRpb24uCj4g
Cj4gRml4ZXM6IDlhNjFjNTRiOWJmZiAoImRybS9yb2NrY2hpcDogdm9wOiBncm91cCB2b3AgcmVn
aXN0ZXJzIikKPiBTaWduZWQtb2ZmLWJ5OiBKb2huIEtlZXBpbmcgPGpvaG5AbWV0YW5hdGUuY29t
PgoKYXBwbGllZCB0byBkcm0tbWlzYy1uZXh0CgpUaGFua3MKSGVpa28KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWw=
