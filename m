From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v1 1/2] drm/bridge/synopsys: dsi: Fix dsi_host_transfer()
 return value
Date: Tue, 23 Jan 2018 15:26:17 +0100
Message-ID: <20180123142618.28384-2-philippe.cornu@st.com>
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

VGhlIGR3X21pcGlfZHNpX2hvc3RfdHJhbnNmZXIoKSBtdXN0IHJldHVybiB0aGUgbnVtYmVyIG9m
CmJ5dGVzIHRyYW5zbWl0dGVkL3JlY2VpdmVkIG9uIHN1Y2Nlc3MgaW5zdGVhZCBvZiAwLgpOb3Rl
OiBuYl9ieXRlcyBpcyBpbnRyb2R1Y2VkIGluIHRoaXMgcGF0Y2ggYXMgaXQgd2lsbCBiZQpyZS11
c2VkIHdpdGggdGhlIGZ1dHVyZSBkY3MvZ2VuZXJpYyBkc2kgcmVhZCBmZWF0dXJlLgoKU2lnbmVk
LW9mZi1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCAxMCArKysrKysrKy0t
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYwppbmRleCBmNDU4Nzk4
YWY3ODguLjA5NmNmNWU1YmIzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9z
eW5vcHN5cy9kdy1taXBpLWRzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3Bz
eXMvZHctbWlwaS1kc2kuYwpAQCAtNDAzLDcgKzQwMyw3IEBAIHN0YXRpYyBzc2l6ZV90IGR3X21p
cGlfZHNpX2hvc3RfdHJhbnNmZXIoc3RydWN0IG1pcGlfZHNpX2hvc3QgKmhvc3QsCiB7CiAJc3Ry
dWN0IGR3X21pcGlfZHNpICpkc2kgPSBob3N0X3RvX2RzaShob3N0KTsKIAlzdHJ1Y3QgbWlwaV9k
c2lfcGFja2V0IHBhY2tldDsKLQlpbnQgcmV0OworCWludCByZXQsIG5iX2J5dGVzOwogCiAJcmV0
ID0gbWlwaV9kc2lfY3JlYXRlX3BhY2tldCgmcGFja2V0LCBtc2cpOwogCWlmIChyZXQpIHsKQEAg
LTQxMyw3ICs0MTMsMTMgQEAgc3RhdGljIHNzaXplX3QgZHdfbWlwaV9kc2lfaG9zdF90cmFuc2Zl
cihzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwKIAogCWR3X21pcGlfbWVzc2FnZV9jb25maWco
ZHNpLCBtc2cpOwogCi0JcmV0dXJuIGR3X21pcGlfZHNpX3dyaXRlKGRzaSwgJnBhY2tldCk7CisJ
cmV0ID0gZHdfbWlwaV9kc2lfd3JpdGUoZHNpLCAmcGFja2V0KTsKKwlpZiAocmV0KQorCQlyZXR1
cm4gcmV0OworCisJbmJfYnl0ZXMgPSBwYWNrZXQuc2l6ZTsKKworCXJldHVybiBuYl9ieXRlczsK
IH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBtaXBpX2RzaV9ob3N0X29wcyBkd19taXBpX2RzaV9o
b3N0X29wcyA9IHsKLS0gCjIuMTUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCg==
