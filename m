Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39B79CF2598
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 02:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24Hcgo6UgQgyMTns0vTGMbao+J2RlZANP1cf+eJEMGw=; b=StDHB+ZEaamvZL
	Ws+NdsD0tdLOVMm4khdsOiX8s0G9GvafkBPX2RwUswM7ozMqZmDdZKkFboGr9nBK3Hj94ypGb9Ssu
	OYN+cIiLDSuXraq/y/F1/LsxNL10MIQdaczbT+z1FRKAXcumpWP4CW6Ul01RtYGZDJsobqcgJmKta
	foWQJUCL3CjmY7JFCru7F21JkxyxUzkCEWAQQgQ+oRbZojfsMy1PU5+ShlbxJdrOptMBpE6muITjq
	u9FSNivWTKWb2uZBHBTJ3wss8UIcMg12A1WQ8FpymqYTXTxDFoVPGAFqOiluhGBX79cxjK1n7sbQW
	+kc35VVU2u19/0HL7Pww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0AV8-00000003WWQ-1TaN;
	Mon, 14 Oct 2024 02:08:02 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ARA-00000003W2T-0JZ3;
	Mon, 14 Oct 2024 02:03:57 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e2ee0a47fdso583162a91.2;
        Sun, 13 Oct 2024 19:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728871434; x=1729476234; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+2YzuGjZ565Z5EeBQaZ+urP/hWGuLNc2EAXI5cnfwg=;
        b=euen4GqJZrPyjcrHd8cCsKL6OfprHmg2UHBaWbJvTz99Xv9iFcQSrr+PmifNsXQlty
         bxvqFjGkLCUr5kAXkmuFFapFHxCefrjRo1HyqFECmFbVYsMQVSSgIUkimwvm4p0x1019
         +qdkRaCyEpHcLMtBgoLhiC+Sd5pF1u58YHKjxmKSmYjYzF7tc4U666ARMFblljxdUFSa
         HbdkE6qrJ4zVWzwdtmQ95gJXco6pAyFCxsSKXAbOXw2OJLo1aF0qizK2e7kVSBuQYgvw
         J4LCnhoZf15USwbcS+DWiYv1sq1LqmcZNUeoJQIDcEaeQMvfjFjn0jFOPWRLiFE3coj0
         ZVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728871434; x=1729476234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+2YzuGjZ565Z5EeBQaZ+urP/hWGuLNc2EAXI5cnfwg=;
        b=GrIcWQ8i05VHyxbHHiGH2x4OfxKBF/bmCx4cIwyRZFBEAHHCXXQApfYGrNBqIvwM7F
         1n02fStfDDKKr7zcsZnGADKlf1f75B9PRCJWLgAWjzPP8oOUPTYlbbO503FuXOqGbFWm
         1todMxPiTrRcmVm90DkomjyiajcBG+Knk7hrSq+hV6YzliXGE3iyjwVWCioej2y+B2b1
         blcXrSzR41V0mRER8ZNXtQPRYwHaR3z8bNz5OYpgic3B/4+s+Li9DkC3N4tEifbJ06gh
         zvbtV7GOpM3z2bgZiPyosKMXNpkrzS5eh/ggK6chJOd4K0X31iHTBj6MtwGrvAd68o2J
         z3Ng==
X-Forwarded-Encrypted: i=1; AJvYcCWSkvI/glE6m0nSXefRsZ5VnuKnvQ0Vwprq24Gkmt+JEYL1KhUSS0nhJJmecNKVX+PStrXntiUMfdqzGXuTgDHN@lists.infradead.org, AJvYcCXBhPjbeQHnMnBsGq3AdIu9yUNIKBdu82Vy02Jidw1x+xH4csQPAyQ1EqVLWTew/3bDp8rB/tAccw+uMKIDq0s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0BHTzOvuSyzoBU760mnGV2VjT+i2UKEmWt5NlOiABT+lFEQ9W
	X5nkDEYpovjtcb0c2ctJLVC0ypYvGGgiaNXo0Xz46bEyIpTHhAEK
