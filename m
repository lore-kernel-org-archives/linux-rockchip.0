From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v2 1/2] drm/bridge/synopsys: dsi: Add a warning msg on dsi
 read requests
Date: Thu, 25 Jan 2018 11:37:59 +0100
Message-ID: <20180125103800.1999-2-philippe.cornu@st.com>
References: <20180125103800.1999-1-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180125103800.1999-1-philippe.cornu@st.com>
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

VGhlIGRjcy9nZW5lcmljIGRzaSByZWFkIGZlYXR1cmUgaXMgbm90IHlldCBpbXBsZW1lbnRlZCBz
byBpdAppcyBpbXBvcnRhbnQgdG8gd2FybiB0aGUgaG9zdF90cmFuc2ZlcigpIGNhbGxlciBpbiBj
YXNlIG9mCnJlYWQgb3BlcmF0aW9uIHJlcXVlc3RzLgoKU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUg
Q29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMv
ZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1k
c2kuYwppbmRleCBkYWVjNzg4MWJlNmQuLjcyZWNhZWI0MDgyMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYwpAQCAtNDA1LDYgKzQwNSwxMiBAQCBz
dGF0aWMgc3NpemVfdCBkd19taXBpX2RzaV9ob3N0X3RyYW5zZmVyKHN0cnVjdCBtaXBpX2RzaV9o
b3N0ICpob3N0LAogCXN0cnVjdCBtaXBpX2RzaV9wYWNrZXQgcGFja2V0OwogCWludCByZXQ7CiAK
KwlpZiAobXNnLT5yeF9idWYgfHwgbXNnLT5yeF9sZW4pIHsKKwkJLyogVE9ETyBkdyBkcnYgaW1w
cm92ZW1lbnRzOiBpbXBsZW1lbnQgcmVhZCBmZWF0dXJlICovCisJCWRldl93YXJuKGRzaS0+ZGV2
LCAicmVhZCBvcGVyYXRpb25zIG5vdCB5ZXQgaW1wbGVtZW50ZWRcbiIpOworCQlyZXR1cm4gLUVJ
TlZBTDsKKwl9CisKIAlyZXQgPSBtaXBpX2RzaV9jcmVhdGVfcGFja2V0KCZwYWNrZXQsIG1zZyk7
CiAJaWYgKHJldCkgewogCQlkZXZfZXJyKGRzaS0+ZGV2LCAiZmFpbGVkIHRvIGNyZWF0ZSBwYWNr
ZXQ6ICVkXG4iLCByZXQpOwotLSAKMi4xNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcmktZGV2ZWwK
