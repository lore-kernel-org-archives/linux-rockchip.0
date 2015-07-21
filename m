From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v3 2/6] drm/rockchip: vop: Fix window dest start point
Date: Tue, 21 Jul 2015 16:20:03 +0800
Message-ID: <1437466807-13689-3-git-send-email-mark.yao@rock-chips.com>
References: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, xw@rock-chips.com, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

RGVzdCBzdGFydCBwb2ludCB1c2UgY3J0Y194L3kgaXMgd3JvbmcsIGNydGNfeC95IGlzIG5vdCBl
cXVhbAp0byBkZXN0LngxL3kxIGF0IHBsYW5lIHNjYWxlLgoKU2lnbmVkLW9mZi1ieTogTWFyayBZ
YW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wLmMgfCAgICA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AuYwppbmRleCAzNTU4YWNiLi5jN2UwMjgzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKQEAgLTYzNCwxMSArNjM0LDkgQEAgc3Rh
dGljIGludCB2b3BfdXBkYXRlX3BsYW5lX2V2ZW50KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAog
CiAJYWN0dWFsX3cgPSAoc3JjLngyIC0gc3JjLngxKSA+PiAxNjsKIAlhY3R1YWxfaCA9IChzcmMu
eTIgLSBzcmMueTEpID4+IDE2OwotCWNydGNfeCA9IG1heCgwLCBjcnRjX3gpOwotCWNydGNfeSA9
IG1heCgwLCBjcnRjX3kpOwogCi0JZHNwX3N0eCA9IGNydGNfeCArIGNydGMtPm1vZGUuaHRvdGFs
IC0gY3J0Yy0+bW9kZS5oc3luY19zdGFydDsKLQlkc3Bfc3R5ID0gY3J0Y195ICsgY3J0Yy0+bW9k
ZS52dG90YWwgLSBjcnRjLT5tb2RlLnZzeW5jX3N0YXJ0OworCWRzcF9zdHggPSBkZXN0LngxICsg
Y3J0Yy0+bW9kZS5odG90YWwgLSBjcnRjLT5tb2RlLmhzeW5jX3N0YXJ0OworCWRzcF9zdHkgPSBk
ZXN0LnkxICsgY3J0Yy0+bW9kZS52dG90YWwgLSBjcnRjLT5tb2RlLnZzeW5jX3N0YXJ0OwogCiAJ
b2Zmc2V0ID0gKHNyYy54MSA+PiAxNikgKiAoZmItPmJpdHNfcGVyX3BpeGVsID4+IDMpOwogCW9m
ZnNldCArPSAoc3JjLnkxID4+IDE2KSAqIGZiLT5waXRjaGVzWzBdOwotLSAKMS43LjkuNQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
