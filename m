Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3058DC48BC4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 18:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2RdvTXT9xIS5GdhDhq7179+x34zDO4gftMzPSvV0Cy0=; b=BbHD3xw+B9ChpC
	bri3fhySYpUHBcXHKVNJQZsy0ZZB06+nSrMIxNBS17ipefLVNMKPv4xRMC9OMVHBZG3tMRZtk5ceq
	eS0q9zGjf0h2Cb1eDp9aIWwF9tx24xEXp78KWW6CyYed6DpKT/7yygbm5U0L/Gyb4w//yzRZQa9QS
	UD30KYki7hKIyEhXBAbYMZcVzp6II8x0b05wup5+8Zo9mkrfNeYKxbLvsnj65sZSxXKKB2KFqXBCz
	5IxXBMuo1/+Nt4CgMtZLcL6JXk7ElrqSFHRm8n3OMDH/LepOqqVJ1YqMpY1gK9pv8j87uhbHzSeAz
	UAPZcFlB0NV2ymHPWAzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbPbR-00000006AYu-1xBW;
	Sat, 17 Feb 2024 18:39:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbPbN-00000006AXI-15u8;
	Sat, 17 Feb 2024 18:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708195188; bh=RGT4BBgnm1LR3lAuyD4pvnFiAKoTJKy/hJEE6iV4fGM=;
	h=From:To:Cc:Subject:Date:From;
	b=uvw3HgWWmY7+Xkbi4vxj22xCzuVWwCZ39hTQkerpKso/6Ibs1WEJS6+0wQH1pQlGF
	 OddB8sxShAxmi6ngu4OMAuvttfPFJotsZuSXhLlOm5AD6V+wU+BL3+SyC3eSg5S1JS
	 QiStiQtoBi5I88joo1223xC97L8PRTi8hW263ePA=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] drm: rockchip: Don't require MIPI DSI device when it's used for ISP
Date: Sat, 17 Feb 2024 19:39:40 +0100
Message-ID: <20240217183941.1752463-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_103953_790517_4DB60148 
X-CRM114-Status: GOOD (  16.54  )
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

From: Ondrej Jirman <megi@xff.cz>

On RK3399 one MIPI DSI device can be alternatively used with the ISP1,
to provide RX DPHY. When this is the case (ISP1 is enabled in device
tree), probe success of DRM is tied to probe success of ISP1 connected
camera sensor. This can fail if the user is able to killswitch the camera
power, like on Pinephone Pro.

Detect use of MIPI DSI controller by ISP, and don't include it in
component match list in that case.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 47 +++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index ab55d7132550..f47de94ad576 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -354,6 +354,43 @@ static void rockchip_drm_match_remove(struct device *dev)
 		device_link_del(link);
 }
 
+/*
+ * Check if ISP block linked to a mipi-dsi device via phys phandle is
+ * enabled in device tree.
+ */
+static bool rockchip_drm_is_mipi1_and_used_by_isp(struct device *dev)
+{
+	struct device_node *np = NULL, *phy_np;
+
+	if (!of_device_is_compatible(dev->of_node, "rockchip,rk3399-mipi-dsi"))
+		return false;
+
+	while (true) {
+		np = of_find_compatible_node(np, NULL, "rockchip,rk3399-cif-isp");
+		if (!np)
+			break;
+
+		if (!of_device_is_available(np)) {
+			of_node_put(np);
+			continue;
+		}
+
+		phy_np = of_parse_phandle(np, "phys", 0);
+		if (!phy_np) {
+			of_node_put(np);
+			continue;
+		}
+
+		of_node_put(phy_np);
+		of_node_put(np);
+
+		if (phy_np == dev->of_node)
+			return true;
+	}
+
+	return false;
+}
+
 static struct component_match *rockchip_drm_match_add(struct device *dev)
 {
 	struct component_match *match = NULL;
@@ -371,6 +408,16 @@ static struct component_match *rockchip_drm_match_add(struct device *dev)
 			if (!d)
 				break;
 
+			/*
+			 * If mipi1 is connected to ISP, we don't want to wait for mipi1 component,
+			 * because it will not be used by DRM anyway, to not tie success of camera
+			 * driver probe to display pipeline initialization.
+			 */
+			if (rockchip_drm_is_mipi1_and_used_by_isp(d)) {
+				dev_info(d, "used by ISP1, skipping from DRM\n");
+				continue;
+			}
+
 			device_link_add(dev, d, DL_FLAG_STATELESS);
 			component_match_add(dev, &match, component_compare_dev, d);
 		} while (true);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
