From: Ezequiel Garcia <ezequiel-30ULvvUtt6G51wMPkGsGjgyUoB5FGQPZ@public.gmane.org>
Subject: Re: [PATCH 3/3] media: add Rockchip VPU driver
Date: Thu, 2 Aug 2018 09:04:09 -0300
Message-ID: <CAAEAJfD_WDBPAP9ymuc=W2upVGhJJ25WsnhTe6d6zySF5weGxQ@mail.gmail.com>
References: <20180801210714.1620-1-ezequiel@collabora.com>
 <20180801210714.1620-4-ezequiel@collabora.com>
 <13de5e62-8c73-7e46-d848-6ae78dde1588@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <13de5e62-8c73-7e46-d848-6ae78dde1588-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMiBBdWd1c3QgMjAxOCBhdCAwNTo1NCwgSGFucyBWZXJrdWlsIDxodmVya3VpbEB4czRhbGwu
bmw+IHdyb3RlOgo+IE9uIDA4LzAxLzE4IDIzOjA3LCBFemVxdWllbCBHYXJjaWEgd3JvdGU6Cj4+
IEFkZCBhIG1lbTJtZW0gZHJpdmVyIGZvciB0aGUgVlBVIGF2YWlsYWJsZSBvbiBSb2NrY2hpcCBT
b0NzLgo+PiBDdXJyZW50bHkgb25seSBKUEVHIGVuY29kaW5nIGlzIHN1cHBvcnRlZCwgZm9yIFJL
MzM5OSBhbmQgUkszMjg4Cj4+IHBsYXRmb3Jtcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRXplcXVp
ZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgpbLi5dCj4KPiBJIHN0b3AgcmV2aWV3
aW5nIGhlcmUgc2luY2UgSSB3b25kZXIgaWYgdGhpcyBpcyByZWFsbHkgdGhlIHYyIHNvdXJjZSBj
b2RlLgo+IEkgc2VlIHRvbyBtYW55IHRoaW5ncyBJJ3ZlIGNvbW1lbnRlZCBhYm91dCBpbiB2MS4g
RGlkIHlvdSBhY2NpZGVudGFsbHkKPiBwb3N0IHRoZSB2MSBhZ2Fpbj8KPgoKWWVzLCB0aGF0IHNl
ZW1zIHRvIGJlIHRoZSBjYXNlIQotLSAKRXplcXVpZWwgR2FyY8OtYSwgVmFuZ3VhcmRpYVN1cgp3
d3cudmFuZ3VhcmRpYXN1ci5jb20uYXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
