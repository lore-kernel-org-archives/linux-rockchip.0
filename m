From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] drm/rockchip: analogix_dp: reorder psr_unregister call in
 unbind
Date: Thu, 01 Mar 2018 16:25:58 +0100
Message-ID: <76025075.yWNtk1v57f@phil>
References: <20180110162348.22765-1-thierry.escande@collabora.com>
 <20180110162348.22765-4-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180110162348.22765-4-thierry.escande@collabora.com>
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
Cc: Thierry Escande <thierry.escande@collabora.com>, Neil Armstrong <narmstrong@baylibre.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel.vetter@intel.com>
List-Id: linux-rockchip.vger.kernel.org

SW4gYmluZCB0aGUgcHNyIGhhbmRsZXIgZ2V0cyByZWdpc3RlcmVkIGZpcnN0IGJlZm9yZSB0aGUg
Y29yZQphbmFsb2dpeF9kcF9iaW5kKCkgZ2V0cyBjYWxsZWQuIFNvIGl0IHNob3VsZCBiZSB0aGUg
b3RoZXIgd2F5CmFyb3VuZCBpbiB1bmJpbmQsIGZpcnN0IHVuYmluZCB0aGUgYW5hbG9naXhfZHAg
YW5kIHRoZW4KdW5yZWdpc3RlciB0aGUgcHNyLgoKU2lnbmVkLW9mZi1ieTogSmVmZnkgQ2hlbiA8
amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBFc2NhbmRl
IDx0aGllcnJ5LmVzY2FuZGVAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5h
bG9naXhfZHAtcm9ja2NoaXAuYyB8IDE1ICsrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYwppbmRleCAzNzI1MGFiNjNiZDcuLmViODhj
NTIzMzZhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2Rw
LXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJv
Y2tjaGlwLmMKQEAgLTM3MCw4ICszNzcsOCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9kcF91bmJp
bmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCiB7CiAJc3RydWN0
IHJvY2tjaGlwX2RwX2RldmljZSAqZHAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKIAotCXJvY2tj
aGlwX2RybV9wc3JfdW5yZWdpc3RlcigmZHAtPmVuY29kZXIpOwogCWFuYWxvZ2l4X2RwX3VuYmlu
ZChkcC0+YWRwKTsKKwlyb2NrY2hpcF9kcm1fcHNyX3VucmVnaXN0ZXIoJmRwLT5lbmNvZGVyKTsK
IAlkcC0+ZW5jb2Rlci5mdW5jcy0+ZGVzdHJveSgmZHAtPmVuY29kZXIpOwogfQogCi0tIAoyLjE1
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
