From: Jassi Brar <jassisinghbrar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v1 2/3] mailbox: rockchip: Add Rockchip mailbox driver
Date: Fri, 11 Mar 2016 10:45:55 +0700
Message-ID: <CABb+yY2ZJk-oP20K12qv9YQggQJdGqCWrgMiTyuL+O92eQyR7g@mail.gmail.com>
References: <1445931106-683-1-git-send-email-wxt@rock-chips.com>
 <1445931106-683-3-git-send-email-wxt@rock-chips.com>
 <3952968.vXrbfbrlZ2@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3952968.vXrbfbrlZ2@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVHVlLCBNYXIgOCwgMjAxNiBhdCAxOjQ4IEFNLCBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPiBIaSBKYXNzaSwKPgo+IEFtIERpZW5zdGFnLCAyNy4gT2t0b2JlciAy
MDE1LCAxNTozMTo0NSBzY2hyaWViIENhZXNhciBXYW5nOgo+PiBUaGlzIGRyaXZlciBpcyBmb3Vu
ZCBvbiBSSzMzNjggU29Dcy4KPj4KPj4gVGhlIE1haWxib3ggbW9kdWxlIGlzIGEgc2ltcGxlIEFQ
QiBwZXJpcGhlcmFsIHRoYXQgYWxsb3dzIGJvdGgKPj4gdGhlIENvcnRleC1BNTMgTUNVIHN5c3Rl
bSB0byBjb21tdW5pY2F0ZSBieSB3cml0aW5nIG9wZXJhdGlvbiB0bwo+PiBnZW5lcmF0ZSBpbnRl
cnJ1cHQuCj4+IFRoZSByZWdpc3RlcnMgYXJlIGFjY2Vzc2libGUgYnkgYm90aCBDUFUgdmlhIEFQ
QiBpbnRlcmZhY2UuCj4+Cj4+IFRoZSBNYWlsYm94IGhhcyB0aGUgZm9sbG93aW5nIG1haW4gZmVh
dHVyZXM6Cj4+Cj4+IDEpIFN1cHBvcnQgZHVhbC1jb3JlIHN5c3RlbTogQ29ydGV4LUE1MyBhbmQg
TUNVLgo+PiAyKSBTdXBwb3J0IEFQQiBpbnRlcmZhY2UuCj4+IDMpIFN1cHBvcnQgZm91ciBtYWls
Ym94IGVsZW1lbnRzLCBlYWNoIGVsZW1lbnQgaW5jbHVkZXMgb25lIGRhdGEgd29yZCwKPj4gICAg
b25lIGNvbW1hbmQgd29yZCByZWdpc3RlciBhbmQgb25lIGZsYWcgYml0IHRoYXQgY2FuIHJlcHJl
c2VudAo+PiAgICBvbmUgaW50ZXJydXB0Lgo+PiA0KSBGb3VyIGludGVycnVwdHMgdG8gQ29ydGV4
LUE1My4KPj4gNSkgRm91ciBpbnRlcnJ1cHRzIHRvIE1DVS4KPj4gNikgUHJvdmlkZSAzMiBsb2Nr
IHJlZ2lzdGVycyBmb3Igc29mdHdhcmUgdG8gdXNlIHRvIGluZGljYXRlIHdoZXRoZXIKPj4gICAg
bWFpbGJveCBpcyBvY2N1cGllZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2Flc2FyIFdhbmcgPHd4
dEByb2NrLWNoaXBzLmNvbT4KPgo+IGl0IHNlZW1zIHRoaXMgcGF0Y2ggaGFzIGZhbGxlbiB0aHJv
dWdoIHRoZSBjcmFja3MuIENvdWxkIHlvdSB0YWtlIGEgbG9vayBpZiBpdAo+IG5lZWRzIGFueXRo
aW5nIGVsc2U/Cj4KVGhlIDBEYXkga2J1aWxkIHRlc3Qgcm9ib3QgaGFkIHJlcG9ydGVkIGFuIGVy
cm9yIGluIHRoZSAzcmQgcGF0Y2guIEkKd2FzIGV4cGVjdGluZyBhbm90aGVyIHJldmlzaW9uLiBU
aG91Z2ggdGhhdCBwYXRjaCBzaG91bGRuJ3QgZ28gdmlhCm1haWxib3ggdHJlZSwgc28gSSBhbSBw
aWNraW5nIHVwIHRoZSBmaXJzdCB0d28gcGF0Y2hlcyB3aXRoIGEgbWlub3IKY2hhbmdlIHRoYXQg
aXMgcmVtb3ZpbmcgdGhlIHVudXNlZCB2YXJpYWJsZSAnYnVmX2Jhc2UnLgoKVGhhbmtzLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
