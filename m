Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EED87D2F7DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1UaEXhhRYRVnVuqK9mv85wdej3XeCC7gAgbXZLHTZ4=; b=kuIHJEcV+T6d/i
	1Jbxm5gpmNYmV6E9VxhDiGmPbhg4AMoE1oHEgoU61UXwiFttGZE8DxMKL6DB/OaM5Ely8abkO48an
	ohXS6bl0Z8iAFyxp81x8zhK9OT2X64LGmLGUGdMBh8RkBIXA9M18T0FDyopYy5P55AiIh+LW7HbQJ
	vipOWJb5nqZNVFtqiJzApoqcBPPFiMcwTfLveSEgKGv4Pp58ADnuaalEQw/IbZNWdqDlyhRk/K8Yt
	oHXp0GdwACqAPDtvDvekE8jI3ut2E6207ms8QIfPLmVD8mincFUfmnz8W2VnMNUkYXzCFKr1HUmGN
	3OeOJwgqgzvpc0ztlAuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1GhT-0000000DbQp-3qxs;
	Thu, 17 Oct 2024 02:57:19 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Gd7-0000000DajH-0HS3;
	Thu, 17 Oct 2024 02:52:50 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2e29497f11cso76922a91.2;
        Wed, 16 Oct 2024 19:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729133568; x=1729738368; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gf+PMX6YxweSXYAEzNrfFe+MZTHHEq+3Qule4g5FzBA=;
        b=EnsO1sTv5RwXZfER/hWuBrMdXLw6WUZRhKfW8Qeek2j86ixN8cQ14VcQvvwww11trD
         ntRDlHFf+kcyY4dxWEpb8vjbjcMPo4XILNa6PW8dpVCiiuwOwKwodIvX5E4S4u7V3kug
         UzYGNm0JSG1Q0IQpkeJEFPTa1yAkKcJVozOczsTVUtPqPf54X/uIWnQ4IfntAq4jjkbu
         rhBvs4rx+WO4dCWrVR3V4e71wJA8DcITIjPA3zLUQJsXEYKt+CYeqJ6KrHMFVMif/y46
         DB/Jx+sbVSBY3YoC5oAU8CYUfk9YNCMb9fBGJ+PeOOsYDS7eFXY0eKfJyX53w3QPjB30
         OBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729133568; x=1729738368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gf+PMX6YxweSXYAEzNrfFe+MZTHHEq+3Qule4g5FzBA=;
        b=q3Z9Ug+D5alXqpfR4FzqUcOb2urnTj4RUxwBSVgwl3Yn/O45UagwIGPDlgDOoBLvQB
         +3LXEILXO9pHi6s5uuoWEwJesDo5VQ9QtQqtHLsUtKtt9lagkJld7kv3due0Bo29Ejjj
         YXFmtQPgOG7rCD7YGnJLB6xPwj7RyST59xKtRqxYwDe0uR5MAMsT4Jv33YGlmpeI5U24
         I/TRUy4dvItR5u0mLaCMPW+olM2nxgDI3DdutvwHjnH2JS3AsYMEwDqBQGifj4oNo9M0
         ANF0E10SY6cTbbcItK3QsjwPyjFclb2oo21YrdBEUcEcMy4PYsDRibzAXOcKFKDfYkcS
         zcRQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8VIEVjIg7BbKrfVRBTSbV7wcKNrAfWtd4iFHcY692qhFaMOXlV/qDnplucGrcVCtAMPb3F4j5NLjXLc8CN8aV@lists.infradead.org, AJvYcCVagMOGCkT/xagCf7Obovv/uxaCpMwso9BGy2GR8MnZjrGy/gjmeXOJpXhNt4i8CrrUTlv8unXl5RS1HyrHk2w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzu1g1XYVdpXa4oe3/3Nf6ACqPXiz/xxIKr2LcU/7TG0tyzTksO
	0P2NRZGwcXcykHBfHz7xzEQv2BdjCf1umrNTyE/5j5VisvYSbL+cCWT+yA==
X-Google-Smtp-Source: AGHT+IHEYEmjYlU0tYbqmxNPBntwEjtGskPlYMwZntBvTJCgBTEhOctyXNt80QCb485EeMieShL0Sg==
X-Received: by 2002:a17:90a:bf85:b0:2e2:ada8:2984 with SMTP id 98e67ed59e1d1-2e3dc25fc19mr918337a91.4.1729133568018;
        Wed, 16 Oct 2024 19:52:48 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3e08d8b6esm628537a91.29.2024.10.16.19.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 19:52:47 -0700 (PDT)
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
	Frank Wang <frank.wang@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2 3/3] phy: rockchip: usbdp: add rk3576 device match data
Date: Thu, 17 Oct 2024 10:52:30 +0800
Message-Id: <20241017025230.28752-3-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241017025230.28752-1-frawang.cn@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_195249_131785_C36B5A79 
X-CRM114-Status: GOOD (  10.60  )
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
Acked-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
Changelog:
v2:
 - add Reviewed and Acked tag.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20241014020342.15974-2-frawang.cn@gmail.com/

 drivers/phy/rockchip/phy-rockchip-usbdp.c | 41 +++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 2c51e5c62d3eb..5b1e8a3806ed4 100644
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
