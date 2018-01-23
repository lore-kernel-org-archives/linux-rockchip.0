From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v1 2/2] drm/bridge/synopsys: dsi: Add a warning msg on dsi
 read operations
Date: Tue, 23 Jan 2018 15:26:18 +0100
Message-ID: <20180123142618.28384-3-philippe.cornu@st.com>
References: <20180123142618.28384-1-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180123142618.28384-1-philippe.cornu@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Philippe Cornu <philippe.cornu@st.com>, Brian Norris <briannorris@chromium.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Yannick Fertre <yannick.fertre@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Mickael Reulier <mickael.reulier@st.com>, Vincent Abriou <vincent.abriou@st.com>, Ludovic Barre <ludovic.barre@st.com>
List-Id: linux-rockchip.vger.kernel.org

VGhlIERDUy9HRU5FUklDIERTSSByZWFkIGZlYXR1cmUgaXMgbm90IHlldCBpbXBsZW1lbnRlZCBz
byBpdAppcyBpbXBvcnRhbnQgdG8gd2FybiB0aGUgaG9zdF90cmFuc2ZlcigpIGNhbGxlciBpbiBj
YXNlIG9mCnJlYWQgb3BlcmF0aW9uIHJlcXVlc3RzLgoKU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUg
Q29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCA5ICsrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c3lub3BzeXMvZHctbWlwaS1kc2kuYwppbmRleCAwOTZjZjVlNWJiMzAuLmU0NmRkZmY4NjAxYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYwpAQCAt
NDE3LDcgKzQxNywxNCBAQCBzdGF0aWMgc3NpemVfdCBkd19taXBpX2RzaV9ob3N0X3RyYW5zZmVy
KHN0cnVjdCBtaXBpX2RzaV9ob3N0ICpob3N0LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAK
LQluYl9ieXRlcyA9IHBhY2tldC5zaXplOworCWlmIChtc2ctPnJ4X2J1ZiAmJiBtc2ctPnJ4X2xl
biA+IDApIHsKKwkJLyogVE9ETyBkdyBkcnYgaW1wcm92ZW1lbnRzOiBpbXBsZW1lbnQgcmVhZCBm
ZWF0dXJlICovCisJCWRldl93YXJuKGRzaS0+ZGV2LCAicmVhZCBvcGVyYXRpb25zIG5vdCB5ZXQg
aW1wbGVtZW50ZWRcbiIpOworCQlyZXR1cm4gLUVQRVJNOworCisJfSBlbHNlIHsKKwkJbmJfYnl0
ZXMgPSBwYWNrZXQuc2l6ZTsKKwl9CiAKIAlyZXR1cm4gbmJfYnl0ZXM7CiB9Ci0tIAoyLjE1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
