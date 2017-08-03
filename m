From: Sandy Huang <sandy.huang@rock-chips.com>
Subject: Re: [PATCH 2/6] drm/rockchip: vop: fix iommu page fault when resume
Date: Thu, 3 Aug 2017 21:06:27 +0800
Message-ID: <5c613e33-f5f2-6b5f-69a6-cc3a7aa93a71@rock-chips.com>
References: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
 <1501494582-6934-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1501494582-6934-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

SGkgbWFyaywKCuWcqCAyMDE3LzcvMzEgMTc6NDksIE1hcmsgWWFvIOWGmemBkzoKPiBJb21tdSB3
b3VsZCBnZXQgcGFnZSBmYXVsdCB3aXRoIGZvbGxvd2luZyBwYXRoOgo+ICAgICB2b3BfZGlzYWJs
ZToKPiAgICAgICAgMSwgZGlzYWJsZSBhbGwgd2luZG93cyBhbmQgc2V0IHZvcCBjb25maWcgZG9u
ZQo+ICAgICAgICAyLCB2b3AgZW50ZXIgdG8gc3RhbmR5LCBhbGwgd2luZG93cyBub3Qgd29ya3Ms
IGJ1dCB0aGVpciByZWdpc3RlcnMKPiAgICAgICAgICAgYXJlIG5vdCBjbGVhbiwgd2hlbiB5b3Ug
cmVhZCB3aW5kb3cncyBlbmFibGUgYml0LCBtYXkgZm91bmQgdGhlCj4gICAgICAgICAgIHdpbmRv
dyBpcyBlbmFibGUuCj4gCj4gICAgIHZvcF9lbmFibGU6Cj4gICAgICAgIDEsIG1lbWNweSh2b3At
PnJlZ3NiYWssIHZvcC0+cmVncywgbGVuKQo+ICAgICAgICAgICBzYXZlIGN1cnJlbnQgdm9wIHJl
Z2lzdGVycyB0byB2b3AtPnJlZ3NiYWssIHRoZW4geW91IGNhbiBmb3VuZAo+ICAgICAgICAgICB3
aW5kb3cgaXMgZW5hYmxlIG9uIHJlZ3NiYWsuCj4gICAgICAgIDIsIFZPUF9XSU5fU0VUKHZvcCwg
d2luLCBnYXRlLCAxKTsKPiAgICAgICAgICAgZm9yY2UgZW5hYmxlIHdpbmRvdyBnYXRlLCBidXQg
Z2F0ZSBhbmQgZW5hYmxlIGFyZSBvbiBzYW1lCj4gICAgICAgICAgIGhhcmR3YXJlIHJlZ2lzdGVy
LCB0aGVuIHdpbmRvdyBlbmFibGUgYml0IHJld3JpdGUgdG8gdm9wIGhhcmR3YXJlLgo+ICAgICAg
ICAzLCB2b3AgcG93ZXIgb24sIGFuZCB2b3AgbWlnaHQgdHJ5IHRvIHNjYW4gZGVzdHJveWVkIGJ1
ZmZlciwKPiAgICAgICAgICAgdGhlbiBpb21tdSBnZXQgcGFnZSBmYXVsdC4KPiAKPiBNb3ZlIHdp
bmRvd3MgZGlzYWJsZSBhZnRlciB2b3AgcmVnc2JhayByZXN0b3JlLCB0aGVuIHZvcCByZWdzYmFr
IG1lY2hhbmlzbQo+IHdvdWxkIGtlZXAgdHJhY2luZyB0aGUgbW9kaWZ5LCBldmVyeXRoaW5nIHdv
dWxkIGJlIHNhZmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJvY2st
Y2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuYyB8IDMzICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gCgpSZXZpZXdlZC1ieTog
U2FuZHkgaHVhbmcgPHNhbmR5Lmh1YW5nQHJvY2stY2hpcHMuY29tPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
