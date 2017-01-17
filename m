From: Mark yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: vop: make vop register setting take effect
Date: Tue, 17 Jan 2017 18:06:59 +0800
Message-ID: <587DECC3.50304@rock-chips.com>
References: <1472269178-16593-1-git-send-email-zyw@rock-chips.com>
 <57C3A341.9030302@rock-chips.com>
 <CAAFQd5CP8ERvJzchZo0=5gvuUuP+EBiyfhKDkgRYBa8iQYW0Kw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAFQd5CP8ERvJzchZo0=5gvuUuP+EBiyfhKDkgRYBa8iQYW0Kw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?UTF-8?B?5aea5pm65oOF?= <yzq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgVG9tYXN6CgpJIGhhZCBzZW50IHRvIERhdmUsIGJ1dCBtYXliZSBzb21ldGhpbmcgaXMgd3Jv
bmcsIGl0IG1pc3MuCgp0aGUgcGF0Y2ggaXMgb24gdGhpcyBwdWxsLXJlcXVlc3Q6Cmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE2LVNlcHRlbWJlci8x
MTg1MDUuaHRtbAoKSSBmb3Jnb3QgdG8gZG91YmxlIGNoZWNrIGl0LCBJIHdpbGwgcmVzZW5kIHRv
IERhdmUgc29vbi4KClRoYW5rcy4KCk9uIDIwMTflubQwMeaciDE35pelIDE3OjMyLCBUb21hc3og
RmlnYSB3cm90ZToKPiBIaSBNYXJrLAo+Cj4gT24gTW9uLCBBdWcgMjksIDIwMTYgYXQgMTE6NTEg
QU0sIE1hcmsgeWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+IE9uIDIwMTbl
ubQwOOaciDI35pelIDExOjM5LCBDaHJpcyBaaG9uZyB3cm90ZToKPj4+IFRoZSBzZXR0aW5nIG9m
IHZvcCByZWdpc3RlcnMgbmVlZCBhIHJlZ19kb25lIHdyaXRpbmcgdG8gdGFrZSBlZmZlY3QuCj4+
PiBJbiB2b3BfZW5hYmxlIHRoZSB2b3AgcmV0dXJuIHRvIHdvcmsgYnkgYnkgcmVzdG9yaW5nIHJl
Z2lzdGVycywgYnV0IHRoZQo+Pj4gcmVnaXN0ZXJzIGRvIG5vdCB0YWtlIGVmZmVjdCBpbW1lZGlh
dGVseSwgaXQgc2hvdWxkIGEgdm9wX2NmZ19kb25lCj4+PiBhZnRlciBpdC4gVGhlIHNhbWUgdGhp
bmcgaXMgbmVlZGVkIGJ5IHdpbmRvd3NfZGlzYWJsZWQgaW4KPj4+IHZvcF9jcnRjX2Rpc2FibGUu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgWmhvbmcgPHp5d0Byb2NrLWNoaXBzLmNvbT4K
Pj4+IC0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YyB8IDQgKysrKwo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+PiBUaGFu
a3MgZm9yIHlvdXIgZml4Lgo+Pgo+PiBhcHBsaWVkIHRvIG15IGRybS1maXhlcy4KPiBUaGlzIHBh
dGNoIHNlZW1zIHRvIGhhdmUgYmVlbiBsb3N0IGluIGFjdGlvbi4gSSBkb24ndCBzZWUgaXQgaW4g
bGludXgtbmV4dC4KPgo+IEJlc3QgcmVnYXJkcywKPiBUb21hc3oKPgo+Cj4KCgotLSAK77ytYXJr
IFlhbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
