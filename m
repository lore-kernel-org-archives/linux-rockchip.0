From: Zheng Yang <yang.zheng@rock-chips.com>
Subject: Re: Fwd: [PATCH v5 2/6] drm/rockchip: dw_hdmi: Allow outputs that
 don't need output switching
Date: Fri, 28 Sep 2018 15:52:08 +0800
Message-ID: <2f56c551-bf56-87c2-34de-540da9c62148@rock-chips.com>
References: <20180912124740.20343-3-heiko@sntech.de>
 <6d4ee8b5-a1fa-23b7-88db-32b2c02833cb@rock-chips.com>
Reply-To: yang.zheng@rock-chips.com
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <6d4ee8b5-a1fa-23b7-88db-32b2c02833cb@rock-chips.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Sandy Huang <hjc@rock-chips.com>, architt@codeaurora.org, a.hajda@samsung.com
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, algea.cao@rock-chips.com, Heiko Stuebner <heiko@sntech.de>, "jonas@kwiboo.se" <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGksIEhlaWtvOgoKSGksIEhlaWtvOgoKSGksIEhlaWtvOgoKUmV2aWV3ZWQtYnk6IHpoZW5neWFu
ZyA8emhlbmd5YW5nQHJvY2stY2hpcHMuY29tPgoKPgo+IFNvIGZhciB3ZSBhbHdheXMgZW5jb3Vu
dGVyZWQgc29jcyB3aXRoIDIgb3V0cHV0IGNydGNzIG5lZWRpbmcgdGhlIGRyaXZlcgo+IHRvIHRl
bGwgdGhlIGhkbWkgYmxvY2sgd2hpY2ggb3V0cHV0IHRvIGNvbm5lY3QgdG8uIEJ1dCB0aGVyZSBh
bHNvIGV4aXN0Cj4gc29jcyB3aXRoIG9ubHkgb25lIGNydGMgbGlrZSB0aGUgcmszMjI4LCByazMz
MjggYW5kIHJrMzM2OC4KPgo+IFNvIGFkYXB0IHRoZSByZWdpc3RlciBmaWVsZCB0byBzaW1wbHkg
Y2FycnkgYSBuZWdhdGl2ZSB2YWx1ZSB0byBzaWduYWwKPiB0aGF0IG5vIG91dHB1dC1zd2l0Y2hp
bmcgaXMgbmVjZXNzYXJ5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KPiBUZXN0ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5j
b20+Cj4KPiBjaGFuZ2VzIGluIHYzOgo+IC0gZml4ZWQgd29yZGluZyBpc3N1ZSBmb3VuZCBieSBS
b2JpbiBNdXJwaHkKPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJv
Y2tjaGlwLmMgfCA1ICsrKystCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWktcm9ja2NoaXAuYyAKPiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJv
Y2tjaGlwLmMKPiBpbmRleCAxMTMwOWEyYTRlNDMuLmIwOWMzNTMxMzA1YiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+IEBAIC0zNiw3ICszNiw3
IEBACj4gwqAgKiBAbGNkc2VsX2xpdDogcmVnIHZhbHVlIG9mIHNlbGVjdGluZyB2b3AgbGl0dGxl
IGZvciBIRE1JCj4gwqAgKi8KPiDCoHN0cnVjdCByb2NrY2hpcF9oZG1pX2NoaXBfZGF0YSB7Cj4g
LcKgwqDCoCB1MzLCoMKgwqAgbGNkc2VsX2dyZl9yZWc7Cj4gK8KgwqDCoCBpbnTCoMKgwqAgbGNk
c2VsX2dyZl9yZWc7Cj4gwqDCoMKgwqAgdTMywqDCoMKgIGxjZHNlbF9iaWc7Cj4gwqDCoMKgwqAg
dTMywqDCoMKgIGxjZHNlbF9saXQ7Cj4gwqB9Owo+IEBAIC0yNDUsNiArMjQ1LDkgQEAgc3RhdGlj
IHZvaWQgZHdfaGRtaV9yb2NrY2hpcF9lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgCj4gZHJtX2VuY29k
ZXIgKmVuY29kZXIpCj4gwqDCoMKgwqAgdTMyIHZhbDsKPiDCoMKgwqDCoCBpbnQgcmV0Owo+IMKg
K8KgwqDCoCBpZiAoaGRtaS0+Y2hpcF9kYXRhLT5sY2RzZWxfZ3JmX3JlZyA8IDApCj4gK8KgwqDC
oMKgwqDCoMKgIHJldHVybjsKPiArCj4gwqDCoMKgwqAgcmV0ID0gZHJtX29mX2VuY29kZXJfYWN0
aXZlX2VuZHBvaW50X2lkKGhkbWktPmRldi0+b2Zfbm9kZSwgCj4gZW5jb2Rlcik7Cj4gwqDCoMKg
wqAgaWYgKHJldCkKPiDCoMKgwqDCoMKgwqDCoMKgIHZhbCA9IGhkbWktPmNoaXBfZGF0YS0+bGNk
c2VsX2xpdDsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
