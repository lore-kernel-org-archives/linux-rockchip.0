From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2 04/10] gadget: rockchip: Add rk3128
 USB_GADGET_PRODUCT_NUM
Date: Sat, 23 Nov 2019 22:21:03 +0800
Message-ID: <934af648-3837-6817-d4b3-17acdc1284f4@rock-chips.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191119082623.6165-5-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgMHgzMTBj
IGZvciByazMxMjggZ2FkZ2V0IHByb2R1Y3QgbnVtYmVyLgo+Cj4gVGVzdGVkLWJ5OiBMZXZpbiBE
dSA8ZGp3QHQtY2hpcC5jb20uY24+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5A
YW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy91c2Iv
Z2FkZ2V0L0tjb25maWcgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2dhZGdldC9LY29uZmlnIGIvZHJpdmVycy91c2Iv
Z2FkZ2V0L0tjb25maWcKPiBpbmRleCBlMTIwYjQ4YjMzLi4yZGE4YjQwZTA1IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvdXNiL2dhZGdldC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy91c2IvZ2FkZ2V0
L0tjb25maWcKPiBAQCAtNTksNiArNTksNyBAQCBjb25maWcgVVNCX0dBREdFVF9QUk9EVUNUX05V
TQo+ICAgCWhleCAiUHJvZHVjdCBJRCBvZiB0aGUgVVNCIGRldmljZSIKPiAgIAlkZWZhdWx0IDB4
MTAxMCBpZiBBUkNIX1NVTlhJCj4gICAJZGVmYXVsdCAweDMxMGEgaWYgUk9DS0NISVBfUkszMDM2
Cj4gKwlkZWZhdWx0IDB4MzEwYyBpZiBST0NLQ0hJUF9SSzMxMjgKPiAgIAlkZWZhdWx0IDB4MzIw
YSBpZiBST0NLQ0hJUF9SSzMyMjkgfHwgUk9DS0NISVBfUkszMjg4Cj4gICAJZGVmYXVsdCAweDMz
MGEgaWYgUk9DS0NISVBfUkszMzI4Cj4gICAJZGVmYXVsdCAweDAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
