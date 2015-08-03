From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: reserve unusable memory region on
 rk3288
Date: Mon, 3 Aug 2015 15:52:13 -0700
Message-ID: <CAD=FV=VHsU08e5HB4bGoVNEy-nRG_f2SkxPOK6wu_BA=r4xVeA@mail.gmail.com>
References: <15143985.aGzb1oeyb9@diego>
 <CAD=FV=W2LSQh4e9+=ooTf34VzM_yPZn497DqSVEdb1kehZbqQQ@mail.gmail.com>
 <4605286.lfFsCUY5jc@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4605286.lfFsCUY5jc@diego>
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
Cc: Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGksCgpPbiBTYXQsIEF1ZyAxLCAyMDE1IGF0IDM6NTIgUE0sIEhlaWtvIFN0w7xibmVyIDxoZWlr
b0BzbnRlY2guZGU+IHdyb3RlOgoKPiBUaGUgZHQgY29kZSB3aGVuIGNyZWF0aW5nIHRoZSBwbGF0
Zm9ybS1kZXZpY2VzIGFzc3VtZXMgYSAzMmJpdCBkbWEgbWFzayBhbmQKPiBleHBlY3RzIHRoZSBk
cml2ZXJzIHRvIHNldCB0aGUgY29ycmVjdCBkbWFfbWFza3MgKGluIG9mX2RtYV9jb25maWd1cmUp
LiBCdXQKPiBmcm9tIHRoZSBvcmlnaW5hbCBkZXNjcmlwdGlvbiB0aGlzIGxvb2tzIG1vcmUgbGlr
ZSBhIGxpbWl0YXRpb24gb2YgdGhlIHJrMzI4OCwKPiBub3QgdGhlIGluZGl2aWR1YWwgZHdtbWMs
IGR3YzIsIGV0Yy4KPgo+IFNvIGZyb20gbXkgY3Vyc29yeSBnbGFuY2UsIFpPTkVfRE1BIHNlZW1z
IHRvIGJlIHRoZSBiZXN0IHNvbHV0aW9uLiBBcyB5b3Ugc2FpZAo+IHRoYXQgdGhpcyB3YXMgaW52
ZXN0aWdhdGVkIHRvbywgZG8geW91IGtub3cgaWYgdGhleSBlbmNvdW50ZXJlZCBhbnkgb2JzdGFj
bGVzCj4gdGhhdCByZXN1bHRlZCBpbiBub3QgYWRqdXN0aW5nIHRoZSBkbWEgem9uZT8KPgo+Cj4g
QEplZmZ5OiBkbyB5b3Uga25vdyBob3cgd2lkZXNwcmVhZCB0aGlzIGlzPyBJLmUuIGFyZSBzb2Nz
IGxpa2UgdGhlIHJrMzEyOCBvcgo+IHBvc3NpYmx5IG1vcmUgaW1wb3J0YW50bHkgdGhlIHJrMzM2
OCBhbHNvIGFmZmVjdGVkIGJ5IHRoaXMgaW4gNEdCCj4gY29uZmlndXJhdGlvbnM/Cj4KPgo+IElm
IHRoZSByazMzNjggZG9lcyBpdCB0b28sIHRoaXMgbWlnaHQgZ2V0ICJpbnRlcmVzdGluZyIuIElu
IG9uZSBvZiB0aGUgbWFpbHMKPiBhYm91dCBaT05FX0RNQSBmcm9tIHNlcHRlbWJlciAyMDE0LCBB
cm5kIG1lbnRpb25lZCB0aGF0IHRoZXJlIHdhcyBhIHBhdGNoCj4gYWJvdXQgZ2V0dGluZyB0aGUg
em9uZSBzaXplIGZyb20gZGV2aWNldHJlZSBmbG9hdGluZyBhcm91bmQsIGJ1dCBpdCBkb2Vzbid0
Cj4gbG9vayBsaWtlIHRoaXMgbGFuZGVkLgoKSSBkb24ndCBhY3R1YWxseSBrbm93IGFsbCB0aGUg
ZGV0YWlscyBvZiB0aGUgcHJvYmxlbXMgc2luY2Ugb3RoZXJzCmludmVzdGlnYXRlZC4gIEkgd2Fz
IGp1c3QgdHJ5aW5nIHRvIHF1aWNrbHkgc3VtbWFyaXplIHdoYXQgSSBjb3VsZApmaW5kIGluIHRo
ZSBpbnRlcm5hbCBidWcgZm9yIHRoZSBiZW5lZml0IG9mIHRoZSBsaXN0Li4uICBTb3JyeSBpZgp0
aGF0J3Mgbm90IHRlcnJpYmx5IGhlbHBmdWwuICA6KAoKLURvdWcKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
