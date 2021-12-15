Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED90C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqtfx0jNI5wvJ5I+heNkRdU2PLrGhJRf3ZhVP6UiElE=; b=48kmXcVR8koGvZ
	B4lXMaULfmKOLngLDRx0tXTAwaIdU3zBG7pZm+uCCGW3zB91E0RU8pvjEMLsZbWtbpQMI5xx3qMP6
	UEWQ7rb+J2ABSnEbY3V29Sa+WJBpmetfdNHemuLGx6jhHdtn5Y5Jmoq1lSuwmVXlHZZtPmoNm8Hgf
	eSlxoWiaVt4TmCy8Yp8KjR4H/ToTgXSxb5IflcSESDtMlEdX8Oa9NJUtvz+PfFZn0qHtF4Ow9X9AY
	w0TmEbcGmTWbzwXwSZCylcBKktuKgAYgtcqws2s5cLvGOiqMnyVwRNXknfp9CWAafDhrWPNeP+0Kg
	WVj2vOmqvzJjXH9DjzzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbSe-002jiw-03; Wed, 15 Dec 2021 21:05:16 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQZ-002iZt-Aj; Wed, 15 Dec 2021 21:03:08 +0000
Received: by mail-qk1-x736.google.com with SMTP id 193so21347812qkh.10;
 Wed, 15 Dec 2021 13:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=js1jSO4OFQ7U7dS2izOYemvuMGJjz15gack2xht55jQ=;
 b=PtnYZZC4ELrFfJxFdXB/6jicCKg5x9/uj9D0bTr4fEufKEE7dleAzzjWUIwmbuclzD
 2R7MySzIs+F1/17ZqnIQ8ipu+R1pSn+sdruOYeQyLSzm95/bR4jouhkg5bfcgBSZEDSs
 PC++lAgq14GowmWLAb7atAfctc2JJvxJp2PyQu446TCmjei8BQBg3SKeRA2AAT6mtmuw
 4XMNx0T01o7sVZE5+CkbL3ucb+13a2z4MvBO1xRt9xhgiCmPhW9ekq+LHWyp+r54AFQv
 i8h2JnEUforYH3LHdXHYm1f67Wdo1olwmWQ1G8mq6C42jI+cjfQnilIfvV38rtc9S9b9
 HEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=js1jSO4OFQ7U7dS2izOYemvuMGJjz15gack2xht55jQ=;
 b=MCFPefLOEHAPa35SuVshA67xI2TibHYK1Im4Io/pNPJHOklRVnUCWZxRr0lwnkqVrv
 M160TdU9rEiQlib+iwi3s6XsqnSOtU/xrjjNnoxblAWUwVRlu7VuZ0DZfUPkV3QrQjnk
 1G59FC31d2ogPX8FFI4dJ5mlFkEXH6lgr4I95bY0RCyFtvybjK7f12BXpipVjQkcFohB
 I0anKeuJQ/QhCXlI3Yzl57XeQxmrBot39W9aScQYknvMDlB6u058aH+YMvYkfMAxAvul
 WMTQOju+sWmhPHFw6cfBZFzHHzr7oO8BAbF1zNJo/hTDux6rH68VUhxAEgIrziEE/GCJ
 h8dQ==
X-Gm-Message-State: AOAM530NX5taeCBK+vr9xprZuOU1AL3jA5VOxWkcrBuUXV54rV2/RXwp
 9DL70a41faiofSdljLx9lfg=
X-Google-Smtp-Source: ABdhPJxgxGpTirbr48viDuS6QNylWAPqepFaT7ltRmbj/eF8GAp+AmJ96662/GcMqD0KghZz+Y1GHg==
X-Received: by 2002:a37:6716:: with SMTP id b22mr10005020qkc.123.1639602185799; 
 Wed, 15 Dec 2021 13:03:05 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:03:05 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/8] phy: phy-rockchip-inno-usb2: add rk3568 support
Date: Wed, 15 Dec 2021 16:02:50 -0500
Message-Id: <20211215210252.120923-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130307_402783_61CC967B 
X-CRM114-Status: GOOD (  12.45  )
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

The rk3568 usb2phy is a standalone device with a single muxed interrupt.
Add support for the registers to the usb2phy driver.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 285958fdab38..bdc5a861891c 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1093,6 +1093,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 	if (ret) {
 		dev_err(rphy->dev, "failed to init irq for host port\n");
 		goto out;
+	}
 
 	if (!IS_ERR(rphy->edev)) {
 		rport->event_nb.notifier_call = rockchip_otg_event;
@@ -1504,6 +1505,69 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
+	{
+		.reg = 0xfe8a0000,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0008, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0000, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x0080, 2, 2, 0, 1 },
+				.bvalid_det_st	= { 0x0084, 2, 2, 0, 1 },
+				.bvalid_det_clr = { 0x0088, 2, 2, 0, 1 },
+				.utmi_avalid	= { 0x00c0, 10, 10, 0, 1 },
+				.utmi_bvalid	= { 0x00c0, 9, 9, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				/* Select suspend control from controller */
+				.phy_sus	= { 0x0004, 8, 0, 0x1d2, 0x1d2 },
+				.ls_det_en	= { 0x0080, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x0084, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x0088, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x00c0, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x00c0, 19, 19, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x0000, 3, 0, 5, 1 },
+			.cp_det		= { 0x00c0, 24, 24, 0, 1 },
+			.dcp_det	= { 0x00c0, 23, 23, 0, 1 },
+			.dp_det		= { 0x00c0, 25, 25, 0, 1 },
+			.idm_sink_en	= { 0x0008, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0008, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0008, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0008, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0008, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0008, 11, 11, 0, 1 },
+		},
+	},
+	{
+		.reg = 0xfe8b0000,
+		.num_ports	= 2,
+		.clkout_ctl	= { 0x0008, 4, 4, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x0000, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0080, 0, 0, 0, 1 },
+				.ls_det_st	= { 0x0084, 0, 0, 0, 1 },
+				.ls_det_clr	= { 0x0088, 0, 0, 0, 1 },
+				.utmi_ls	= { 0x00c0, 5, 4, 0, 1 },
+				.utmi_hstdet	= { 0x00c0, 7, 7, 0, 1 }
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0004, 8, 0, 0x1d2, 0x1d1 },
+				.ls_det_en	= { 0x0080, 1, 1, 0, 1 },
+				.ls_det_st	= { 0x0084, 1, 1, 0, 1 },
+				.ls_det_clr	= { 0x0088, 1, 1, 0, 1 },
+				.utmi_ls	= { 0x00c0, 17, 16, 0, 1 },
+				.utmi_hstdet	= { 0x00c0, 19, 19, 0, 1 }
+			}
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
 	{
 		.reg = 0x100,
@@ -1553,6 +1617,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
 	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
 	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
+	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
 	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
 	{}
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
