From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 3/4] drm/rockchip: add missing of_node_put
Date: Mon, 14 Jan 2019 11:05:56 +0100
Message-ID: <20190114100556.GC10517@phenom.ffwll.local>
References: <1547369264-24831-1-git-send-email-Julia.Lawall@lip6.fr>
 <1547369264-24831-4-git-send-email-Julia.Lawall@lip6.fr>
 <3397932.PmTvevuZIG@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <3397932.PmTvevuZIG@phil>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Julia Lawall <Julia.Lawall@lip6.fr>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gU3VuLCBKYW4gMTMsIDIwMTkgYXQgMDc6NDg6NDlQTSArMDEwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gQW0gU29ubnRhZywgMTMuIEphbnVhciAyMDE5LCAwOTo0Nzo0MyBDRVQgc2Nocmll
YiBKdWxpYSBMYXdhbGw6Cj4gPiBUaGUgZGV2aWNlIG5vZGUgaXRlcmF0b3JzIHBlcmZvcm0gYW4g
b2Zfbm9kZV9nZXQgb24gZWFjaCBpdGVyYXRpb24sIHNvIGEKPiA+IGp1bXAgb3V0IG9mIHRoZSBs
b29wIHJlcXVpcmVzIGFuIG9mX25vZGVfcHV0Lgo+ID4gCj4gPiBUaGUgc2VtYW50aWMgcGF0Y2gg
dGhhdCBmaXhlcyB0aGlzIHByb2JsZW0gaXMgYXMgZm9sbG93cwo+ID4gKGh0dHA6Ly9jb2NjaW5l
bGxlLmxpcDYuZnIpOgo+ID4gCj4gPiAvLyA8c21wbD4KPiA+IEBACj4gPiBleHByZXNzaW9uIHJv
b3QsZTsKPiA+IGxvY2FsIGlkZXhwcmVzc2lvbiBjaGlsZDsKPiA+IGl0ZXJhdG9yIG5hbWUgZm9y
X2VhY2hfY2hpbGRfb2Zfbm9kZTsKPiA+IEBACj4gPiAKPiA+ICBmb3JfZWFjaF9jaGlsZF9vZl9u
b2RlKHJvb3QsIGNoaWxkKSB7Cj4gPiAgICAuLi4gd2hlbiAhPSBvZl9ub2RlX3B1dChjaGlsZCkK
PiA+ICAgICAgICB3aGVuICE9IGUgPSBjaGlsZAo+ID4gKyAgb2Zfbm9kZV9wdXQoY2hpbGQpOwo+
ID4gPyAgYnJlYWs7Cj4gPiAgICAuLi4KPiA+IH0KPiA+IC4uLiB3aGVuICE9IGNoaWxkCj4gPiAv
LyA8L3NtcGw+Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEp1bGlhIExhd2FsbCA8SnVsaWEuTGF3
YWxsQGxpcDYuZnI+Cj4gCj4gSSd2ZSBhZGRlZCBhIGZpeGVzK3N0YWJsZSB0YWcgYW5kIGFwcGxp
ZWQgaXQgdG8gZHJtLW1pc2MtZml4ZXMKCkFsbCBvZiB0aGVtIG9yIGp1c3QgdGhpcyBvbmUgaGVy
ZT8gVGhlc2UgY2xlYW51cCBwYXRjaGVzIGhhdmUgYSBoaWdoCmNoYW5jZSBvZiBmYWxsaW5nIHRo
cm91Z2ggY3JhY2tzLCBzbyB0YWtpbmcgdGhlbSBhbGwgdXN1YWxseSB3b3JrcyBvdXQKYmV0dGVy
IC4uLgotRGFuaWVsCgo+IAo+IFRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhhdAo+IEhlaWtvCj4gCj4g
CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
aHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCg==
