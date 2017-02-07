From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 0/4] drm/rockchip: switch to drm_mm for support arm64 iommu
Date: Tue,  7 Feb 2017 14:09:32 +0800
Message-ID: <1486447776-30543-1-git-send-email-mark.yao@rock-chips.com>
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
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

U29tZSBpb21tdSBwYXRjaGVzIG9uIHRoZSBzZXJpZXNbMF0gImlvbW11L3JvY2tjaGlwOiBGaXgg
YnVncyBhbmQKZW5hYmxlIG9uIEFSTTY0IiBhbHJlYWR5IGxhbmRlZCwgU28gZHJtL3JvY2tjaGlw
IHJlbGF0ZWQgcGF0Y2hlcyBbMV0gYW5kIFsyXQpyZWFkeSB0byBsYW5kZWQsIHRoaXMgc2VyaWVz
IGp1c3QgcmViYXNlIHRoZW0gdG8gbGFzdGVzdCBkcm0tbmV4dC4KCkFuZCBmaXggc29tZSBidWdz
IGZvciBkcm0vcm9ja2NoaXAgZHJtX21tCgpbMF06IGh0dHA6Ly93d3cuc3Bpbmljcy5uZXQvbGlz
dHMvYXJtLWtlcm5lbC9tc2c1MTM3ODEuaHRtbApbMV06IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvOTE5NjM2NwpbMl06IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0
Y2gvOTE5NjM2OQoKTWFyayBZYW8gKDIpOgogIGRybS9yb2NrY2hpcDogZ2VtOiBhZGQgbXV0ZXgg
bG9jayBmb3IgZHJtIG1tCiAgZHJtL3JvY2tjaGlwOiBnZW06IGZpeHVwIGlvbW11X21hcF9zZyBl
cnJvciBwYXRoCgpTaHVucWlhbiBaaGVuZyAoMSk6CiAgZHJtL3JvY2tjaGlwOiBVc2UgY29tbW9u
IElPTU1VIEFQSSB0byBhdHRhY2ggZGV2aWNlcwoKVG9tYXN6IEZpZ2EgKDEpOgogIGRybS9yb2Nr
Y2hpcDogRG8gbm90IHVzZSBETUEgbWFwcGluZyBBUEkgaWYgYXR0YWNoZWQgdG8gSU9NTVUgZG9t
YWluCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDEwMSAr
KysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2Lmgg
fCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAy
MjggKysrKysrKysrKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9nZW0uaCB8ICAgOCArCiA0IGZpbGVzIGNoYW5nZWQsIDI4NiBpbnNlcnRp
b25zKCspLCA1NyBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
