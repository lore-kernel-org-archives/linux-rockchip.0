From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v4 6/8] watchdog: kconfig: Enable designware for rk3399
Date: Fri, 17 Jan 2020 14:46:31 +0800
Message-ID: <e6d877e3-232a-2e25-c16e-873fd69acec7@rock-chips.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
 <20200109085222.22670-7-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200109085222.22670-7-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: Marek Vasut <marex-ynQEQJNshbs@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMjAvMS85IOS4i+WNiDQ6NTIsIEphZ2FuIFRla2kgd3JvdGU6Cj4gRW5hYmxlIGRlc2ln
bndhcmUgd2F0Y2hkb2cgZHJpdmVyIGZvciByazMzOTkgaWYgV0RUIGRlZmluZWQuCj4KPiBDYzog
TWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZl
ci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gQ2hhbmdlcyBm
b3IgdjQ6Cj4gLSBUaGlzIGNoYW5nZSBvbiB0b3Agb2YgYmVsb3cgc2VyaWVzCj4gICAgaHR0cHM6
Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L3Vib290L2xpc3QvP3Nlcmllcz0xNTE0MzEK
Pgo+ICAgZHJpdmVycy93YXRjaGRvZy9LY29uZmlnIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3dhdGNoZG9nL0tjb25maWcg
Yi9kcml2ZXJzL3dhdGNoZG9nL0tjb25maWcKPiBpbmRleCBiZjU2MTJhODExLi5jZWVmZWUzYTZi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvd2F0Y2hkb2cvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMv
d2F0Y2hkb2cvS2NvbmZpZwo+IEBAIC00OCw2ICs0OCw3IEBAIGNvbmZpZyBVTFBfV0FUQ0hET0cK
PiAgIGNvbmZpZyBERVNJR05XQVJFX1dBVENIRE9HCj4gICAJYm9vbCAiRGVzaWdud2FyZSB3YXRj
aGRvZyB0aW1lciBzdXBwb3J0Igo+ICAgCXNlbGVjdCBIV19XQVRDSERPRyBpZiAhV0RUCj4gKwlk
ZWZhdWx0IHkgaWYgV0RUICYmIFJPQ0tDSElQX1JLMzM5OQo+ICAgCWhlbHAKPiAgIAkgICBFbmFi
bGUgdGhpcyB0byBzdXBwb3J0IERlc2lnbndhcmUgV2F0Y2hkb2cgVGltZXIgSVAsIHByZXNlbnQg
ZS5nLgo+ICAgCSAgIG9uIEFsdGVyYSBTb0NGUEdBIFNvQ3MuCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
