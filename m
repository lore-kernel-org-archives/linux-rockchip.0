From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: return ERR_PTR instead of NULL
Date: Fri, 11 Nov 2016 09:45:00 +0800
Message-ID: <5825229C.8080704@rock-chips.com>
References: <1478812256-26189-1-git-send-email-Julia.Lawall@lip6.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1478812256-26189-1-git-send-email-Julia.Lawall@lip6.fr>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDEx5pyIMTHml6UgMDU6MTAsIEp1bGlhIExhd2FsbCB3cm90ZToKPiByb2NrY2hp
cF9kcm1fZnJhbWVidWZmZXJfaW5pdCBpcyBvbmx5IHVzZWQgaW4gb25lIGNhc2UsIGluCj4gcm9j
a2NoaXBfZHJtX2ZiZGV2LmMsIHdoZXJlIGl0cyByZXR1cm4gdmFsdWUgaXMgdGVzdGVkIHVzaW5n
IElTX0VSUi4gIFRvCj4gZW5hYmxlIHByb3BhZ2F0aW5nIHRoZSByZWFzb24gZm9yIHRoZSBlcnJv
ciwgY2hhbmdlIHRoZSBkZWZpbml0aW9uIHNvIHRoYXQKPiBpdCByZXR1cm5zIGFuIEVSUl9QVFIg
dmFsdWUuCj4KPiBQcm9ibGVtIGZvdW5kIHdpdGggdGhlIGhlbHAgb2YgQ29jY2luZWxsZS4KPgo+
IFNpZ25lZC1vZmYtYnk6IEp1bGlhIExhd2FsbCA8SnVsaWEuTGF3YWxsQGxpcDYuZnI+ClRoYW5r
cyBmb3IgdGhlIGZpeC4KCkFwcGxpZWQgdG8gbXkgZHJtLW5leHQuCgo+Cj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgfCAgICAyICstCj4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKPiBpbmRleCAwZjZlZGEwLi4wMWUxMWJm
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+IEBA
IC0yMTMsNyArMjEzLDcgQEAgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqCj4gICAKPiAgIAlyb2Nr
Y2hpcF9mYiA9IHJvY2tjaGlwX2ZiX2FsbG9jKGRldiwgbW9kZV9jbWQsICZvYmosIDEpOwo+ICAg
CWlmIChJU19FUlIocm9ja2NoaXBfZmIpKQo+IC0JCXJldHVybiBOVUxMOwo+ICsJCXJldHVybiBF
UlJfQ0FTVChyb2NrY2hpcF9mYik7Cj4gICAKPiAgIAlyZXR1cm4gJnJvY2tjaGlwX2ZiLT5mYjsK
PiAgIH0KPgo+Cj4KPgoKCi0tIArvvK1hcmsgWWFvCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpLWRldmVsCg==
