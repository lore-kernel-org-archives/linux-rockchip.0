Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A34D1C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Dec 2021 18:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vixIqzQs7Y/kBFHT3U71q3xoiw7dHw/N2E/0AJE7/pw=; b=I2cQp6ID4A+3i/
	SXaL6Ir/8vdkt2eyURdqeMoKiYpoN/ug/as5riXOXJUoD2JYHVRYn8xR0Pw/io2Jn4ANzkFmHRLV7
	leJ0YgYSR0K8Ar/m/AFY6QXo64gFHzAB5n0w4omyeHnAydhO3VXzE/hdFGyOrriHSeodjkS3iliA+
	g7wiNH1xAIhUg6kdNRkT2OtBt6VSX3LRcieZUI4ackaYJe5scmoEiKtPMWxz9Vi9uVn0e5Oq9wDpz
	AgPQhsQo5hGb3F+FeHogvQe+JvY/6nmnmBVHoaeWl+H3fl/xJKM5cOvrvlx3EQfGCiG4THpB2ajBi
	ZNcDbZPzMxfWjHQm0kbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtw52-001q4y-FB; Sun, 05 Dec 2021 18:17:44 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtw42-001paT-6e; Sun, 05 Dec 2021 18:16:44 +0000
Received: by mail-il1-x130.google.com with SMTP id t8so8076149ilu.8;
 Sun, 05 Dec 2021 10:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gTzpcmEs2Hk1AEPi3IIm1xVjZo9fqCrWWz1Ibe9SDvY=;
 b=kXHsMwYzGvY5oMXFD1fJ0SQCElcdbycIMsQIL9kKAs5TkJnQwtm0yWTLs6ZwaeUQMx
 H3dmpMlZ088vkNr/7a+WTT0os/IuMRE7SDmAvqv2dVJA56FW31YCYB9RUSnZwbVPxPPi
 7EQH2h9cuzbCf4GOGuCNUtkVzC5xVFD0sQloJvj9YsE8GcIotN4box0VO5OZ6e5WGoMD
 gc0lxpHkP5PelShakb5tiHvAqvERPSWeRAMXh3R01GoMHOBa1QnLKGgAL2Km7bV0uGuf
 P811mdslTnYzOSTvLNHhaZYoUDJu42MnMrXCcj5iB4nBs1RbGghUfffXpBSAlf2Ik0Bt
 hLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gTzpcmEs2Hk1AEPi3IIm1xVjZo9fqCrWWz1Ibe9SDvY=;
 b=QjFCzBKUTOMUcSdXEMzNPVDqSgR+RLPJ05t+h21kUdu0vmg4Z/on1Aw5fsR5hE4dhu
 tNE3Y1bzVPcYqhKHJXXWZPXCqDVkLmD/JZME9yib2mZjjrYkhy3dNGAJ6eH8YgCLlkLB
 f9ezq50VTk2kx8R3wXE5EAzzT/vv6yWasuw2FOApMiv8rhJo5wei0TnibyvNV8AG0Era
 7dVkgCI84fItQdBsWdPQNN328JLtouOqz/eynu/nqo14wGavEGZyyvTF+tImgZymiAe1
 nVYzHz8G1C2LOBYedHPwDp1JUQ/IBJrVnfmN9kbQN10SKIwpdzt588MW4M1GT/FNw5yb
 mObA==
X-Gm-Message-State: AOAM531U0ikskk/l3sznki7GKLvn7CRA+RvRa2C2GQkSQtQ0i88HFm21
 5YGPV0Kimi9Cjk+Xr6lUoY0=
X-Google-Smtp-Source: ABdhPJxdQrwwPjtDdFWdI6vQBp6tDzf6SdOvp0wgYXXjf8/BEMgksN9cf4pf2idLgcZ6XQj7YKnQYw==
X-Received: by 2002:a05:6e02:1be9:: with SMTP id
 y9mr30066944ilv.219.1638728201435; 
 Sun, 05 Dec 2021 10:16:41 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:9ea0:bb99:b16a:6159])
 by smtp.gmail.com with ESMTPSA id z12sm5808164ilu.27.2021.12.05.10.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Dec 2021 10:16:41 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com, nicolas@ndufresne.ca,
 Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC 3/5] soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl
