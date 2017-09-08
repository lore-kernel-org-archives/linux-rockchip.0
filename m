From: Sean Paul <seanpaul@chromium.org>
Subject: [PATCH] drm/rockchip: Add forward declarations to cdn_dp_device and
 audio_info
Date: Fri,  8 Sep 2017 10:46:18 -0400
Message-ID: <20170908144637.35914-1-seanpaul@chromium.org>
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QWRkIGZvcndhcmQgZGVjbGFyYXRpb25zIGluIGNkbi1kcC1yZWcuaCB0byBjZG5fZHBfZGV2aWNl
IGFuZCBhdWRpb19pbmZvCgpTaWduZWQtb2ZmLWJ5OiBTZWFuIFBhdWwgPHNlYW5wYXVsQGNocm9t
aXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5oIHwgMyAr
KysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5oIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1yZWcuaAppbmRleCBjNGJiYjRhODMzMTkuLjg0YmRiNGE0OWFlMiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1yZWcuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5oCkBAIC00NTksNiArNDU5LDkgQEAgZW51bSB2aWNf
YnRfdHlwZSB7CiAJQlRfNzA5ID0gMHgxLAogfTsKIAorc3RydWN0IGNkbl9kcF9kZXZpY2U7Citz
dHJ1Y3QgYXVkaW9faW5mbzsKKwogdm9pZCBjZG5fZHBfY2xvY2tfcmVzZXQoc3RydWN0IGNkbl9k
cF9kZXZpY2UgKmRwKTsKIAogdm9pZCBjZG5fZHBfc2V0X2Z3X2NsayhzdHJ1Y3QgY2RuX2RwX2Rl
dmljZSAqZHAsIHVuc2lnbmVkIGxvbmcgY2xrKTsKLS0gCjIuMTQuMS41ODEuZ2YyOGQzMzAzMjct
Z29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJp
LWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
