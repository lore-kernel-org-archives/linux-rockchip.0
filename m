From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v2 0/5] drm/rockchip: support yuv overlay and plane scale
Date: Fri, 26 Jun 2015 18:07:24 +0800
Message-ID: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, xw@rock-chips.com, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyBzZXJpZXMgcGF0Y2hlcyBhcmUgdXNlZCBmb3IgeXV2IGltYWdlIG92ZXJsYXkgZGlzcGxh
eS4KClJvY2tjaGlwIHZvcCBzdXBwb3J0IE5WMTEsIE5WMTYsIE5WMjQgeXV2IGZvcm1hdCwKYW5k
IGNhbiBzY2FsZSB0aGUgaW1hZ2Ugc2NhbGUgMS84IHRvIDguCgpDaGFuZ2VzIGluIHYyOgotIFV2
IGJ1ZmZlciBub3Qgc3VwcG9ydCBvZGQgb2Zmc2V0LCBhbGlnbiBpdC4KLSBGaXggZXJyb3IgZGlz
cGxheSB3aGVuIG1vdmUgeXV2IGltYWdlLiAKLSBGaXggc2NhbGUgZGVzdCBpbmZvLiAKCk1hcmsg
WWFvICg1KToKICBkcm0vcm9ja2NoaXA6IHZvcDogb3B0aW1pemUgdmlydHVhbCBzdHJpZGUgY2Fs
Y3VsYXRlCiAgZHJtL3JvY2tjaGlwOiB2b3A6IGZpeCB5dXYgcGxhbmUgc3VwcG9ydAogIGRybS9y
b2NrY2hpcDogdm9wOiBzdXBwb3J0IHBsYW5lIHNjYWxlCiAgZHJtL3JvY2tjaGlwOiB2b3A6IHN3
aXRjaCBjdXJzb3IgcGxhbmUgdG8gd2luZG93IDMKICBkcm0vcm9ja2NoaXA6IGRlZmF1bHQgZW5h
YmxlIHdpbjIvMyBhcmVhMCBiaXQKCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcC5jIHwgIDQ2NyArKysrKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmggfCAgIDk2ICsrKysrKwogMiBmaWxlcyBj
aGFuZ2VkLCA1NTEgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgotLSAKMS43LjkuNQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
