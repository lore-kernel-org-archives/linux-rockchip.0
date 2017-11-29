From: Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4] arm64: dts: rockchip: update mipi cells for RK3399
Date: Wed, 29 Nov 2017 10:47:55 -0800
Message-ID: <20171129184755.77187-1-briannorris@chromium.org>
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
To: heiko@sntech.de
Cc: mark.rutland@arm.com, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, Philippe Cornu <philippe.cornu@st.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, zyw@rock-chips.com, Brian Norris <briannorris@chromium.org>, linux-rockchip@lists.infradead.org, Nickey Yang <nickey.yang@rock-chips.com>, mka@chromium.org, xbl@rock-chips.com, hoegsberg@gmail.com, robh+dt@kernel.org, Vincent Abriou <vincent.abriou@st.com>, hl@rock-chips.com, Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, Yannick Fertre <yannick.fertre@st.com>
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogTmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJvY2stY2hpcHMuY29tPgoKV2UgbWlnaHQg
aW5jbHVkZSBhZGRpdGlvbmFsIHBvcnRzIGluIGRlcml2YXRpdmUgZGV2aWNlIHRyZWVzLCBzbyB0
aGUKJ3BvcnQnIG5vZGUgc2hvdWxkIGhhdmUgYW4gYWRkcmVzcywgYW5kIHRoZSBwYXJlbnQgJ3Bv
cnRzJyBub2RlIG5lZWRzCi8je2FkZHJlcyxzaXplfS1jZWxscy4KCnY0OgogKiBrZWVwICN7YWRk
cmVzcyxzaXplfS1jZWxscyBpbiBib3RoICdwb3J0cycgYW5kICdwb3J0QDAnIG5vZGVzCiAqIHNl
cGFyYXRlIGZyb20gdGhlIHJlc3Qgb2YgdGhlIHNlcmllcywgc2luY2UgdGhpcyBpcyBtb3N0bHkK
ICAgaW5kZXBlbmRlbnQgb2YgdGhlIGRyaXZlciByZWZhY3RvcmluZwoKU2lnbmVkLW9mZi1ieTog
Tmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBC
cmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTkuZHRzaQppbmRleCBkMzQwYjU4YWIxODQuLmM2ZGFlMjVhM2YyMyAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQorKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCkBAIC0xNjUyLDcgKzE2NTIsMTEgQEAK
IAkJc3RhdHVzID0gImRpc2FibGVkIjsKIAogCQlwb3J0cyB7Ci0JCQltaXBpX2luOiBwb3J0IHsK
KwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MD47CisKKwkJCW1p
cGlfaW46IHBvcnRAMCB7CisJCQkJcmVnID0gPDA+OwogCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+
OwogCQkJCSNzaXplLWNlbGxzID0gPDA+OwogCi0tIAoyLjE1LjAuNTMxLmcyY2NiMzAxMmM5LWdv
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
