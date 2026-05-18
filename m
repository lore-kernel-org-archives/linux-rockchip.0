Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F85CD343F
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycddpGoVR2GhMveV2lY6+KpmAfnXwi6RdsaBLjlx0AQ=; b=cylHrDh3KVpxXZ
	HZKgzidHO6RMnE1lyl0VUARooyWv0ij8G7ZITHsasGRwoVsyPDfLdx1ZdOi0cYZx2vVdNqAShSBOt
	rlrLRl7ukSp5TvI6pUjrjEd2OOS4MxTQ5ZVuP/Lomy3A3W8VVB1XJQ202QE1YEY6+Se+NBXA5OJtT
	qoVhD9O22f+gd70pAk3xsw2su6kRaflaVX6RjWJptcEGbX2VKMEBo86s/PtsSt6QSTdeKWFJ7GkUr
	QL9EN3RwcLh859jPE6NeUR2Yffy41Dld/XfeksYwFFLaJnOQ3IA2OpsE/8eB8vNwAQ8LMlKBDpME6
	oSAd4lzrOYNhLZQRLEnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3x4-0000000Gli0-0nXL;
	Mon, 18 May 2026 19:48:34 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3wz-0000000Glae-1aEb
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133703; bh=fkGNzPgLT1Dz0z6nTFi2No6Ifen2fpOCha4Dk4M3oxg=;
 b=B/4d/Egl/BTDPzSSO/fCInun5YTEhu60EaRYsVsxtGGFPDbraUGNg9ovpaA733ExC2R6w5Vbp
 lnPyi5M649S4oVRextgkC91w1HRBUxn5bdhnYoP+fS/24wGzRhQB2krF5V4vmoAYq2LfVu1p6BX
 URldQxeWBuxEnOHMu1j+w2pL4oSPN/ow1rwA4IUNbhfb9dA+6x4oxoupuFMZNkpP5ih87/7vEQg
 mnLB8/4iYE+JcChisuNPeCMkjFIqu3PvioA7XEEcrPuLDaQGU2XOMKBingmYcbVcQrP0TMi40/8
 NELRfm0XmBrQYqVr1elUw+yF8D2OFi+/SJTw8E/s1DzQ==
X-Forward-Email-ID: 6a0b6cf1b74b0ebd362eee3b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 02/13] drm/meson: dw-hdmi: Protect from possible NULL pointer dereference
Date: Mon, 18 May 2026 19:47:30 +0000
Message-ID: <20260518194744.2483580-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518194744.2483580-1-jonas@kwiboo.se>
References: <20260518194744.2483580-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124829_422312_9EFF4E46 
X-CRM114-Status: GOOD (  12.28  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The IRQ handler can be called at any time after the call to
devm_request_threaded_irq() completes, even before dw_hdmi->bridge has
been assigned later in meson_dw_hdmi_bind().

Protect from a possible NULL pointer dereference in IRQ handler by only
calling drm_helper_hpd_irq_event() when bridge has been assigned.

Fixes: e67f6037ae1b ("drm/meson: split out encoder from meson_dw_hdmi")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
I only observed this NULL pointer dereference one time, without being
able to reliably re-create a similar timing scenario. I still think this
is an issue that possible could happen and likely should be fixed.

Note that patches later in this series will fully replace this change.
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index 993f6d5d4b29..eafe7daf6ff1 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -520,7 +520,8 @@ static irqreturn_t dw_hdmi_top_thread_irq(int irq, void *dev_id)
 	u32 stat = dw_hdmi->irq_stat;
 
 	/* HPD Events */
-	if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL)) {
+	if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL) &&
+	    dw_hdmi->bridge) {
 		bool hpd_connected = false;
 
 		if (stat & HDMITX_TOP_INTR_HPD_RISE)
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
