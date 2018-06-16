From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 5/5] drm/rockchip: lvds: add missing of_node_put
Date: Sat, 16 Jun 2018 14:24:09 +0200
Message-ID: <1948755.WvuARZiism@diego>
References: <1527102436-13447-1-git-send-email-Julia.Lawall@lip6.fr>
 <1527102436-13447-6-git-send-email-Julia.Lawall@lip6.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1527102436-13447-6-git-send-email-Julia.Lawall@lip6.fr>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgSnVsaWEsCgpBbSBNaXR0d29jaCwgMjMuIE1haSAyMDE4LCAyMTowNzoxNiBDRVNUIHNjaHJp
ZWIgSnVsaWEgTGF3YWxsOgo+IFRoZSBkZXZpY2Ugbm9kZSBpdGVyYXRvcnMgcGVyZm9ybSBhbiBv
Zl9ub2RlX2dldCBvbiBlYWNoIGl0ZXJhdGlvbiwgc28gYQo+IGp1bXAgb3V0IG9mIHRoZSBsb29w
IHJlcXVpcmVzIGFuIG9mX25vZGVfcHV0Lgo+IAo+IFRoZSBzZW1hbnRpYyBwYXRjaCB0aGF0IGZp
eGVzIHRoaXMgcHJvYmxlbSBpcyBhcyBmb2xsb3dzCj4gKGh0dHA6Ly9jb2NjaW5lbGxlLmxpcDYu
ZnIpOgo+IAo+IC8vIDxzbXBsPgo+IEBACj4gZXhwcmVzc2lvbiByb290LGU7Cj4gbG9jYWwgaWRl
eHByZXNzaW9uIGNoaWxkOwo+IGl0ZXJhdG9yIG5hbWUgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZTsK
PiBAQAo+IAo+ICBmb3JfZWFjaF9jaGlsZF9vZl9ub2RlKHJvb3QsIGNoaWxkKSB7Cj4gICAgLi4u
IHdoZW4gIT0gb2Zfbm9kZV9wdXQoY2hpbGQpCj4gICAgICAgIHdoZW4gIT0gZSA9IGNoaWxkCj4g
KyAgb2Zfbm9kZV9wdXQoY2hpbGQpOwo+ID8gIGJyZWFrOwo+ICAgIC4uLgo+IH0KPiAuLi4gd2hl
biAhPSBjaGlsZAo+IC8vIDwvc21wbD4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKdWxpYSBMYXdhbGwg
PEp1bGlhLkxhd2FsbEBsaXA2LmZyPgoKdGhhbmtzIGZvciBjYXRjaGluZyB0aGlzLiBJJ3ZlIGFk
ZGVkIGEgIkZpeGVzIi10YWcgYW5kCmFwcGxpZWQgdGhlIHBhdGNoIHRvIGRybS1taXNjLW5leHQg
CgoKVGhhbmtzCkhlaWtvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCg==
