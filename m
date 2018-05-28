From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 0/2] drm/rockchip: try to fix vblank hang resulting from
 iommu irq change
Date: Mon, 28 May 2018 15:20:00 +0200
Message-ID: <20180528132002.7712-1-heiko@sntech.de>
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
To: dri-devel@lists.freedesktop.org
Cc: marc.zyngier@arm.com, robin.murphy@arm.com, jeffy.chen@rock-chips.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org, enric.balletbo@collabora.co.uk, tomeu.vizoso@collabora.co.uk, ezequiel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

VGhpcyBzdGlsbCB0cmllcyB0byBhZGRyZXNzIHRoZSBoYW5nIHNlZW4gYnkgRXplcXVpZWwgR2Fy
Y2lhIG9uIHJrMzI4OC4KCkFzIFRvbWFzeiBub3RlZCwgdHJ5aW5nIHRvIGNvdW50IGVuYWJsZW1l
bnQgY2FuIHJ1biBpbnRvIGNvbmN1cnJlbmN5Cmlzc3Vlcywgc28gaW5zdGVhZCB3ZSdsbCBqdXN0
IGNoZWNrIGlmIHRoZSB2b3AgaXMgcnVudGltZS1lbmFibGVkCnRvIHNlZSBpZiBpdCBjb3VsZCBi
ZSB0aGUgc291cmNlIG9mIHRoZSBpcnEgYW5kIHRoZW4ganVzdCBkbyBvdXIKb3duIGNsa19lbmFi
bGUgaW4gdGhlIGlzciB0byBicmlkZ2UgdGhlIHBvc3NpYmxlIGdhcCBiZXR3ZWVuCnBtX3J1bnRp
bWVfZW5hYmxlIGFuZCBjbGtfZW5hYmxlIGluIHRoZSBjb3JlIHZvcF9lbmFibGUoKSBmdW5jdGlv
bi4KCkRpc3BsYXkgdGVzdGVkIHRvIHN0aWxsIHdvcmsgb24gcmszMzI4IGFuZCByazMzOTksIGJ1
dCBhcyBJIGRvbid0IHNlZQp0aGUgaGFuZyBmcm9tIEV6ZXF1aWVsIEkgaG9wZSB0aGF0IHRoaXMg
Zml4ZXMgaXQuCgoKY2hhbmdlcyBpbiB2MjoKLSBhZGFwdCBhcHByb2FjaCAuLi4gZG9uJ3QgdHJ5
IHRvIGNvdW50IHVzYWdlIG91cnNlbGYsIGJlY2F1c2Ugb2YKICBwb3NzaWJsZSBjb25jdXJyZW5j
eSBpc3N1ZXMgd2l0aCB2b3AgZW5hYmxlL2Rpc2FibGUKCkhlaWtvIFN0dWVibmVyICgxKToKICBk
cm0vcm9ja2NoaXA6IHZvcDogc3BsaXQgb3V0IGNvcmUgY2xvY2sgZW5hYmxlbWVudCBpbnRvIHNl
cGFyYXRlCiAgICBmdW5jdGlvbnMKClNhbmR5IEh1YW5nICgxKToKICBkcm0vcm9ja2NoaXA6IHZv
cDogZml4IGlycSBkaXNhYmxlZCBhZnRlciB2b3AgZHJpdmVyIHByb2JlZAoKIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCA3MiArKysrKysrKysrKysrKy0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCi0t
IAoyLjE3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