Date: Sun,  5 Dec 2021 12:16:16 -0600
Message-Id: <20211205181618.1041699-4-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211205181618.1041699-1-aford173@gmail.com>
References: <20211205181618.1041699-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_101642_321020_F78236D0 
X-CRM114-Status: GOOD (  19.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the necessary bits to drive the VPU blk-ctrl on the i.MX8MQ, to
avoid putting more of this functionality into the decoder driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/imx8m-blk-ctrl.c | 67 ++++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 519b3651d1d9..66c879bcc66b 100644
--- a/drivers/soc/imx/imx8m-blk-ctrl.c
+++ b/drivers/soc/imx/imx8m-blk-ctrl.c
@@ -14,6 +14,7 @@
 #include <linux/clk.h>
 
 #include <dt-bindings/power/imx8mm-power.h>
+#include <dt-bindings/power/imx8mq-power.h>
 
 #define BLK_SFT_RSTN	0x0
 #define BLK_CLK_EN	0x4
@@ -498,6 +499,69 @@ static const struct imx8m_blk_ctrl_data imx8mm_disp_blk_ctl_dev_data = {
 	.num_domains = ARRAY_SIZE(imx8mm_disp_blk_ctl_domain_data),
 };
 
+static int imx8mq_vpu_power_notifier(struct notifier_block *nb,
+				     unsigned long action, void *data)
+{
+	struct imx8m_blk_ctrl *bc = container_of(nb, struct imx8m_blk_ctrl,
+						 power_nb);
+
+	if (action != GENPD_NOTIFY_ON && action != GENPD_NOTIFY_PRE_OFF)
+		return NOTIFY_OK;
+
+	/*
+	 * The ADB in the VPUMIX domain has no separate reset and clock
+	 * enable bits, but is ungated and reset together with the VPUs. The
+	 * reset and clock enable inputs to the ADB is a logical OR of the
+	 * VPU bits. To avoid putting a improperly reset decoder on the bus
+	 * while making the ADB work, we release G2 from reset, but only
+	 * enable clocks to G1.
+	 */
+	regmap_update_bits(bc->regmap, BLK_SFT_RSTN, BIT(0) | BIT(1), BIT(0));
+	regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(1));
+
+	if (action == GENPD_NOTIFY_ON) {
+		/*
+		 * On power up we have no software backchannel to the GPC to
+		 * wait for the ADB handshake to happen, so we just delay for a
+		 * bit. On power down the GPC driver waits for the handshake.
+		 */
+		udelay(5);
+
+		/* set "fuse" bits to enable the VPUs */
+		regmap_set_bits(bc->regmap, 0x8, 0xffffffff);
+		regmap_set_bits(bc->regmap, 0xc, 0xffffffff);
+		regmap_set_bits(bc->regmap, 0x10, 0xffffffff);
+	}
+
+	return NOTIFY_OK;
+}
+
+static const struct imx8m_blk_ctrl_domain_data imx8mq_vpu_blk_ctl_domain_data[] = {
+	[IMX8MQ_VPUBLK_PD_G1] = {
+		.name = "vpublk-g1",
+		.clk_names = (const char *[]){ "g1", },
+		.num_clks = 1,
+		.gpc_name = "g1",
+		.rst_mask = BIT(1),
+		.clk_mask = BIT(1),
+	},
+	[IMX8MQ_VPUBLK_PD_G2] = {
+		.name = "vpublk-g2",
+		.clk_names = (const char *[]){ "g2", },
+		.num_clks = 1,
+		.gpc_name = "g2",
+		.rst_mask = BIT(0),
+		.clk_mask = BIT(0),
+	},
+};
+
+static const struct imx8m_blk_ctrl_data imx8mq_vpu_blk_ctl_dev_data = {
+	.max_reg = 0x14,
+	.power_notifier_fn = imx8mq_vpu_power_notifier,
+	.domains = imx8mq_vpu_blk_ctl_domain_data,
+	.num_domains = ARRAY_SIZE(imx8mq_vpu_blk_ctl_domain_data),
+};
+
 static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
 	{
 		.compatible = "fsl,imx8mm-vpu-blk-ctrl",
@@ -505,6 +569,9 @@ static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
 	}, {
 		.compatible = "fsl,imx8mm-disp-blk-ctrl",
 		.data = &imx8mm_disp_blk_ctl_dev_data
+	} ,{
+		.compatible = "fsl,imx8mq-vpu-blk-ctrl",
+		.data = &imx8mq_vpu_blk_ctl_dev_data
 	} ,{
 		/* Sentinel */
 	}
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
