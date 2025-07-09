Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56459C83F10
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 22:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0tl0QHWgUlnSbK1W1SIkbjcNpkXp30kZsf/b8jUU0g=; b=eoPZ+VPks4Ao5l
	L0PJhhCMEfPS/zkKaWVaasyt7LEv92Ijqy3JwbeKG/ZYAZ3WxB4MI6UrUONxBg+MqZwMVzGQLkC3M
	NwnFZftXtqFFKkcOvFqduNHO4n6ZhpVxkjoLytV25L7VEtu0uGqVHH+40unPZWszU40XY4JVq17Oh
	VHUzrhRKyPTzKtSbQsExPqQnLCtX2v5XxZubIrO9pPv7C0WzzHBpJ90qIuivgeH5efoOVymso0Gz1
	DLn3U/p+8VIdgL4DQyY6BjzlcVNc2b+SBADiqKvjTnDzK4GoSy2OrGzTzdMzU0g+k9LG7dQUrNMOD
	w47a/4oaeSzyVsMtMfFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZdiT-0000000A8TL-37iH;
	Wed, 09 Jul 2025 22:56:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZbv1-00000009r1O-3odQ;
	Wed, 09 Jul 2025 21:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752094889;
	bh=7aEBmbIctPTphfD3Xtu6xLbliB7cG+WRDnCSkYDNRTA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BwrI/dYREpuQIHkepkAbbXnxy1RRxot8rfxJaLbhrdv+gaJwws3y9ZNW4xeH6ti5z
	 bEHv3PG9aZohtsbWBNoT/fN3/2HeG7YzYUzCOMmrg3zak9aVesqzaSIuUK0zOd8z2a
	 0G25zp0rhIptk08Mi05sZIg+s+7002Rh7FVMhSKqh+IxscqYjYV0BBNqbuNul05b4B
	 ZlQCQYWEem3aXH7ZM0ir2BrDb7Q9VOfllheP8JGAPLaowIgkOt35XqBaVJwZAWQAOH
	 iNx062tJXEsma5u/dI4/h4DePHEx03RE/+vLYPVAqlcRzoh6tMgCp2ZwIXVQYhJvnj
	 yj8/m1Q/L1/Bg==
Received: from localhost (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id C4B0117E04AA;
	Wed,  9 Jul 2025 23:01:29 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 10 Jul 2025 00:01:13 +0300
Subject: [PATCH v2 2/6] drm/bridge: dw-hdmi-qp: Fixup timer base setup
MIME-Version: 1.0
Message-Id: <20250710-rk3588-hdmi-cec-v2-2-f5884be34bc1@collabora.com>
References: <20250710-rk3588-hdmi-cec-v2-0-f5884be34bc1@collabora.com>
In-Reply-To: <20250710-rk3588-hdmi-cec-v2-0-f5884be34bc1@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_140132_113202_AA430E55 
X-CRM114-Status: GOOD (  13.72  )
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

Currently the TIMER_BASE_CONFIG0 register gets initialized to a fixed
value as initially found in vendor driver code supporting the RK3588
SoC.  As a matter of fact the value matches the rate of the HDMI TX
reference clock, which is roughly 428.57 MHz.

However, on RK3576 SoC that rate is slightly lower, i.e. 396.00 MHz, and
the incorrect register configuration breaks CEC functionality.

Set the timer base according to the actual reference clock rate that
shall be provided by the platform driver.

While at it, also drop the unnecessary empty lines in
dw_hdmi_qp_init_hw().

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 11 ++++++++---
 include/drm/bridge/dw_hdmi_qp.h              |  1 +
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index cfe8171b2183874517f583f284f7728fe1613c91..5d252800168aa4f3c10f458631795de8912e29d4 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -161,6 +161,7 @@ struct dw_hdmi_qp {
 		void *data;
 	} phy;
 
+	unsigned long ref_clk_rate;
 	struct regmap *regm;
 
 	unsigned long tmds_char_rate;
@@ -1222,13 +1223,11 @@ static void dw_hdmi_qp_init_hw(struct dw_hdmi_qp *hdmi)
 {
 	dw_hdmi_qp_write(hdmi, 0, MAINUNIT_0_INT_MASK_N);
 	dw_hdmi_qp_write(hdmi, 0, MAINUNIT_1_INT_MASK_N);
-	dw_hdmi_qp_write(hdmi, 428571429, TIMER_BASE_CONFIG0);
+	dw_hdmi_qp_write(hdmi, hdmi->ref_clk_rate, TIMER_BASE_CONFIG0);
 
 	/* Software reset */
 	dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
-
 	dw_hdmi_qp_write(hdmi, 0x085c085c, I2CM_FM_SCL_CONFIG0);
-
 	dw_hdmi_qp_mod(hdmi, 0, I2CM_FM_EN, I2CM_INTERFACE_CONTROL0);
 
 	/* Clear DONE and ERROR interrupts */
@@ -1254,6 +1253,11 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 		return ERR_PTR(-ENODEV);
 	}
 
+	if (!plat_data->ref_clk_rate) {
+		dev_err(dev, "Missing ref_clk rate\n");
+		return ERR_PTR(-ENODEV);
+	}
+
 	hdmi = devm_drm_bridge_alloc(dev, struct dw_hdmi_qp, bridge,
 				     &dw_hdmi_qp_bridge_funcs);
 	if (IS_ERR(hdmi))
@@ -1273,6 +1277,7 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 
 	hdmi->phy.ops = plat_data->phy_ops;
 	hdmi->phy.data = plat_data->phy_data;
+	hdmi->ref_clk_rate = plat_data->ref_clk_rate;
 
 	dw_hdmi_qp_init_hw(hdmi);
 
diff --git a/include/drm/bridge/dw_hdmi_qp.h b/include/drm/bridge/dw_hdmi_qp.h
index b4a9b739734ec7b67013b683fe6017551aa19172..76ecf31301997718604a05f70ce9eab8695e26b5 100644
--- a/include/drm/bridge/dw_hdmi_qp.h
+++ b/include/drm/bridge/dw_hdmi_qp.h
@@ -24,6 +24,7 @@ struct dw_hdmi_qp_plat_data {
 	void *phy_data;
 	int main_irq;
 	int cec_irq;
+	unsigned long ref_clk_rate;
 };
 
 struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
