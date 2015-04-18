From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: [PATCH 2/2] drm/rockchip: make irq variable signed
Date: Sat, 18 Apr 2015 18:30:25 +0200
Message-ID: <6744862.JhM2B9tICl@diego>
References: <10285799.2mSMxzijmr@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <10285799.2mSMxzijmr@diego>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, David Binderman <dcb314@hotmail.com>, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

cGxhdGZvcm1fZ2V0X2lycSgpIGNhbiByZXR1cm4gbmVnYXRpdmUgZXJyb3IgdmFsdWVzIGFuZCB3
ZSBhbHJlYWR5IHRlc3QgZm9yCnRoZXNlLiBUaGVyZWZvcmUgdGhlIHZhcmlhYmxlIGhvbGRpbmcg
dGhpcyB2YWx1ZSBzaG91bGQgYmUgc2lnbmVkIHRvIG5vdApsb29zZSBlcnJvciB2YWx1ZXMuCgpS
ZXBvcnRlZC1ieTogRGF2aWQgQmluZGVybWFuIDxkY2IzMTRAaG90bWFpbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IGNjYjBjZTAuLmJkZTFjMWUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtMTA0LDcgKzEwNCw3IEBAIHN0
cnVjdCB2b3AgewogCS8qIGxvY2sgdm9wIGlycSByZWcgKi8KIAlzcGlubG9ja190IGlycV9sb2Nr
OwogCi0JdW5zaWduZWQgaW50IGlycTsKKwlpbnQgaXJxOwogCiAJLyogdm9wIEFIUCBjbGsgKi8K
IAlzdHJ1Y3QgY2xrICpoY2xrOwotLSAKMi4xLjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=
