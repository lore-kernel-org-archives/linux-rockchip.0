From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v2 2/2] drm/bridge/synopsys: dsi: Fix dsi_host_transfer()
 return value
Date: Thu, 25 Jan 2018 11:38:00 +0100
Message-ID: <20180125103800.1999-3-philippe.cornu@st.com>
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

VGhlIGR3X21pcGlfZHNpX2hvc3RfdHJhbnNmZXIoKSBtdXN0IHJldHVybiB0aGUgbnVtYmVyIG9m
CmJ5dGVzIHRyYW5zbWl0dGVkL3JlY2VpdmVkIG9uIHN1Y2Nlc3MgaW5zdGVhZCBvZiAwLgpOb3Rl
OiBBcyB0aGUgcmVhZCBmZWF0dXJlIGlzIG5vdCBpbXBsZW1lbnRlZCwgb25seSB0aGUKdHJhbnNt
aXR0ZWQgbnVtYmVyIG9mIGJ5dGVzIGlzIHJldHVybmVkIGZvciB0aGUgbW9tZW50LgoKU2lnbmVk
LW9mZi1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCAxMSArKysrKysrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgYi9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMKaW5kZXggNzJlY2Fl
YjQwODIyLi4wOTBiZjYyZDFlYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c3lub3BzeXMvZHctbWlwaS1kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LW1pcGktZHNpLmMKQEAgLTQxOSw3ICs0MTksMTYgQEAgc3RhdGljIHNzaXplX3QgZHdf
bWlwaV9kc2lfaG9zdF90cmFuc2ZlcihzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwKIAogCWR3
X21pcGlfbWVzc2FnZV9jb25maWcoZHNpLCBtc2cpOwogCi0JcmV0dXJuIGR3X21pcGlfZHNpX3dy
aXRlKGRzaSwgJnBhY2tldCk7CisJcmV0ID0gZHdfbWlwaV9kc2lfd3JpdGUoZHNpLCAmcGFja2V0
KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJLyoKKwkgKiBUT0RPIE9ubHkgdHJhbnNt
aXR0ZWQgc2l6ZSBpcyByZXR1cm5lZCBhcyBhY3R1YWwgZHJpdmVyIGRvZXMKKwkgKiBub3Qgc3Vw
cG9ydCBkY3MvZ2VuZXJpYyByZWFkcy4gUGxlYXNlIHVwZGF0ZSByZXR1cm4gdmFsdWUgd2hlbgor
CSAqIGRlbGl2ZXJpbmcgdGhlIHJlYWQgZmVhdHVyZS4KKwkgKi8KKwlyZXR1cm4gcGFja2V0LnNp
emU7CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWlwaV9kc2lfaG9zdF9vcHMgZHdfbWlwaV9k
c2lfaG9zdF9vcHMgPSB7Ci0tIAoyLjE1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAo=
