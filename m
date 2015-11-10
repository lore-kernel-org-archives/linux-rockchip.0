From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop: fix window origin calculation
Date: Tue, 10 Nov 2015 18:07:16 +0800
Message-ID: <5641C1D4.8060006@rock-chips.com>
References: <1447149550-18595-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1447149550-18595-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Russell King <linux@arm.linux.org.uk>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

SGkgTWFyaywKCk9uIDExLzEwLzIwMTUgMDU6NTkgUE0sIE1hcmsgWWFvIHdyb3RlOgo+IEZyb206
IERvbWluaWsgQmVociA8ZGJlaHJAY2hyb21pdW0ub3JnPgo+Cj4gVk9QX1dJTnhfRFNQX1NUIGRv
ZXMgbm90IHJlcXVpcmUgc3VidHJhY3RpbmcgMSBmcm9tIHRoZSB2YWx1ZXMgd3JpdHRlbiB0bwo+
IGl0LiBJdCBhY3R1YWxseSBjYXVzZXMgdGhlIHNjcmVlbiB0byBiZSBzaGlmdGVkIGJ5IG9uZSBw
aXhlbC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNv
bT4KCkkgaGF2ZSBtZWV0IHRoZSBzY3JlZW4gc2hpZnQgcHJvYmxlbSBvbiBSSzMwMzYgU0RLIGJv
YXJkLCBhbmQgdGhpcwpjb3VsZCBmaXggbXkgcHJvYmxlbSwgc28KClRlc3RlZC1ieTogWWFraXIg
WWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgoKLSBZYWtpcgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCAgICA0ICsrLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBpbmRleCA0ODcxOWRmLi40NzMwYWU0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4g
QEAgLTk1OSw4ICs5NTksOCBAQCBzdGF0aWMgaW50IHZvcF91cGRhdGVfcGxhbmVfZXZlbnQoc3Ry
dWN0IGRybV9wbGFuZSAqcGxhbmUsCj4gICAJdmFsID0gKGRlc3QueTIgLSBkZXN0LnkxIC0gMSkg
PDwgMTY7Cj4gICAJdmFsIHw9IChkZXN0LngyIC0gZGVzdC54MSAtIDEpICYgMHhmZmZmOwo+ICAg
CVZPUF9XSU5fU0VUKHZvcCwgd2luLCBkc3BfaW5mbywgdmFsKTsKPiAtCXZhbCA9IChkc3Bfc3R5
IC0gMSkgPDwgMTY7Cj4gLQl2YWwgfD0gKGRzcF9zdHggLSAxKSAmIDB4ZmZmZjsKPiArCXZhbCA9
IGRzcF9zdHkgPDwgMTY7Cj4gKwl2YWwgfD0gZHNwX3N0eCAmIDB4ZmZmZjsKPiAgIAlWT1BfV0lO
X1NFVCh2b3AsIHdpbiwgZHNwX3N0LCB2YWwpOwo+ICAgCVZPUF9XSU5fU0VUKHZvcCwgd2luLCBy
Yl9zd2FwLCByYl9zd2FwKTsKPiAgIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCg==
