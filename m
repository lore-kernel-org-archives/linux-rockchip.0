From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 04/18] ram: rk3399: Use rank mask in wdql data training
Date: Tue, 16 Jul 2019 15:38:34 +0800
Message-ID: <36190f32-6128-8d44-5a1f-05a05694dc8d@rock-chips.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182856.21688-5-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyLCB0aGlzIHdvdWxkIGtlZXAKPiB0aGUgd2RxbCBk
YXRhIHRyYWluaW5nIGxvb3AgYmFzZWQgb24gdGhlIGRlc2lyZWQgcmFuayBtYXNrCj4gdmFsdWUg
aW5zdGVhZCBvZiBsb29waW5nIGZvciBhbGwgdmFsdWVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91
TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxL
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBk
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDggKysrKysrKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggYjk4ZGYyMGZhNS4uMTZiZDk0MjdhNiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTg2MSwxMSArODYxLDE3IEBAIHN0
YXRpYyBpbnQgZGF0YV90cmFpbmluZ193ZHFsKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4s
IHUzMiBjaGFubmVsLAo+ICAgCXUzMiAqZGVuYWxpX3BpID0gY2hhbi0+cGktPmRlbmFsaV9waTsK
PiAgIAl1MzIgaSwgdG1wOwo+ICAgCXUzMiByYW5rID0gcGFyYW1zLT5jaFtjaGFubmVsXS5jYXBf
aW5mby5yYW5rOwo+ICsJdTMyIHJhbmtfbWFzazsKPiAgIAo+ICAgCS8qIGNsZWFyIGludGVycnVw
dCxQSV8xNzUgUElfSU5UX0FDSzpXUjowOjE3ICovCj4gICAJd3JpdGVsKDB4MDAwMDNmN2MsICgm
ZGVuYWxpX3BpWzE3NV0pKTsKPiAgIAo+IC0JZm9yIChpID0gMDsgaSA8IHJhbms7IGkrKykgewo+
ICsJcmFua19tYXNrID0gKHJhbmsgPT0gMSkgPyAweDEgOiAweDM7Cj4gKwo+ICsJZm9yIChpID0g
MDsgaSA8IDQ7IGkrKykgewo+ICsJCWlmICghKHJhbmtfbWFzayAmICgxIDw8IGkpKSkKPiArCQkJ
Y29udGludWU7Cj4gKwo+ICAgCQlzZWxlY3RfcGVyX2NzX3RyYWluaW5nX2luZGV4KGNoYW4sIGkp
Owo+ICAgCj4gICAJCS8qCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
