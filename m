From: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] drm/rockchip: add extcon dependency for DP
Date: Tue, 14 Feb 2017 22:31:51 +0100
Message-ID: <20170214213215.2888509-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>
Cc: Arnd Bergmann <arnd@arndb.de>, Tobias Jakobi <tjakobi@math.uni-bielefeld.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chris Zhong <zyw@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIG5ld2x5IGFkZGVkIERQIGRyaXZlciBsaW5rcyBhZ2FpbnN0IHRoZSBleHRjb24gY29yZSwg
d2hpY2ggZmFpbHMgd2hlbgpleHRjb24gaXMgYSBtb2R1bGUgYW5kIHRoaXMgZHJpdmVyIGlzIG5v
dDoKCmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5vOiBJbiBmdW5jdGlvbiBg
Y2RuX2RwX2dldF9wb3J0X2xhbmVzJzoKY2RuLWRwLWNvcmUuYzooLnRleHQuY2RuX2RwX2dldF9w
b3J0X2xhbmVzKzB4MjQpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBleHRjb25fZ2V0X3N0YXRl
JwpjZG4tZHAtY29yZS5jOigudGV4dC5jZG5fZHBfZ2V0X3BvcnRfbGFuZXMrMHg0NCk6IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8gYGV4dGNvbl9nZXRfcHJvcGVydHknCgpMZXQncyBtYWtlIEtjb25m
aWcgZW5mb3JjZSBjb3JyZWN0IGJlaGF2aW9yIHdpdGggYSBkZXBlbmRlbmN5LgoKRml4ZXM6IDFh
MGY3ZWQzYWJlMiAoImRybS9yb2NrY2hpcDogY2RuLWRwOiBhZGQgY2RuIERQIHN1cHBvcnQgZm9y
IHJrMzM5OSIpClNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9L
Y29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKaW5kZXggYWQzMWIzZWI0
MDhmLi4wZTRlYjg0NWNiYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9L
Y29uZmlnCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCkBAIC0yNCw2ICsy
NCw3IEBAIGNvbmZpZyBST0NLQ0hJUF9BTkFMT0dJWF9EUAogY29uZmlnIFJPQ0tDSElQX0NETl9E
UAogICAgICAgICB0cmlzdGF0ZSAiUm9ja2NoaXAgY2RuIERQIgogICAgICAgICBkZXBlbmRzIG9u
IERSTV9ST0NLQ0hJUAorCWRlcGVuZHMgb24gRVhUQ09OCiAJc2VsZWN0IFNORF9TT0NfSERNSV9D
T0RFQyBpZiBTTkRfU09DCiAgICAgICAgIGhlbHAKIAkgIFRoaXMgc2VsZWN0cyBzdXBwb3J0IGZv
ciBSb2NrY2hpcCBTb0Mgc3BlY2lmaWMgZXh0ZW5zaW9ucwotLSAKMi45LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxp
c3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
