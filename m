Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6EF7CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 22:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfklVxXwbccyushierJzJfOPxTDpHH9Xa22ZiMSYKSs=; b=aVh3bM6qhbSjGH
	Dq1QPVdUCo+wXsg6ee9utPA0wZj4PDPUwfwmk8MxVHF3bq0MR9zwRpQszIrtM7wyKETyhcSRCRgep
	5VJyCtrg/PnWHUNWSEapLWTOcOZOgALVgO907qzYrOFE5L9O+iC0EgKtcvWIElFnEZaY8m8fXVdne
	+AwAOIeNkEX1IGFJPlD6d/XQabbBvm3GWOOEVXq4hBuShfGHWsa6b7Icaz5SJxMHIhT2oAzyKPNNX
	CTyQlpGMl++UU+TqXVjxNJ6LX8mkRKh90SKA2CMm3mDi5bJJ0l/q5kMGrvznwz4Asp3KX9eGTpbOC
	VPeCMSeuSoMhigvMGSxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVgB-0000000ErwF-1rUd;
	Mon, 27 Oct 2025 22:27:07 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVg4-0000000ErrU-3Y4o;
	Mon, 27 Oct 2025 22:27:02 +0000
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 5CD0B19A2;
	Mon, 27 Oct 2025 23:25:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761603910;
	bh=Tl8MZUMZp7jla1zpWzpw3mApleIVFgmxEnRsDh+ZjEs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T1QJEk/H1QNweG/LbaYxMNhJXFEtps0BFWR83uHG4Cnha3p3/l0iK5DRdairvSbwQ
	 cPi7zb/RyzoQajf1Wl3NKyOGzAfGuC0KFARwJocO6HGiTg7wCukmqEC1cDt3ghYvVX
	 FNx7tycfue2/Pv2zzHBjMWpzUUNhU7Gavz7LVYL4=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/2] drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main struct
Date: Tue, 28 Oct 2025 00:26:41 +0200
Message-ID: <20251027222641.25066-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_152701_027421_822C09D6 
X-CRM114-Status: GOOD (  15.00  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

The name of the enable_gpio member in struct rockchip_hdmi_qp is too
generic, as initially "borrowed" from downstream BSP code. Moreover,
this hasn't been really in use so far, since there is neither a DT
providing an "enable-gpios" property to any of the "hdmi" nodes, nor a
binding documenting it.

The actual purpose of this GPIO line is to control the voltage bias for
the HDMI TX data lines when switching between TMDS and FRL operating
modes.

A previous patch introduced the "frl-enable-gpios" property of the
RK3588 HDMI TX Controller binding, hence pass the updated string to
devm_gpiod_get_optional(), rename the struct member accordingly and set
it to a low level.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v2:

- Rename tmds-enable to frl-enable
- Acquire the GPIO with GPIOD_OUT_LOW
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 931343b072ad..36363136a695 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -92,7 +92,7 @@ struct rockchip_hdmi_qp {
 	struct rockchip_encoder encoder;
 	struct dw_hdmi_qp *hdmi;
 	struct phy *phy;
-	struct gpio_desc *enable_gpio;
+	struct gpio_desc *frl_enable_gpio;
 	struct delayed_work hpd_work;
 	int port_id;
 	const struct rockchip_hdmi_qp_ctrl_ops *ctrl_ops;
@@ -118,7 +118,7 @@ static void dw_hdmi_qp_rockchip_encoder_enable(struct drm_encoder *encoder)
 	unsigned long long rate;
 
 	/* Unconditionally switch to TMDS as FRL is not yet supported */
-	gpiod_set_value(hdmi->enable_gpio, 1);
+	gpiod_set_value(hdmi->frl_enable_gpio, 0);
 
 	if (crtc && crtc->state) {
 		rate = drm_hdmi_compute_mode_clock(&crtc->state->adjusted_mode,
@@ -515,11 +515,11 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	plat_data.ref_clk_rate = clk_get_rate(ref_clk);
 	clk_put(ref_clk);
 
-	hdmi->enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
-						    GPIOD_OUT_HIGH);
-	if (IS_ERR(hdmi->enable_gpio))
-		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->enable_gpio),
-				     "Failed to request enable GPIO\n");
+	hdmi->frl_enable_gpio = devm_gpiod_get_optional(hdmi->dev, "frl-enable",
+							GPIOD_OUT_LOW);
+	if (IS_ERR(hdmi->frl_enable_gpio))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->frl_enable_gpio),
+				     "Failed to request FRL enable GPIO\n");
 
 	hdmi->phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
 	if (IS_ERR(hdmi->phy))
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
