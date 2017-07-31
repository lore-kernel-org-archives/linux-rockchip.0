From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 0/6] drm/rockchip: Some fixes
Date: Mon, 31 Jul 2017 17:49:28 +0800
Message-ID: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
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
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

SGVyZSBhcmUgc29tZSBmaXhlcyBwb3J0IGZyb20gcm9ja2NoaXBfbGludXggcHJvamVjdFswXSwK
ClRlc3RlZCBvbiByazMzOTkgYW5kIHJrMzI4OCBib2FyZC4KClswXTogaHR0cHM6Ly9naXRodWIu
Y29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbAoKTWFyayBZYW8gKDYpOgogIGRybS9yb2NrY2hpcDog
dm9wOiBubyBuZWVkIHdhaXQgdmJsYW5rIG9uIGNydGMgZW5hYmxlCiAgZHJtL3JvY2tjaGlwOiB2
b3A6IGZpeCBpb21tdSBwYWdlIGZhdWx0IHdoZW4gcmVzdW1lCiAgZHJtL3JvY2tjaGlwOiB2b3A6
IGZpeCBOVjEyIHZpZGVvIGRpc3BsYXkgZXJyb3IKICBkcm0vcm9ja2NoaXA6IHZvcDogcm91bmRf
dXAgcGl0Y2hlcyB0byB3b3JkIGFsaWduCiAgZHJtL3JvY2tjaGlwOiB2b3A6IHJlcG9ydCBlcnJv
ciB3aGVuIGNoZWNrIHJlc291cmNlIGVycm9yCiAgZHJtL3JvY2tjaGlwOiBmaXggcmFjZSB3aXRo
IGttcyBob3RwbHVnIGFuZCBmYmRldgoKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZmIuYyAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuYyB8IDc3ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oIHwgIDMgKysKIDMgZmlsZXMgY2hhbmdlZCwg
MjQgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25zKC0pCgotLSAKMS45LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBs
aXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
