From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v4 0/6] drm/rockchip: fixes and new features
Date: Mon, 27 Jul 2015 10:05:56 +0800
Message-ID: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
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

VGhpcyBzZXJpZXMgcGF0Y2hlcyBhcmUgdXNlZCBmb3IgeXV2IGltYWdlIG92ZXJsYXkgZGlzcGxh
eS4KClJvY2tjaGlwIHZvcCBzdXBwb3J0IE5WMTEsIE5WMTYsIE5WMjQgeXV2IGZvcm1hdCwKYW5k
IGNhbiBzY2FsZSB0aGUgaW1hZ2Ugc2NhbGUgMS84IHRvIDguCgpDaGFuZ2VzIGluIHY0OgotIHJl
YmFzZSB0byB0b3Agb2YgZHJtLW5leHQsIGZpeCBjb25mbGljdAotIHRpbnkgZml4IG9uIHBsYW5l
IHNjYWxlLgoKQ2hhbmdlcyBpbiB2MzoKLSBtYWtlIGNvZGUgbW9yZSByZWFkYWJsZQotIGZpeCBz
b21lIGJ1Z3MKCkNoYW5nZXMgaW4gdjI6Ci0gVXYgYnVmZmVyIG5vdCBzdXBwb3J0IG9kZCBvZmZz
ZXQsIGFsaWduIGl0LgotIEZpeCBlcnJvciBkaXNwbGF5IHdoZW4gbW92ZSB5dXYgaW1hZ2UuIAot
IEZpeCBzY2FsZSBkZXN0IGluZm8uIApNYXJrIFlhbyAoNik6CiAgZHJtL3JvY2tjaGlwOiB2b3A6
IEZpeCB2aXJ0dWFsIHN0cmlkZSBjYWxjdWxhdGlvbgogIGRybS9yb2NrY2hpcDogdm9wOiBGaXgg
d2luZG93IGRlc3Qgc3RhcnQgcG9pbnQKICBkcm0vcm9ja2NoaXA6IHZvcDogQWRkIHl1diBwbGFu
ZSBzdXBwb3J0CiAgZHJtL3JvY2tjaGlwOiB2b3A6IERlZmF1bHQgZW5hYmxlIHdpbjIvMyBhcmVh
MCBiaXQKICBkcm0vcm9ja2NoaXA6IHZvcDogcmVzdG9yZSB2b3AgcmVnaXN0ZXJzIHdoZW4gcmVz
dW1lCiAgZHJtL3JvY2tjaGlwOiB2b3A6IHN1cHBvcnQgcGxhbmUgc2NhbGUKCiBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwgIDI2OSArKysrKysrKysrKysrKysr
KysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmgg
fCAgIDg4ICsrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzNDggaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKCi0tIAoxLjcuOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwK
