Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C506FC54FCD
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 01:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAHiJuuh+TtTfJ703GAmLyptPsBgfkIq+fYyiAWBFTY=; b=vqhKHB5ink4UDQ
	1Vc+JJHrzVTVLfwq5pJ7hvhxEEisIS9bcJJhq7TIQSGL9mNV2TvYLevFkF4zauTqeA4WqNBDE2Fx5
	2ti+mQGd2vf8FSnE5RwD8sTdKHOjdG6Hy6eIUr2cXi5PhvM+0joGbezoWSfXZ09STM6yDL+TBjLPn
	j3l8cJqqFvAb9zXpzXqMR0YNF9YnMeGZtJOkpkud1j5yPNiOWXda77laMsBiCLW2Ez6+6ZZPvMPDy
	o/L8m9nowsuScbMQxvCU1aEHs3Hu4HBdfWIQGUA0DnGzQYOvNs5VDh7/QRPyhL09D3cprOJa9xS+I
	ipJdEkjGFemTVXEGdSzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFgV-00000009GrT-1Tb4;
	Thu, 30 Jul 2026 01:35:43 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFgC-00000009GRz-2Dm9;
	Thu, 30 Jul 2026 01:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1785375276;
	bh=hfSDcA/VFf5O36XZ1jIbDeiIvlPOe5N0iYnQa5D5SVg=;
	h=From:To:Subject:Date:Message-Id;
	b=t1eNKwdNkdxpN9No500r29bu7yYNQ2z7Zrz4TbfHKKyezj1V0m1iQu2Tc7fQbCn6N
	 7Ey9ClwM6BPVKgE6F+uhHj+9WRD4tArL8JzFEY50vxtHeCEx+XeO6yXLM0NCbm0dpG
	 oCvgwe7LPq9gERrdCpZG+Gt+FEv48ZFg/9EQJgqg=
X-QQ-mid: esmtpgz16t1785375274t3acecaf0
X-QQ-Originating-IP: X5oLlTctQUdXjKL/rw91uokVl8GApvH9Oj8uKXfgQ6Q=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 30 Jul 2026 09:34:29 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8251710835051600933
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 5/6] drm/rockchip: cdn-dp: Support handle lane info without extcon
Date: Thu, 30 Jul 2026 09:33:48 +0800
Message-Id: <20260730013349.51-6-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260730013349.51-1-kernel@airkyi.com>
References: <20260730013349.51-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MyIXMys/8kCtyIOyauqTnT3UnrNuD9Rc5CFE+u3OZyb+ddIE55WfmpUK
	YtK8+Rixb94+GxtUXo80V1OcSluQduXqthHdey0sva8d3bet/EkhyDyp03PcU+cpbAADHb1
	vze08x/NRWG9BdOhUsjhRbXOJiKQ/l2yDAdna7xsk18ybCYYDvOoVREPvGftf84FqW/GvrV
	n/rtLLDz5k1RJJRBtdd2qCcuSTEMS4L46J7R1s7zRxOX48yknPq0Mh5Cz30uMrTbz3UxlB5
	oiIAWR9Evknxsc5QkGQr29XifBMRCEEc+IjSzcHukufg6huUFbP48mD5onrHQMo/BpREEIz
	5ya3fdpR7JGl4GfpFRZ1K5P76kxu6y0PzxqCDz9rFJcAaPMkNWhbconQ0AsnkUC7CDcr42h
	havOjiglClb9RmWlS/Rb2kfyykpjEqyETswzjKNTosvd+J4/dAE7I4YDD+nYGQZ0KiHyEQB
	b6AF2RDbBaUuObCM7BF1DMI2D5WVOyO5kWmDfDHNcMwDcdU7e4YVn0GVlHgSLdzYRLItkwn
	QdQLf/riR0nngnrA9UayeS9chMj76rtTrXPRmSY6UmX4Y+958RmL7xnQ0SkoRq+h7Ncswjp
	duQAHcaFZa5/9hjHjG2y8+q9RidJVWHxtwn2i8xM2eYfa9fcSdIpe20xhQmSbzEVdKOnlEe
	5T7jZYW0px5W3gXe9YD3fN4JPjYy4aX1BQZjobpBEX6+phEvR8CdzixJ59FNL2VuFrN2a12
	81fVaAg/7U7Aoh0p4/sArpvaIei866GmYhIVe1BEh+rObmM8qCJgZTqxOb59sAEiCgwiMxJ
	XkfjoT1r/h99Po8L324vX8d3rtBpLc+niyNnNpWu/Pd8OBLEYpas82b/em0EvIMw6K5ABPh
	o6/62fHswLymIJVuK82RRR9OYU4TGW97IaNJH/3ahH0oVBK6J91n8KY5r6sTt7ytl1sm6Bp
	mp2vncuP3XP/M/ogDrUX940PkPW0OguxVWaEox6sGO+yP/b5fC3yAq6VoGXAzWhY+u119/Y
	d2KLJLhQ==
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_183525_080693_AD34772A 
X-CRM114-Status: GOOD (  15.38  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This patch add support for get PHY lane info without help of extcon.

There is no extcon needed if the Type-C controller is present. In this
case, the lane info can be get from PHY instead of extcon.

The extcon device should still be supported if Type-C controller is
not present.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---

(no changes since v1)

---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 190cce9530c8..74e1f5422a6e 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -157,6 +157,9 @@ static int cdn_dp_get_port_lanes(struct cdn_dp_port *port)
 	int dptx;
 	u8 lanes;
 
+	if (!edev)
+		return phy_get_bus_width(port->phy);
+
 	dptx = extcon_get_state(edev, EXTCON_DISP_DP);
 	if (dptx > 0) {
 		extcon_get_property(edev, EXTCON_DISP_DP,
@@ -220,7 +223,7 @@ static bool cdn_dp_check_sink_connection(struct cdn_dp_device *dp)
 	 * some docks need more time to power up.
 	 */
 	while (time_before(jiffies, timeout)) {
-		if (!extcon_get_state(port->extcon, EXTCON_DISP_DP))
+		if (port->extcon && !extcon_get_state(port->extcon, EXTCON_DISP_DP))
 			return false;
 
 		if (!cdn_dp_get_sink_count(dp, &sink_count))
@@ -386,11 +389,14 @@ static int cdn_dp_enable_phy(struct cdn_dp_device *dp, struct cdn_dp_port *port)
 		goto err_power_on;
 	}
 
-	ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
-				  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
-	if (ret) {
-		DRM_DEV_ERROR(dp->dev, "get property failed\n");
-		goto err_power_on;
+	property.intval = 0;
+	if (port->extcon) {
+		ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
+					  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
+		if (ret) {
+			DRM_DEV_ERROR(dp->dev, "get property failed\n");
+			goto err_power_on;
+		}
 	}
 
 	port->lanes = cdn_dp_get_port_lanes(port);
@@ -1027,6 +1033,9 @@ static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
 	for (i = 0; i < dp->ports; i++) {
 		port = dp->port[i];
 
+		if (!port->extcon)
+			continue;
+
 		port->event_nb.notifier_call = cdn_dp_pd_event;
 		ret = devm_extcon_register_notifier(dp->dev, port->extcon,
 						    EXTCON_DISP_DP,
@@ -1119,14 +1128,14 @@ static int cdn_dp_probe(struct platform_device *pdev)
 		    PTR_ERR(phy) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
 
-		if (IS_ERR(extcon) || IS_ERR(phy))
+		if (IS_ERR(phy) || PTR_ERR(extcon) != -ENODEV)
 			continue;
 
 		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 		if (!port)
 			return -ENOMEM;
 
-		port->extcon = extcon;
+		port->extcon = IS_ERR(extcon) ? NULL : extcon;
 		port->phy = phy;
 		port->dp = dp;
 		port->id = i;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
