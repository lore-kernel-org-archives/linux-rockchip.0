From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 0/3] Update ROCKCHIP DSI driver that uses dw-mipi-dsi bridge
Date: Tue, 28 Nov 2017 09:13:33 +0800
Message-ID: <1511831616-10322-1-git-send-email-nickey.yang@rock-chips.com>
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
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: hl@rock-chips.com, briannorris@chromium.org, hoegsberg@gmail.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, philippe.cornu@st.com, yannick.fertre@st.com, linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

V2Ugbm93IGhhdmUgYSBnZW5lcmljIGR3LW1pcGktZHNpIGJyaWRnZSBkcml2ZXIuU28gd2Ugc2Vu
ZAp0aGlzIHBhdGNocyB0byBtb3Zpbmcgcm9ja2NoaXAgZHctbWlwaS1kc2kgZHJpdmVyIHRvIHRo
YXQKaW4gb3JkZXIgdG8gYWRkIG5ldyBmZWF0dXJlcyhkdWFsIG1pcGkgc3VwcG9ydCkuClVwZGF0
ZSBST0NLQ0hJUCBEU0kgY29udHJvbGxlciBkcml2ZXIgdGhhdCB1c2VzIHRoZSBTeW5vcHN5cwpE
ZXNpZ25XYXJlIE1JUEkgRFNJIGhvc3QgY29udHJvbGxlciBicmlkZ2UuCgpOaWNrZXkgWWFuZyAo
Myk6CiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHJvY2tjaGlwOiB1cGRhdGUgRFNJIGNvbnRyb2xs
ZXIKICBkcm0vcm9ja2NoaXA6IEFkZCBST0NLQ0hJUCBEVyBNSVBJIERTSSBjb250cm9sbGVyIGRy
aXZlcgogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiB1cGRhdGUgbWlwaSBub2RlIGZvciBSSzMzOTkK
CiAuLi4vZGlzcGxheS9yb2NrY2hpcC9kd19taXBpX2RzaV9yb2NrY2hpcC50eHQgICAgICB8ICAg
MjMgKy0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgICAgICAgICAg
IHwgICAgOCArLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgICAgICAgICAgICAg
ICAgICAgfCAgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZpbGUgICAgICAg
ICAgICAgICAgICB8ICAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRz
aS5jICAgICAgICAgICAgIHwgMTM0OSAtLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpX3JvY2tjaGlwLmMgICAgfCAgNzU2ICsrKysrKysrKysr
CiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jICAgICAgICB8ICAg
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmggICAgICAg
IHwgICAgMiArLQogOCBmaWxlcyBjaGFuZ2VkLCA3ODQgaW5zZXJ0aW9ucygrKSwgMTM2MCBkZWxl
dGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHct
bWlwaS1kc2kuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
dy1taXBpLWRzaV9yb2NrY2hpcC5jCgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
