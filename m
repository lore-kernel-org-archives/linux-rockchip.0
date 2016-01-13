From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 1/2] drm/rockchip: Don't build rockchip_drm_vop as modules
Date: Wed, 13 Jan 2016 16:22:07 +0800
Message-ID: <1452673328-29188-2-git-send-email-mark.yao@rock-chips.com>
References: <1452673328-29188-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1452673328-29188-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

cm9ja2NoaXBfZHJtX3ZvcCdzIG1vZHVsZSBpbml0IGhhZCBtb3ZlZCB0byByb2NrY2hpcF92b3Bf
cmVnLmMKc28gbm8gbmVlZCB0byBidWlsZCByb2NrY2hpcF9kcm1fdm9wLmtvCgpTaWduZWQtb2Zm
LWJ5OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL01ha2VmaWxlIHwgICAgNSArKy0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUKaW5k
ZXggYTlkMzgwZi4uOWU2ZTk5MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9NYWtlZmlsZQpAQCAtMyw5
ICszLDggQEAKICMgRGlyZWN0IFJlbmRlcmluZyBJbmZyYXN0cnVjdHVyZSAoRFJJKSBpbiBYRnJl
ZTg2IDQuMS4wIGFuZCBoaWdoZXIuCiAKIHJvY2tjaGlwZHJtLXkgOj0gcm9ja2NoaXBfZHJtX2Ry
di5vIHJvY2tjaGlwX2RybV9mYi5vIHJvY2tjaGlwX2RybV9mYmRldi5vIFwKLQkJcm9ja2NoaXBf
ZHJtX2dlbS5vCisJCXJvY2tjaGlwX2RybV9nZW0ubyByb2NrY2hpcF9kcm1fdm9wLm8KIAogb2Jq
LSQoQ09ORklHX1JPQ0tDSElQX0RXX0hETUkpICs9IGR3X2hkbWktcm9ja2NoaXAubwogCi1vYmot
JChDT05GSUdfRFJNX1JPQ0tDSElQKSArPSByb2NrY2hpcGRybS5vIHJvY2tjaGlwX2RybV92b3Au
byBcCi0JCQkJcm9ja2NoaXBfdm9wX3JlZy5vCitvYmotJChDT05GSUdfRFJNX1JPQ0tDSElQKSAr
PSByb2NrY2hpcGRybS5vIHJvY2tjaGlwX3ZvcF9yZWcubwotLSAKMS43LjkuNQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5n
IGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
