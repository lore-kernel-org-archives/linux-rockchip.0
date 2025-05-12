Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86F12C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 13:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIiYTQZ3iVU+lTXU7g2djjhdwEqLtpbeE4RBgbIPfjQ=; b=IHbOV5G8wlQzhs
	6l8KEGPh4BDIl4zbH/5r+TAVC4fB6mJ12/Q239/m3ikSpLb/bZ8WJiyaMymTCoRSAsMU2JuSISUKx
	YyE+UzUrlOHtbaE33JbTKzCqWDng/u0QEx8BrERT15ID7s80P9zx1pXLq0I2rNcduRVHYWGLjCJme
	JP80aeSipMGrv2tEIXpP3WP+MGTSpmBsD/SvdOZ9W+v94MoeUtk8KbJzcU1ei6Ncl7E8QF2wa78t5
	+yZrMlQ5mo8qihY8jLk45Q/GiMT8+ThrdhYlzmaTTYwu2mte1FgPcTHD6Cu9BlDEdo9+kMJpqCyB4
	0Y9Z+s4DB2hPEOCQkukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESoK-00000009Tfi-1Ihr;
	Mon, 12 May 2025 13:03:12 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESZ0-00000009QZ6-1zfC;
	Mon, 12 May 2025 12:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Rk
	lIkmPrOmsT98b/PoJKEZlaxWXv3nBZ0SUzoEELd/Y=; b=SyabuS8OJkdWRTSru6
	CLzuLZvTm+YP3ZkThzxcfpGyu+kKt4UD0vJQoH3fjUSajZrNgZFSzcA50aWc7h1g
	tXT38zqg/nEqkyPtrUDzTifxXlMpWqsbtQHCmHI7pYs1fvECQDc/IloTt1jQRHxM
	H3wFyyFaAnVLVe+MkL7yJv190=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgC3chWY7SFoQ+_OAQ--.62400S7;
	Mon, 12 May 2025 20:46:27 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	hjc@rock-chips.com,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 05/10] drm/rockchip: inno_hdmi: Move ddc/i2c configuration and HOTPLUG unmute to inno_hdmi_init_hw
Date: Mon, 12 May 2025 20:46:06 +0800
Message-ID: <20250512124615.2848731-6-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250512124615.2848731-1-andyshrk@163.com>
References: <20250512124615.2848731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PigvCgC3chWY7SFoQ+_OAQ--.62400S7
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFW3Zw1rJF48KF43Cw45ZFb_yoW8Kr47pr
	ZxCF15tr4fGFy8Xr17ZF1kArZIya4fJ3WYkrWxGw1Syr1UWr9Ykr93AFWfXF98ArWxZ3Z3
	trWkKay5Wa4jvaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07je38nUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g5LXmgh5MDG2wAAs5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_054722_861677_706D3D71 
X-CRM114-Status: GOOD (  12.07  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Putting these scattered initialization code together is helpful
for the following migration to the DRM bridge driver mode.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v5:
- Split from PATCH 9/10

 drivers/gpu/drm/rockchip/inno_hdmi.c | 30 ++++++++++++++--------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 2d41cf59752f2..82f2904ed7a3b 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -620,6 +620,21 @@ static void inno_hdmi_init_hw(struct inno_hdmi *hdmi)
 	hdmi_modb(hdmi, HDMI_SYS_CTRL, msk, val);
 
 	inno_hdmi_standby(hdmi);
+
+	/*
+	 * When the controller isn't configured to an accurate
+	 * video timing and there is no reference clock available,
+	 * then the TMDS clock source would be switched to PCLK_HDMI,
+	 * so we need to init the TMDS rate to PCLK rate, and
+	 * reconfigure the DDC clock.
+	 */
+	if (hdmi->refclk)
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->refclk));
+	else
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
+
+	/* Unmute hotplug interrupt */
+	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
 }
 
 static int inno_hdmi_disable_frame(struct drm_connector *connector,
@@ -1299,27 +1314,12 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		goto err_disable_clk;
 	}
 
-	/*
-	 * When the controller isn't configured to an accurate
-	 * video timing and there is no reference clock available,
-	 * then the TMDS clock source would be switched to PCLK_HDMI,
-	 * so we need to init the TMDS rate to PCLK rate, and
-	 * reconfigure the DDC clock.
-	 */
-	if (hdmi->refclk)
-		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->refclk));
-	else
-		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
-
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)
 		goto err_put_adapter;
 
 	dev_set_drvdata(dev, hdmi);
 
-	/* Unmute hotplug interrupt */
-	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
-
 	ret = devm_request_threaded_irq(dev, irq, inno_hdmi_hardirq,
 					inno_hdmi_irq, IRQF_SHARED,
 					dev_name(dev), hdmi);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
