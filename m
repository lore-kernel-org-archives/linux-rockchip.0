From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 0/6] drm/rockchip: support yuv overlay and plane scale
Date: Thu, 18 Jun 2015 15:49:24 +0800
Message-ID: <1434613770-6608-1-git-send-email-mark.yao@rock-chips.com>
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
IGNhbiBzY2FsZSB0aGUgaW1hZ2Ugc2NhbGUgMS84IHRvIDguCgpNYXJrIFlhbyAoNik6CiAgZHJt
L3JvY2tjaGlwOiBpbXBvcnQgZG1hX2J1ZiB0byBnZW0KICBkcm0vcm9ja2NoaXA6IHZvcDogb3B0
aW1pemUgdmlydHVhbCBzdHJpZGUgY2FsY3VsYXRlCiAgZHJtL3JvY2tjaGlwOiB2b3A6IGZpeCB5
dXYgcGxhbmUgc3VwcG9ydAogIGRybS9yb2NrY2hpcDogdm9wOiBzdXBwb3J0IHBsYW5lIHNjYWxl
CiAgZHJtL3JvY2tjaGlwOiB2b3A6IHN3aXRjaCBjdXJzb3IgcGxhbmUgdG8gd2luZG93IDMKICBk
cm0vcm9ja2NoaXA6IHZvcDogZGVmYXVsdCBlbmFibGUgd2luMi8zIGFyZWEwIGJpdAoKIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAgICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAgIDQ1ICsrLQogZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uaCB8ICAgIDUgKy0KIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCAgNDQ1ICsrKysrKysrKysrKysrKysr
KysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaCB8
ICAgOTYgKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDU4MSBpbnNlcnRpb25zKCspLCAxMSBkZWxl
dGlvbnMoLSkKCi0tIAoxLjcuOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwK
