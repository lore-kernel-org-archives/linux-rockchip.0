From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 12/15] include: rk3399: Disable watchdog in TPL
Date: Mon, 5 Aug 2019 20:43:37 +0800
Message-ID: <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-13-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190729074711.16988-13-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvNy8yOSDkuIvljYgzOjQ3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IERpc2FibGUgd2F0
Y2hkb2cgZm9yIFRQTCwgc2luY2UgdGhlcmUgaXMgbm8gc3VwcG9ydCBpdC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IC0tLQo+ICAg
aW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCB8IDUgKysrKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3Mvcmsz
Mzk5X2NvbW1vbi5oIGIvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+IGluZGV4IDhk
ZjAxODAyODQuLjY3YjQ4ZTAzYmEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5
OV9jb21tb24uaAo+ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPiBAQCAt
NDYsNiArNDYsMTEgQEAKPiAgICNkZWZpbmUgQ09ORklHX1NZU19TRFJBTV9CQVNFCQkwCj4gICAj
ZGVmaW5lIFNEUkFNX01BWF9TSVpFCQkJMHhmODAwMDAwMAo+ICAgCj4gKyNpZmRlZiBDT05GSUdf
VFBMX0JVSUxECj4gKyMgdW5kZWYgQ09ORklHX1dEVAo+ICsjIHVuZGVmIENPTkZJR19XQVRDSERP
Rwo+ICsjZW5kaWYKCgpJdCB3aWxsIGJlIGJldHRlciB0byB1c2UgQ09ORklHXyR7U1BMX1RQTH1X
RFQgaW4gd2F0Y2hkb2cgTWFrZWZpbGUsCgpiZWNhdXNlIGFsbCB0aGUgU29DIG5lZWRzIHRyZWF0
IHRoaXMgZHJpdmVyIHNlcGFyYXRlIGluIFRQTC9TUEwvVS1Cb290IApwcm9wZXIuCgoKVGhhbmtz
LAoKLSBLZXZlcgoKPiArCj4gICAjaWZuZGVmIENPTkZJR19TUExfQlVJTEQKPiAgIAo+ICAgI2Rl
ZmluZSBFTlZfTUVNX0xBWU9VVF9TRVRUSU5HUyBcCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
