From: Sandy Huang <sandy.huang@rock-chips.com>
Subject: Re: [PATCH 5/6] drm/rockchip: vop: report error when check resource
 error
Date: Fri, 4 Aug 2017 08:57:12 +0800
Message-ID: <2fc3b65f-de19-b55d-7425-1d50aeb22a6e@rock-chips.com>
References: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
 <1501494596-7090-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1501494596-7090-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

SGkgbWFyaywKCuWcqCAyMDE3LzcvMzEgMTc6NDksIE1hcmsgWWFvIOWGmemBkzoKPiBUaGUgdXNl
ciB3b3VsZCBiZSBjb25mdXNlZCB3aGlsZSBmYWNpbmcgYSBlcnJvciBjb21taXQgd2l0aG91dAo+
IGFueSBlcnJvciByZXBvcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFv
QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuYyB8IDQgKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV92b3AuYwo+IGluZGV4IGZhMGQ5ZjcuLjk5OWMyZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBAQCAtNjc0LDggKzY3NCwxMCBAQCBz
dGF0aWMgaW50IHZvcF9wbGFuZV9hdG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUs
Cj4gICAJICogU3JjLngxIGNhbiBiZSBvZGQgd2hlbiBkbyBjbGlwLCBidXQgeXV2IHBsYW5lIHN0
YXJ0IHBvaW50Cj4gICAJICogbmVlZCBhbGlnbiB3aXRoIDIgcGl4ZWwuCj4gICAJICovCj4gLQlp
ZiAoaXNfeXV2X3N1cHBvcnQoZmItPmZvcm1hdC0+Zm9ybWF0KSAmJiAoKHN0YXRlLT5zcmMueDEg
Pj4gMTYpICUgMikpCj4gKwlpZiAoaXNfeXV2X3N1cHBvcnQoZmItPmZvcm1hdC0+Zm9ybWF0KSAm
JiAoKHN0YXRlLT5zcmMueDEgPj4gMTYpICUgMikpIHsKPiArCQlEUk1fRVJST1IoIkludmFsaWQg
U291cmNlOiBZdXYgZm9ybWF0IG5vdCBzdXBwb3J0IG9kZCB4cG9zXG4iKTsKPiAgIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gKwl9Cj4gICAKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAKClJldmlld2VkLWJ5
OiBTYW5keSBodWFuZyA8c2FuZHkuaHVhbmdAcm9jay1jaGlwcy5jb20+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
