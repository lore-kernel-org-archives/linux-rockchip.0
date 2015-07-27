From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v4 2/6] drm/rockchip: vop: Fix window dest start point
Date: Mon, 27 Jul 2015 10:05:58 +0800
Message-ID: <1437962762-19157-3-git-send-email-mark.yao@rock-chips.com>
References: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

RGVzdCBzdGFydCBwb2ludCB1c2UgY3J0Y194L3kgaXMgd3JvbmcsIGNydGNfeC95IGlzIG5vdCBl
cXVhbAp0byBkZXN0LngxL3kxIGF0IHBsYW5lIHNjYWxlLgoKU2lnbmVkLW9mZi1ieTogTWFyayBZ
YW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgotLS0KQ2hhbmdlcyBpbiB2NDogTm9uZQoKIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCAgICA2ICsrLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwppbmRleCA2YjQ0NzMxLi5kYTcy
ZGU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKQEAg
LTY1NywxMSArNjU3LDkgQEAgc3RhdGljIGludCB2b3BfdXBkYXRlX3BsYW5lX2V2ZW50KHN0cnVj
dCBkcm1fcGxhbmUgKnBsYW5lLAogCiAJYWN0dWFsX3cgPSAoc3JjLngyIC0gc3JjLngxKSA+PiAx
NjsKIAlhY3R1YWxfaCA9IChzcmMueTIgLSBzcmMueTEpID4+IDE2OwotCWNydGNfeCA9IG1heCgw
LCBjcnRjX3gpOwotCWNydGNfeSA9IG1heCgwLCBjcnRjX3kpOwogCi0JZHNwX3N0eCA9IGNydGNf
eCArIGNydGMtPm1vZGUuaHRvdGFsIC0gY3J0Yy0+bW9kZS5oc3luY19zdGFydDsKLQlkc3Bfc3R5
ID0gY3J0Y195ICsgY3J0Yy0+bW9kZS52dG90YWwgLSBjcnRjLT5tb2RlLnZzeW5jX3N0YXJ0Owor
CWRzcF9zdHggPSBkZXN0LngxICsgY3J0Yy0+bW9kZS5odG90YWwgLSBjcnRjLT5tb2RlLmhzeW5j
X3N0YXJ0OworCWRzcF9zdHkgPSBkZXN0LnkxICsgY3J0Yy0+bW9kZS52dG90YWwgLSBjcnRjLT5t
b2RlLnZzeW5jX3N0YXJ0OwogCiAJb2Zmc2V0ID0gKHNyYy54MSA+PiAxNikgKiAoZmItPmJpdHNf
cGVyX3BpeGVsID4+IDMpOwogCW9mZnNldCArPSAoc3JjLnkxID4+IDE2KSAqIGZiLT5waXRjaGVz
WzBdOwotLSAKMS43LjkuNQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
LWRldmVsCg==
