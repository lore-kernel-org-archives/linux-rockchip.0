From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2 10/10] rock960: Enable USB Gadget
Date: Sat, 23 Nov 2019 22:22:15 +0800
Message-ID: <e2ba0ce3-c3d5-a2c2-db07-3a114b045513@rock-chips.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-11-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191119082623.6165-11-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgRFdD
MyBjb3JlLCBnYWRnZXQgZm9yIHJvY2s5NjAgYm9hcmQuCj4KPiBUaGlzIHdvdWxkIGhlbHAgdG8g
dXNlIGZhc3Rib290IGJ5IGRlZmF1bHQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZl
ci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBjb25maWdz
L3JvY2s5NjAtcmszMzk5X2RlZmNvbmZpZyB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNv
bmZpZyBiL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggOTc5Y2EwZjkz
Yi4uZDBhZDY4NjVjZiAxMDA2NDQKPiAtLS0gYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNv
bmZpZwo+ICsrKyBiL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTU3LDYg
KzU3LDggQEAgQ09ORklHX1VTQl9FVEhFUl9BU0lYODgxNzk9eQo+ICAgQ09ORklHX1VTQl9FVEhF
Ul9NQ1M3ODMwPXkKPiAgIENPTkZJR19VU0JfRVRIRVJfUlRMODE1Mj15Cj4gICBDT05GSUdfVVNC
X0VUSEVSX1NNU0M5NVhYPXkKPiArQ09ORklHX1VTQl9HQURHRVQ9eQo+ICtDT05GSUdfVVNCX0RX
QzM9eQo+ICAgQ09ORklHX1VTRV9USU5ZX1BSSU5URj15Cj4gICBDT05GSUdfU1BMX1RJTllfTUVN
U0VUPXkKPiAgIENPTkZJR19FUlJOT19TVFI9eQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
