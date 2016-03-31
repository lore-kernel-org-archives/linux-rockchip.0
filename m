From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH] drm/rockchip: Return -EBUSY if there's already a pending flip
 event v2
Date: Thu, 31 Mar 2016 10:08:00 +0200
Message-ID: <1459411680-6176-1-git-send-email-tomeu.vizoso@collabora.com>
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
To: linux-kernel@vger.kernel.org
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QXMgcGVyIHRoZSBkb2NzLCBhdG9taWNfY29tbWl0IHNob3VsZCByZXR1cm4gLUVCVVNZICJpZiBh
biBhc3ljbmhyb25vdXMKdXBkYXRlZCBpcyByZXF1ZXN0ZWQgYW5kIHRoZXJlIGlzIGFuIGVhcmxp
ZXIgdXBkYXRlZCBwZW5kaW5nIi4KCnYyOiBVc2UgdGhlIHN0YXR1cyBvZiB0aGUgd29ya3F1ZXVl
IGluc3RlYWQgb2Ygdm9wLT5ldmVudCwgYW5kIGRvbid0IGFkZAphIHN1cGVyZmx1b3VzIHdhaXQg
b24gdGhlIHdvcmtxdWV1ZS4KClNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXUudml6
b3NvQGNvbGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV9mYi5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKaW5kZXggM2I4ZjY1MjY5OGY4
Li4yODVmOGNkNWFmZTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZmIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X2ZiLmMKQEAgLTI4Miw2ICsyODIsOSBAQCBpbnQgcm9ja2NoaXBfZHJtX2F0b21pY19jb21taXQo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlzdHJ1Y3Qgcm9ja2NoaXBfYXRvbWljX2NvbW1pdCAq
Y29tbWl0ID0gJnByaXZhdGUtPmNvbW1pdDsKIAlpbnQgcmV0OwogCisJaWYgKGFzeW5jICYmIHdv
cmtfYnVzeSgmY29tbWl0LT53b3JrKSkKKwkJcmV0dXJuIC1FQlVTWTsKKwogCXJldCA9IGRybV9h
dG9taWNfaGVscGVyX3ByZXBhcmVfcGxhbmVzKGRldiwgc3RhdGUpOwogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7Ci0tIAoyLjUuNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCg==
