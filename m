From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 2/3] nanopc-t4: Enable USB Gadget
Date: Mon, 25 May 2020 10:50:56 +0800
Message-ID: <95288b8b-25ea-2559-1eb8-293a537f7afe@rock-chips.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
 <20200524173213.201123-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200524173213.201123-2-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMjAvNS8yNSDkuIrljYgxOjMyLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEVuYWJsZSBEV0Mz
IGNvcmUsIGdhZGdldCBmb3IgbmFub3BjLXQ0IGJvYXJkLgo+Cj4gVGhpcyB3b3VsZCBoZWxwIHRv
IHVzZSBmYXN0Ym9vdCBieSBkZWZhdWx0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgY29uZmln
cy9uYW5vcGMtdDQtcmszMzk5X2RlZmNvbmZpZyB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvY29uZmlncy9uYW5vcGMtdDQtcmszMzk5
X2RlZmNvbmZpZyBiL2NvbmZpZ3MvbmFub3BjLXQ0LXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCAz
YmI1YjQ5OGYyLi40MGZiNzk3YzQ5IDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3MvbmFub3BjLXQ0LXJr
MzM5OV9kZWZjb25maWcKPiArKysgYi9jb25maWdzL25hbm9wYy10NC1yazMzOTlfZGVmY29uZmln
Cj4gQEAgLTUwLDcgKzUwLDEwIEBAIENPTkZJR19VU0JfWEhDSV9IQ0Q9eQo+ICAgQ09ORklHX1VT
Ql9YSENJX0RXQzM9eQo+ICAgQ09ORklHX1VTQl9FSENJX0hDRD15Cj4gICBDT05GSUdfVVNCX0VI
Q0lfR0VORVJJQz15Cj4gK0NPTkZJR19VU0JfRFdDMz15Cj4gK0NPTkZJR19ST0NLQ0hJUF9VU0Iy
X1BIWT15Cj4gICBDT05GSUdfVVNCX0tFWUJPQVJEPXkKPiArQ09ORklHX1VTQl9HQURHRVQ9eQo+
ICAgQ09ORklHX1VTQl9IT1NUX0VUSEVSPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfQVNJWD15Cj4g
ICBDT05GSUdfVVNCX0VUSEVSX0FTSVg4ODE3OT15CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
