From: John Keeping <john@metanate.com>
Subject: [PATCH v2 3/3] drm/rockchip: explain why we can't wait_for_vblanks
Date: Tue, 19 Jan 2016 10:47:00 +0000
Message-ID: <921a9f91937bebfeef7d7f563339fe6e4bf63f67.1453200263.git.john@metanate.com>
References: <cover.1453200263.git.john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <cover.1453200263.git.john@metanate.com>
In-Reply-To: <cover.1453200263.git.john@metanate.com>
References: <cover.1452782114.git.john@metanate.com>
 <cover.1453200263.git.john@metanate.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

U2lnbmVkLW9mZi1ieTogSm9obiBLZWVwaW5nIDxqb2huQG1ldGFuYXRlLmNvbT4KLS0tCnYyOgog
IC0gQWRkIG1vcmUgZGV0YWlsIG9mIHRoZSBwYXJ0aWN1bGFyIHJhY2UgdGhhdCBjb3VsZCBoYXBw
ZW4gaWYgd2UgdXNlZAogICAgZHJtX2F0b21pY19oZWxwZXJfd2FpdF9mb3JfdmJsYW5rcygpLgoK
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyB8IDE1ICsrKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKaW5kZXggNjc5ZDIzYS4uY2YwYjdiZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwpAQCAtMTc3LDYgKzE3
NywyMSBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9jcnRjX3dhaXRfZm9yX3VwZGF0ZShzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMpCiAJCWNydGNfZnVuY3MtPndhaXRfZm9yX3VwZGF0ZShjcnRjKTsKIH0K
IAorLyoKKyAqIFdlIGNhbid0IHVzZSBkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl92Ymxhbmtz
KCkgYmVjYXVzZSByazMyODggYW5kIHJrMzA2NgorICogaGF2ZSBoYXJkd2FyZSBjb3VudGVycyBm
b3IgbmVpdGhlciB2YmxhbmtzIG5vciBzY2FubGluZXMsIHdoaWNoIHJlc3VsdHMgaW4KKyAqIGEg
cmFjZSB3aGVyZToKKyAqCQkJCXwgPC0tIEhXIHZzeW5jIGlycSBhbmQgcmVnIHRha2UgZWZmZWN0
CisgKgkgICAgICAgcGxhbmVfY29tbWl0IC0tPiB8CisgKglnZXRfdmJsYW5rIGFuZCB3YWl0IC0t
PiB8CisgKgkJCQl8IDwtLSBoYW5kbGVfdmJsYW5rLCB2YmxhbmstPmNvdW50ICsgMQorICoJCSBj
bGVhbnVwX2ZiIC0tPiB8CisgKgkJaW9tbXUgY3Jhc2ggLS0+IHwKKyAqCQkJCXwgPC0tIEhXIHZz
eW5jIGlycSBhbmQgcmVnIHRha2UgZWZmZWN0CisgKgorICogVGhpcyBmdW5jdGlvbiBpcyBlcXVp
dmFsZW50IGJ1dCB1c2VzIHJvY2tjaGlwX2NydGNfd2FpdF9mb3JfdXBkYXRlKCkgaW5zdGVhZAor
ICogb2Ygd2FpdGluZyBmb3IgdmJsYW5rX2NvdW50IHRvIGNoYW5nZS4KKyAqLwogc3RhdGljIHZv
aWQKIHJvY2tjaGlwX2F0b21pY193YWl0X2Zvcl9jb21wbGV0ZShzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqb2xkX3N0YXRlKQogewotLSAKMi43LjAuMjI2
LmdmZTk4NmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
