From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v3 0/2] drm/rockchip: switch to drm_mm for support arm64 iommu
Date: Fri, 10 Feb 2017 14:29:33 +0800
Message-ID: <1486708175-23857-1-git-send-email-mark.yao@rock-chips.com>
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
IGp1c3QgcmViYXNlIHRoZW0gdG8gbGFzdGVzdCBkcm0tbmV4dC4KClRoYW5rcyBIZWlrbydzIFRl
c3RlZC1ieSBvbiByazMyODggYW5kIHJrMzM5OSBwbGF0Zm9ybS4KCkNoYW5nZXMgaW4gdjM6CkFk
dmljZXMgYnkgVG9tYXN6IGFuZCBUaGllcnJ5OgogIG1lcmdlIGZpeGVzIGludG8gb3JpZ2luIHBh
dGNoLgoKQ2hhbmdlcyBpbiB2MjoKQWR2aWNlcyBieSBUb21hc3o6CiAgYWRkIHNvbWUgZml4ZXMg
cGF0Y2hlcyBmcm9tIGNocm9tZW9zIHByb2plY3QuCgpTaHVucWlhbiBaaGVuZyAoMSk6CiAgZHJt
L3JvY2tjaGlwOiBVc2UgY29tbW9uIElPTU1VIEFQSSB0byBhdHRhY2ggZGV2aWNlcwoKVG9tYXN6
IEZpZ2EgKDEpOgogIGRybS9yb2NrY2hpcDogRG8gbm90IHVzZSBETUEgbWFwcGluZyBBUEkgaWYg
YXR0YWNoZWQgdG8gSU9NTVUgZG9tYWluCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV9kcnYuYyB8IDEwMSArKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fZHJ2LmggfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZ2VtLmMgfCAyNDQgKysrKysrKysrKysrKysrKysrKysrKysrKystLQogZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uaCB8ICAgOCArCiA0IGZpbGVz
IGNoYW5nZWQsIDI5OCBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
