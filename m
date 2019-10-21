From: Rob Herring <robh@kernel.org>
Subject: [PATCH 1/6] drm/kirin: Use DRM_GEM_CMA_VMAP_DRIVER_OPS
Date: Mon, 21 Oct 2019 16:45:45 -0500
Message-ID: <20191021214550.1461-2-robh@kernel.org>
References: <20191021214550.1461-1-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191021214550.1461-1-robh@kernel.org>
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Yannick Fertre <yannick.fertre@st.com>, Kevin Hilman <khilman@baylibre.com>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, Xinliang Liu <z.liuxinliang@hisilicon.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, "James (Qian) Wang" <james.qian.wang@arm.com>, Alexandre Torgue <alexandre.torgue@st.com>, Chen Feng <puck.chen@hisilicon.com>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org, Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rongrong Zou <zourongrong@>
List-Id: linux-rockchip.vger.kernel.org

ZHJtX2dlbV9jbWFfZHVtYl9jcmVhdGVfaW50ZXJuYWwoKSBpcyBub3Qgc3VwcG9zZWQgdG8gYmUg
dXNlZCBmb3IKLmR1bWJfY3JlYXRlIGRpcmVjdGx5LiBkcm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZSgp
IHNob3VsZCBiZSB1c2VkIGluc3RlYWQuCklmIHdlIGRvIHRoYXQsIHdlIG1pZ2h0IGFzIHdlbGwg
Y29udmVydCBvdmVyIHRvIHVzaW5nCkRSTV9HRU1fQ01BX1ZNQVBfRFJJVkVSX09QUyBpbnN0ZWFk
LgoKQ2M6IFhpbmxpYW5nIExpdSA8ei5saXV4aW5saWFuZ0BoaXNpbGljb24uY29tPgpDYzogUm9u
Z3JvbmcgWm91IDx6b3Vyb25ncm9uZ0BnbWFpbC5jb20+CkNjOiBYaW53ZWkgS29uZyA8a29uZy5r
b25neGlud2VpQGhpc2lsaWNvbi5jb20+CkNjOiBDaGVuIEZlbmcgPHB1Y2suY2hlbkBoaXNpbGlj
b24uY29tPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgpDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24va2lyaW4va2lyaW5fZHJt
X2FkZS5jIHwgMTEgKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9r
aXJpbi9raXJpbl9kcm1fYWRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2tpcmluL2tp
cmluX2RybV9hZGUuYwppbmRleCA3M2NkMjhhNmVhMDcuLjQ5MDUzN2ExZDAzNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9raXJpbi9raXJpbl9kcm1fYWRlLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9raXJpbi9raXJpbl9kcm1fYWRlLmMKQEAgLTk0MSwx
NiArOTQxLDcgQEAgREVGSU5FX0RSTV9HRU1fQ01BX0ZPUFMoYWRlX2ZvcHMpOwogc3RhdGljIHN0
cnVjdCBkcm1fZHJpdmVyIGFkZV9kcml2ZXIgPSB7CiAJLmRyaXZlcl9mZWF0dXJlcyA9IERSSVZF
Ul9HRU0gfCBEUklWRVJfTU9ERVNFVCB8IERSSVZFUl9BVE9NSUMsCiAJLmZvcHMgPSAmYWRlX2Zv
cHMsCi0JLmdlbV9mcmVlX29iamVjdF91bmxvY2tlZCA9IGRybV9nZW1fY21hX2ZyZWVfb2JqZWN0
LAotCS5nZW1fdm1fb3BzID0gJmRybV9nZW1fY21hX3ZtX29wcywKLQkuZHVtYl9jcmVhdGUgPSBk
cm1fZ2VtX2NtYV9kdW1iX2NyZWF0ZV9pbnRlcm5hbCwKLQkucHJpbWVfaGFuZGxlX3RvX2ZkCT0g
ZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQsCi0JLnByaW1lX2ZkX3RvX2hhbmRsZQk9IGRybV9n
ZW1fcHJpbWVfZmRfdG9faGFuZGxlLAotCS5nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlID0gZHJtX2dl
bV9jbWFfcHJpbWVfZ2V0X3NnX3RhYmxlLAotCS5nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlID0g
ZHJtX2dlbV9jbWFfcHJpbWVfaW1wb3J0X3NnX3RhYmxlLAotCS5nZW1fcHJpbWVfdm1hcCA9IGRy
bV9nZW1fY21hX3ByaW1lX3ZtYXAsCi0JLmdlbV9wcmltZV92dW5tYXAgPSBkcm1fZ2VtX2NtYV9w
cmltZV92dW5tYXAsCi0JLmdlbV9wcmltZV9tbWFwID0gZHJtX2dlbV9jbWFfcHJpbWVfbW1hcCwK
KwlEUk1fR0VNX0NNQV9WTUFQX0RSSVZFUl9PUFMsCiAKIAkubmFtZSA9ICJraXJpbiIsCiAJLmRl
c2MgPSAiSGlzaWxpY29uIEtpcmluNjIwIFNvQyBEUk0gRHJpdmVyIiwKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1h
aWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
