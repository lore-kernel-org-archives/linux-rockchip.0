From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2] pinctrl/rockchip: splite soc data to separated driver
Date: Thu, 16 Jan 2020 11:44:44 +0800
Message-ID: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
References: <20200109094001.24343-1-jay.xu@rock-chips.com>
 <20200113011616.19791-1-jay.xu@rock-chips.com>
 <CACRpkdY_EHQbF4rRyGwoxEk8LeWfmRzmCd=8=SY95LPXMHYOmw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CACRpkdY_EHQbF4rRyGwoxEk8LeWfmRzmCd=8=SY95LPXMHYOmw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Vagrant Cascadian <vagrant-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:GPIO SUBSYSTEM" <linux-gpio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, afaerber-l3A5Bk7waGM@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMjAvMS8xNSDkuIvljYg4OjUxLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+IE9uIE1vbiwg
SmFuIDEzLCAyMDIwIGF0IDI6MTYgQU0gSmlhbnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29t
PiB3cm90ZToKPgo+PiAqIERlY3JlYXNlIGNvZGVzIG9mIHBpbmN0cmwtcm9ja2NoaXAuYyBmcm9t
IDQsMDAwIGxpbmVzIHRvIDIwMDAgYnkKPj4gc2VwYXJhdGluZyBzb2MgZGF0YSB0byBhIG5ldyBm
aWxlLgo+Pgo+PiAqIE1vdmUgcm9ja2NoaXAgcGluY3RybCByZWxhdGVkIHN0cnVjdCBkZWZpbmF0
aW9ucyB0byBhIGhlYWQgZmlsZS4KPj4KPj4gKiBLZWVwIGxlZ2VuY3kgcGluY3RybC1yb2NrY2hp
cC5jIHVuZGVyIGRyaXZlci9waW5jdHJsIGJ1dCBub3QgdG8KPj4gY29tcGlsZSBpdCwgY29udmVu
aWVudGx5IGZvciByZXZpZXdlcnMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEppYW5xdW4gWHUgPGph
eS54dUByb2NrLWNoaXBzLmNvbT4KPiBUaGlzIHBhdGNoIGxvb2tzIGdvb2QsIHR3byB0aGluZ3Mg
YXJlIG1pc3Npbmc6Cj4KPiAtIFJldmlldyBmcm9tIEhlaWtvCj4KPiAtIEEgY2hhbmdlIHRvIE1B
SU5UQUlORVJTIHNvIHRoYXQgdGhlIGZpbGUgcGF0dGVybiBzdGlsbAo+ICAgIG1hdGNoZXMKPgo+
IFNob3VsZCBzb21lb25lIGZyb20gUm9ja2NoaXAgYWxzbyBzaWduIHVwIGFzIGNvbWFpbnRhaW5l
cgo+IGZvciB0aGlzIGRyaXZlciBieSB0aGUgd2F5PyAoVGhvdWdoIHRoZSBwZW9wbGUgYXQgUm9j
a2NoaXAKPiBwb3N0aW5nIHBhdGNoZXMgZm9yIHRoaXMgc2VlbSB0byBjaGFuZ2UgYSBiaXQuKQoK
ClRoZSBrZXJuZWwgSW1hZ2Ugc2l6ZSBpcyBrZWVwIGdyb3dpbmcsIHRoaXMgcGF0Y2ggY2FuIGhl
bHAgcmVkdWNlIHRoZSAKc2l6ZSBvZgoKa2VybmVsIGltYWdlIGZvciBvbmUgU29DLCBhbmQgdGhp
cyBpcyB3aGF0IHdlIGhhdmUgZG9uZSBpbiBVLUJvb3QgbWFpbmxpbmUuCgpBbmQgZm9yIGRpc3Ry
aWJ1dGlvbiBrZXJuZWwgd2hvIG5lZWQgdG8gY292ZXIgYWxsIHRoZSBTb0NzIHdpdGggb25lIApr
ZXJuZWwgaW1hZ2UsCgpuZWVkIHRvIHVwZGF0ZSB0aGUgZGVmY29uZmlnLgoKVGhlIHBhdGNoIGxv
b2tzIGdvb2QgdG8gbWUsCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgoKCj4KPiBZb3VycywKPiBMaW51cyBXYWxsZWlq
Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
