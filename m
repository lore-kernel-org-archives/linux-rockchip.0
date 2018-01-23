From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v1 0/2] drm/bridge/synopsys: dsi: Add fix & warning in
 dsi_host_transfer()
Date: Tue, 23 Jan 2018 15:26:16 +0100
Message-ID: <20180123142618.28384-1-philippe.cornu@st.com>
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

QWRkIGEgZml4ICYgYSB3YXJuaW5nIGluIHRoZSBkc2lfaG9zdF90cmFuc2ZlcigpLgoKUGhpbGlw
cGUgQ29ybnUgKDIpOgogIGRybS9icmlkZ2Uvc3lub3BzeXM6IGRzaTogRml4IGRzaV9ob3N0X3Ry
YW5zZmVyKCkgcmV0dXJuIHZhbHVlCiAgZHJtL2JyaWRnZS9zeW5vcHN5czogZHNpOiBBZGQgYSB3
YXJuaW5nIG1zZyBvbiBkc2kgcmVhZCBvcGVyYXRpb25zCgogZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jIHwgMTcgKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIuMTUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1h
aWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
