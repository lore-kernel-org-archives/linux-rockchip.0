From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v2 0/2] drm/bridge/synopsys: dsi: Add fix & warning in
 dsi_host_transfer()
Date: Thu, 25 Jan 2018 11:37:58 +0100
Message-ID: <20180125103800.1999-1-philippe.cornu@st.com>
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
To: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Philippe Cornu <philippe.cornu@st.com>, Brian Norris <briannorris@chromium.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Yannick Fertre <yannick.fertre@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Mickael Reulier <mickael.reulier@st.com>, Vincent Abriou <vincent.abriou@st.com>, Ludovic Barre <ludovic.barre@st.com>
List-Id: linux-rockchip.vger.kernel.org

QWRkIGEgZml4ICYgYSB3YXJuaW5nIGluIHRoZSBkc2lfaG9zdF90cmFuc2ZlcigpLgoKVmVyc2lv
biAyOgotIFNpbXBsaWZ5IHRoZSAyIHBhdGNoZXMgZm9sbG93aW5nIGNvbW1lbnRzIGZyb20gQnJp
YW4gTm9ycmlzLgotIFN3YXAgdGhlIDIgcGF0Y2hlcyBhcyB0aGUgcmV0dXJuIHZhbHVlIGlzIG9u
bHkgb24gdHggYW5kCiAgaW4gY2FzZSBvZiByeCByZXF1ZXN0cyB0aGUgd2FybmluZyBpcyB0aGVy
ZS4KClZlcnNpb24gMToKLSBJbml0aWFsIGNvbW1pdAoKUGhpbGlwcGUgQ29ybnUgKDIpOgogIGRy
bS9icmlkZ2Uvc3lub3BzeXM6IGRzaTogQWRkIGEgd2FybmluZyBtc2cgb24gZHNpIHJlYWQgcmVx
dWVzdHMKICBkcm0vYnJpZGdlL3N5bm9wc3lzOiBkc2k6IEZpeCBkc2lfaG9zdF90cmFuc2Zlcigp
IHJldHVybiB2YWx1ZQoKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1k
c2kuYyB8IDE3ICsrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKLS0gCjIuMTUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpLWRldmVsCg==
