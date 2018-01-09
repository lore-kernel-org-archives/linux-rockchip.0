From: Brian Norris <briannorris@chromium.org>
Subject: [PATCH] drm/bridge/synopsys: dsi: make dw_mipi_dsi_bridge_mode_set()
 static
Date: Tue,  9 Jan 2018 12:33:19 -0800
Message-ID: <20180109203319.139520-1-briannorris@chromium.org>
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
To: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: hl@rock-chips.com, David Airlie <airlied@linux.ie>, Brian Norris <briannorris@chromium.org>, hoegsberg@gmail.com, Philippe Cornu <philippe.cornu@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Yannick Fertre <yannick.fertre@st.com>, linux-rockchip@lists.infradead.org, Nickey Yang <nickey.yang@rock-chips.com>, mka@chromium.org, zyw@rock-chips.com, xbl@rock-chips.com, Vincent Abriou <vincent.abriou@st.com>
List-Id: linux-rockchip.vger.kernel.org

c3BhcnNlIGNvbXBsYWluczoKCmRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlw
aS1kc2kuYzo3MDM6Njogd2FybmluZzogc3ltYm9sCidkd19taXBpX2RzaV9icmlkZ2VfbW9kZV9z
ZXQnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgpTaWduZWQtb2ZmLWJ5
OiBCcmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMKaW5kZXggOTBmMTNkZjZmMTA2Li5kNjBh
NzdlOThiNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
bWlwaS1kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGkt
ZHNpLmMKQEAgLTcwMCw5ICs3MDAsOSBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9icmlkZ2Vf
cG9zdF9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCiAJcG1fcnVudGltZV9wdXQo
ZHNpLT5kZXYpOwogfQogCi12b2lkIGR3X21pcGlfZHNpX2JyaWRnZV9tb2RlX3NldChzdHJ1Y3Qg
ZHJtX2JyaWRnZSAqYnJpZGdlLAotCQkJCSBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwK
LQkJCQkgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpCitzdGF0aWMgdm9p
ZCBkd19taXBpX2RzaV9icmlkZ2VfbW9kZV9zZXQoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwK
KwkJCQkJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCisJCQkJCXN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQogewogCXN0cnVjdCBkd19taXBpX2RzaSAqZHNpID0g
YnJpZGdlX3RvX2RzaShicmlkZ2UpOwogCWNvbnN0IHN0cnVjdCBkd19taXBpX2RzaV9waHlfb3Bz
ICpwaHlfb3BzID0gZHNpLT5wbGF0X2RhdGEtPnBoeV9vcHM7Ci0tIAoyLjE2LjAucmMxLjIzOC5n
NTMwZDY0OWE3OS1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwK
