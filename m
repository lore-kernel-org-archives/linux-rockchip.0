Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E87CD4F54
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+chq+4GyXBXtqvQxu2u0dvrYrMEVaQTK1DI8lVe3DI=; b=WNBFKJX7/jGxR/
	HWmhGMggRNzIfRlRXTU1PTPxNwVwff5CkR0z4ZMc4sD075w0aYNM96kirKWIpKbpbSuqQrA7wCBdc
	WTa9ZVFVH8vuR6MswRSESS3RVvPVq8t+/VGIDIJzrjWNWLQyX30iO81O3K9LlltrgybeC5SGq2tG0
	PcTFmw+dQGHlnuy7kvO+XauK1OZEvDilWp1/75XKo70UKftDGkSsohdtQgX2xcMSBMIN6wIdR4vts
	5hl0gjK2PZ2CPqw1rcRC46ArYpnIpjDR8Xmk0NPdmCVmMl2lkh0/8A/eS0soWPp7ddnaAZYK6zYcw
	rBjopK54abok8WtHq1EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3xF-0000000Gm3V-3uUb;
	Mon, 18 May 2026 19:48:45 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3xB-0000000Glpc-1JRe
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133710; bh=kjTG1Ak+F+PLmCEEhmKg5bB7H85Hff4CbMbJgrGq+P0=;
 b=Oa277U2JYRDVah99BGQ8ZNXYDM+NSa42eRqPyIx80rGTV0kNgqHg4LBwL1XlS6FdJI17VjeKr
 Y/TcvFG20iZYj3J/v10Y70XKCEvgvbYh4BUUBuVX5zud6WFAO4HqGAW/6jlteaZjCpZBcIbU8cD
 C3QtIfOPWwoTiL7SMr2/n4IL9lj0atGR1ntx2VuREhC/+UvtK3542OOQRTo85p+ByMdVzih7dXe
 9pyGJ8stciUA2zncD1B2D25RoxyfhC4bFAxptiBCp0aJ7PNbemr2ScoQRB4q00r7vTWJsaXqNzg
 t0Rbk+swjmxhkmBu8xYIVxt0iYS8jFF1ettAV5Y90ZPQ==
X-Forward-Email-ID: 6a0b6cf5b74b0ebd362eee56
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
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 03/13] drm/meson: dw-hdmi: Call dw_hdmi_remove() consistently
Date: Mon, 18 May 2026 19:47:31 +0000
Message-ID: <20260518194744.2483580-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518194744.2483580-1-jonas@kwiboo.se>
References: <20260518194744.2483580-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_124841_363006_45DFC5C9 
X-CRM114-Status: GOOD (  11.07  )
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

dw-hdmi export two similar pair of functions to probe()/remove() and
bind()/unbind(), update to use dw_hdmi_remove() for consistency.

dw_hdmi_probe() will drm_bridge_add() the dw-hdmi bridge, so it is
expected that of_drm_find_and_get_bridge() always return the dw-hdmi
bridge. Regardless, validate that the dw-hdmi can be found for
consistent error handling.

Also always ensure the IRQ handler and bridge is released before
dw_hdmi_remove() is called.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/meson/meson_dw_hdmi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
index eafe7daf6ff1..9aafdc768f2b 100644
--- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
+++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
@@ -775,10 +775,17 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
 	platform_set_drvdata(pdev, meson_dw_hdmi);
 
 	meson_dw_hdmi->hdmi = dw_hdmi_probe(pdev, &meson_dw_hdmi->dw_plat_data);
-	if (IS_ERR(meson_dw_hdmi->hdmi))
+	if (IS_ERR(meson_dw_hdmi->hdmi)) {
+		devm_free_irq(dev, irq, meson_dw_hdmi);
 		return PTR_ERR(meson_dw_hdmi->hdmi);
+	}
 
 	meson_dw_hdmi->bridge = of_drm_find_and_get_bridge(pdev->dev.of_node);
+	if (!meson_dw_hdmi->bridge) {
+		devm_free_irq(dev, irq, meson_dw_hdmi);
+		dw_hdmi_remove(meson_dw_hdmi->hdmi);
+		return -ENODEV;
+	}
 
 	DRM_DEBUG_DRIVER("HDMI controller initialized\n");
 
@@ -793,8 +800,8 @@ static void meson_dw_hdmi_unbind(struct device *dev, struct device *master,
 	int irq = platform_get_irq(pdev, 0);
 
 	devm_free_irq(dev, irq, meson_dw_hdmi);
-	dw_hdmi_unbind(meson_dw_hdmi->hdmi);
 	drm_bridge_put(meson_dw_hdmi->bridge);
+	dw_hdmi_remove(meson_dw_hdmi->hdmi);
 }
 
 static const struct component_ops meson_dw_hdmi_ops = {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