X-Google-Smtp-Source: AGHT+IE1JknVkl8aB3x0qAHKQ1IbUEKDSAyXDczd7Q2+7yIAncdz3a+o0R1siny/KGDn4RTjKuAIbg==
X-Received: by 2002:a17:902:e845:b0:20c:92ce:35b3 with SMTP id d9443c01a7336-20ca1429fdbmr55505965ad.2.1728871434562;
        Sun, 13 Oct 2024 19:03:54 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1a59asm55794795ad.113.2024.10.13.19.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 19:03:54 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	yubing.zhang@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 2/2] phy: rockchip: usbdp: add rk3576 device match data
Date: Mon, 14 Oct 2024 10:03:42 +0800
Message-Id: <20241014020342.15974-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241014020342.15974-1-frawang.cn@gmail.com>
References: <20241014020342.15974-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_190356_142605_25CD4543 
X-CRM114-Status: GOOD (  10.34  )
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

From: Frank Wang <frank.wang@rock-chips.com>

This adds RK3576 device match data support.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 41 +++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 2c51e5c62d3e..5b1e8a3806ed 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1538,6 +1538,43 @@ static const char * const rk_udphy_rst_list[] = {
 	"init", "cmn", "lane", "pcs_apb", "pma_apb"
 };
 
+static const struct rk_udphy_cfg rk3576_udphy_cfgs = {
+	.num_phys = 1,
+	.phy_ids = { 0x2b010000 },
+	.num_rsts = ARRAY_SIZE(rk_udphy_rst_list),
+	.rst_list = rk_udphy_rst_list,
+	.grfcfg	= {
+		/* u2phy-grf */
+		.bvalid_phy_con		= RK_UDPHY_GEN_GRF_REG(0x0010, 1, 0, 0x2, 0x3),
+		.bvalid_grf_con		= RK_UDPHY_GEN_GRF_REG(0x0000, 15, 14, 0x1, 0x3),
+
+		/* usb-grf */
+		.usb3otg0_cfg		= RK_UDPHY_GEN_GRF_REG(0x0030, 15, 0, 0x1100, 0x0188),
+
+		/* usbdpphy-grf */
+		.low_pwrn		= RK_UDPHY_GEN_GRF_REG(0x0004, 13, 13, 0, 1),
+		.rx_lfps		= RK_UDPHY_GEN_GRF_REG(0x0004, 14, 14, 0, 1),
+	},
+	.vogrfcfg = {
+		{
+			.hpd_trigger	= RK_UDPHY_GEN_GRF_REG(0x0000, 11, 10, 1, 3),
+			.dp_lane_reg    = 0x0000,
+		},
+	},
+	.dp_tx_ctrl_cfg = {
+		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
+		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
+		rk3588_dp_tx_drv_ctrl_hbr2,
+		rk3588_dp_tx_drv_ctrl_hbr3,
+	},
+	.dp_tx_ctrl_cfg_typec = {
+		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
+		rk3588_dp_tx_drv_ctrl_rbr_hbr_typec,
+		rk3588_dp_tx_drv_ctrl_hbr2,
+		rk3588_dp_tx_drv_ctrl_hbr3,
+	},
+};
+
 static const struct rk_udphy_cfg rk3588_udphy_cfgs = {
 	.num_phys = 2,
 	.phy_ids = {
@@ -1584,6 +1621,10 @@ static const struct rk_udphy_cfg rk3588_udphy_cfgs = {
 };
 
 static const struct of_device_id rk_udphy_dt_match[] = {
+	{
+		.compatible = "rockchip,rk3576-usbdp-phy",
+		.data = &rk3576_udphy_cfgs
+	},
 	{
 		.compatible = "rockchip,rk3588-usbdp-phy",
 		.data = &rk3588_udphy_cfgs
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
