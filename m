Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43577C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRYblI/TrVwkB9oRNjAEFod4Z0gUs3jyppD0rb+MiFU=; b=dSk52uELpl2kbw
	ageA9v959xOc8rDkFCFbm6SCp1cszgU0BDfFMovJUkzsuidmn+/3qtPtaNqj664ZkjXdIa6j6tUVd
	Za7McMVm/gZ7yisvkYDSbMKSh9cVu9Ba0h+2IFKWV5AB6XI75Yy5Hx6OV0ShWQ+70J9RfvDAb+Qlh
	N0Km8Y2N52TpU5WWUc+YEcijw45IUbmi7ThBYqtS3tqzNuaJk2jeDGPmCaZxc1M9FchPgw5bOukmt
	jUAWyzK3L5FC4NA3pFR4rWy1AjQEP9B0L3m1aSvLwe+3YpRxF1xOkpRY189vYM5wc9gsaxN7mC6h6
	IABXW5Ll5xsI4g1nOQAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxoiw-0055gl-3k; Thu, 16 Dec 2021 11:14:58 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohO-0054nv-DA; Thu, 16 Dec 2021 11:13:25 +0000
Received: by mail-io1-xd36.google.com with SMTP id q72so34615341iod.12;
 Thu, 16 Dec 2021 03:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zA35Y58P12mhcmBAnqxZhkfn5G9++KfvTLXr1jNa/3g=;
 b=Wpj6JpNbY4toi6asLPHJ0NqpzgGTyBIYS9Zu6dCzMA6okbyL4N1gumkMWy3CpcHN8W
 0PkTE6a1ysgWan5/04BZvQ7H9+eQkbFjfv+TQpu43al1wd2aQiHkJKxt/LNnitevToif
 e6i15tW+f1ou4ceEs3IbVWpiaypshsT4YHJEPcLUwhRKKVqX5Z97VRAnqLyrlLqERHKi
 O6oybSsFcJrYj/pvwD9g8rbuwBWRbCu/PBlUgrSWqDsfOLgWlhXbPMgSoAd8W32WYx5z
 MRScvxF1Axav9lrH4R/JG16s6Cq8nSB5eGJsbqpJkG7B9A8T8LVs6kYfXbOcabOr8o2U
 3LCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zA35Y58P12mhcmBAnqxZhkfn5G9++KfvTLXr1jNa/3g=;
 b=FKr3cq2EK6EC8vEgH87fMIikuvRcfsTG0a1OaL0IeinT0ynsI3+TghLex0HuaAtA9/
 +NmPK21pyRD49HTOmiJjrJUllP5Vou9jzI2iRmS9ljiVgH3p2zuAmokna+PmbLF4zpaA
 o8LdrKTvkfWBeNp6TcUNbsMtndrxVGPsZn2lQRdX4wQFYOx72QlWxADOltsrDiNeueb1
 NwAvY4Mm3yoDRnKw7Z7kIIyhupln2pyETFoL2rtDLDcGIV4ayNYv3pHkgR569gtI6PIh
 d98exP4K8Fs7PGYrbAwGUpF9CcT9GnW89o4llf4Gp8gsj242IQ2f7/rno6pgP78vI/jf
 u+qg==
X-Gm-Message-State: AOAM532qn9XqZDzYuPISEQ+20cBpjON7X6NXaDRWv1g030RchuCWP/Dw
 HGcS7YMosvGsgEMGEhnU+no=
X-Google-Smtp-Source: ABdhPJwS//YoEd7z38TZ/77rCtudvYnPhuNSMd60j6th3NYtYFTK2kAr2wRekpxqi9HyVzeT56QnKA==
X-Received: by 2002:a6b:b5c3:: with SMTP id e186mr8984442iof.207.1639653200913; 
 Thu, 16 Dec 2021 03:13:20 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:20 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V2 03/10] soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl
Date: Thu, 16 Dec 2021 05:12:48 -0600
Message-Id: <20211216111256.2362683-4-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031322_511904_3C8B2030 
X-CRM114-Status: GOOD (  17.32  )
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
Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
index 519b3651d1d9..a7c12e8fa89b 100644
--- a/drivers/soc/imx/imx8m-blk-ctrl.c
+++ b/drivers/soc/imx/imx8m-blk-ctrl.c
@@ -14,6 +14,7 @@
 #include <linux/clk.h>
 
 #include <dt-bindings/power/imx8mm-power.h>
+#include <dt-bindings/power/imx8mq-power.h>
 
 #define BLK_SFT_RSTN	0x0
 #define BLK_CLK_EN	0x4
@@ -498,6 +499,68 @@ static const struct imx8m_blk_ctrl_data imx8mm_disp_blk_ctl_dev_data = {
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
+	 * VPU bits. In order to set the G2 fuse bits, the G2 clock must
+	 * also be enabled.
+	 */
+	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, BIT(0) | BIT(1));
+	regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(0) | BIT(1));
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
@@ -505,7 +568,10 @@ static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
 	}, {
 		.compatible = "fsl,imx8mm-disp-blk-ctrl",
 		.data = &imx8mm_disp_blk_ctl_dev_data
-	} ,{
+	}, {
+		.compatible = "fsl,imx8mq-vpu-blk-ctrl",
+		.data = &imx8mq_vpu_blk_ctl_dev_data
+	}, {
 		/* Sentinel */
 	}
 };
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
