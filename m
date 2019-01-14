From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/4] drm/rockchip: add missing of_node_put
Date: Mon, 14 Jan 2019 11:09:05 +0100
Message-ID: <10335721.Px6jQUZGiA@phil>
References: <1547369264-24831-1-git-send-email-Julia.Lawall@lip6.fr>
 <3397932.PmTvevuZIG@phil> <20190114100556.GC10517@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20190114100556.GC10517@phenom.ffwll.local>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Julia Lawall <Julia.Lawall@lip6.fr>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gTW9udGFnLCAxNC4gSmFudWFyIDIwMTksIDExOjA1OjU2IENFVCBzY2hyaWViIERhbmllbCBW
ZXR0ZXI6Cj4gT24gU3VuLCBKYW4gMTMsIDIwMTkgYXQgMDc6NDg6NDlQTSArMDEwMCwgSGVpa28g
U3R1ZWJuZXIgd3JvdGU6Cj4gPiBBbSBTb25udGFnLCAxMy4gSmFudWFyIDIwMTksIDA5OjQ3OjQz
IENFVCBzY2hyaWViIEp1bGlhIExhd2FsbDoKPiA+ID4gVGhlIGRldmljZSBub2RlIGl0ZXJhdG9y
cyBwZXJmb3JtIGFuIG9mX25vZGVfZ2V0IG9uIGVhY2ggaXRlcmF0aW9uLCBzbyBhCj4gPiA+IGp1
bXAgb3V0IG9mIHRoZSBsb29wIHJlcXVpcmVzIGFuIG9mX25vZGVfcHV0Lgo+ID4gPiAKPiA+ID4g
VGhlIHNlbWFudGljIHBhdGNoIHRoYXQgZml4ZXMgdGhpcyBwcm9ibGVtIGlzIGFzIGZvbGxvd3MK
PiA+ID4gKGh0dHA6Ly9jb2NjaW5lbGxlLmxpcDYuZnIpOgo+ID4gPiAKPiA+ID4gLy8gPHNtcGw+
Cj4gPiA+IEBACj4gPiA+IGV4cHJlc3Npb24gcm9vdCxlOwo+ID4gPiBsb2NhbCBpZGV4cHJlc3Np
b24gY2hpbGQ7Cj4gPiA+IGl0ZXJhdG9yIG5hbWUgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZTsKPiA+
ID4gQEAKPiA+ID4gCj4gPiA+ICBmb3JfZWFjaF9jaGlsZF9vZl9ub2RlKHJvb3QsIGNoaWxkKSB7
Cj4gPiA+ICAgIC4uLiB3aGVuICE9IG9mX25vZGVfcHV0KGNoaWxkKQo+ID4gPiAgICAgICAgd2hl
biAhPSBlID0gY2hpbGQKPiA+ID4gKyAgb2Zfbm9kZV9wdXQoY2hpbGQpOwo+ID4gPiA/ICBicmVh
azsKPiA+ID4gICAgLi4uCj4gPiA+IH0KPiA+ID4gLi4uIHdoZW4gIT0gY2hpbGQKPiA+ID4gLy8g
PC9zbXBsPgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSnVsaWEgTGF3YWxsIDxKdWxpYS5M
YXdhbGxAbGlwNi5mcj4KPiA+IAo+ID4gSSd2ZSBhZGRlZCBhIGZpeGVzK3N0YWJsZSB0YWcgYW5k
IGFwcGxpZWQgaXQgdG8gZHJtLW1pc2MtZml4ZXMKPiAKPiBBbGwgb2YgdGhlbSBvciBqdXN0IHRo
aXMgb25lIGhlcmU/IFRoZXNlIGNsZWFudXAgcGF0Y2hlcyBoYXZlIGEgaGlnaAo+IGNoYW5jZSBv
ZiBmYWxsaW5nIHRocm91Z2ggY3JhY2tzLCBzbyB0YWtpbmcgdGhlbSBhbGwgdXN1YWxseSB3b3Jr
cyBvdXQKPiBiZXR0ZXIgLi4uCgpUaGF0IGlzIHRoZSBvbmx5IG9uZSBJIGdvdCwgc28gcmlnaHQg
bm93IEkgb25seSBhcHBsaWVkIHRoaXMgb25lIGluIG15IGluYm94LgpXZWVrZW5kIGFuZCBzdWNo
IHJlc3VsdGVkIGluIG1lIG5vdCBnb2luZyBsb29raW5nIGZvciBvdGhlciBvbmVzLgoKSGVpa28K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2
ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
