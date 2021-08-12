Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A38C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:45:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 623A7610A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:45:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 623A7610A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQWuB5rWwCYzE/lvGHL5jlEhegxC+2Bnhxi1v5F4Fd0=; b=ILzCP21UZ4uhmb
	QR+n7/TyR0Xro0upi+yhpk/T4VljUgvI2i1HMKNQ5RUDvyNCsPifqP+qVnHBQyMJl10sRqMSfNpdP
	ZqVyNp1MYWFb8sVAZOKU4EA7SLT/kHFDADRdfD2TMLJ59SiWPrBtpk5r/UDvKDG+EVizkK8e862Ic
	rql1MKg5oWb7t+D8sSm0iCwceHSAmx4wI/fXO99m0pRkS1a4Reuwu00ufF6wdRLxHZBOxRS+6gs5l
	ZIcCdloAPohj+X2k1hkhpw6A0gnIJpDiZqmC0/tfRkV904tO3xFbuvBpsnkPoR/97FfFk8KTnKA5K
	xY2P+zaBUBDpBmV5OTJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHZp-00BD6R-ND; Thu, 12 Aug 2021 20:45:21 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWe-00BBRG-7n; Thu, 12 Aug 2021 20:42:05 +0000
Received: by mail-qv1-xf36.google.com with SMTP id c14so28297qvs.9;
 Thu, 12 Aug 2021 13:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4fH6A/BcmiXnSJNIz36CupSiUjhhUBPUWUzzeHlruOE=;
 b=egHFOLfly8AjKOqcXJyLVExDLf6LQcj/wgdtZZlG5HWIU+cPfiscKiz0rCyST76G8o
 R29ekx00ati+bx0XNynb2U9MyzPCgFER6DrNzBCe6sx/4JmE0BzGTabFbGP5POS1kmdG
 sRFtNYWNtS2yP9Q9bMekpEjPMEb7VsysanYbWDUQE5LjXew+VClPpizjFVE20Zn+q7OL
 ygoF7ioTB1CcezHpNHEQqB6ZU17m5K6EEtO2sIp0+RarAbhJRdF7B3hYIIQiPlvi8Uqn
 AjREhqExwBJMw02IxVR3Ewz6TBNy/Jf6zIZ2I4/gPIZjqaU/21pyGuV5gjL4WQ82k1YA
 ge/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4fH6A/BcmiXnSJNIz36CupSiUjhhUBPUWUzzeHlruOE=;
 b=AmQLMRC5go/w2pvOeG7wVLbtw/MuHNTcK62V5GY83qh+OR3YUSvjc1D+DqnsqHxSaI
 PXluVkZ6l4yYbzUuMK8R9t1tg94ujewbxgs2VDZj6vja6NdckpJwjKpJjMs4sHFbT5dS
 QBTpsE83SodSom9bB+Mtoa48LjUy8iaKLwObOzW4DPnrb16QWCQiDMaRqf4qbJ36+3/P
 YvUTfFvLfXAtwpU/hb1QItOtD8PCKz0FLG8lUaVV3Zz3a7ZrQk1HXr8POc8UJ20UwQBu
 ZmHLUWNDUERkMWT9cTSyflOiCX0DCemB5MmDNsbEvI9cQjd2DWeOnTpgOP78OD9kFcdT
 6eBQ==
X-Gm-Message-State: AOAM532g8rlmzrUJoa35ugU1gPR24YV756i18ecQsjqYAkzpg2PhlCft
 cP0cLxm68UjZloBzRqkqDmw=
X-Google-Smtp-Source: ABdhPJwO8BKYR3rqA3vonlPaweauwBXBAV9qhXKsuNnD9drM/Byn6GLIlelcDUcBbLDmR3/VIErhxg==
X-Received: by 2002:a05:6214:dce:: with SMTP id
 14mr5852702qvt.34.1628800923135; 
 Thu, 12 Aug 2021 13:42:03 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:42:02 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] phy: phy-rockchip-inno-usb2: add rk3568 support
Date: Thu, 12 Aug 2021 16:41:14 -0400
Message-Id: <20210812204116.2303617-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134204_331268_C92262C8 
X-CRM114-Status: GOOD (  13.85  )
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
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index fdeb2e7c937a..74420c439a07 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1100,6 +1100,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 	if (ret) {
 		dev_err(rphy->dev, "failed to init irq for host port\n");
 		goto out;
+	}
 
 	if (!IS_ERR(rphy->edev)) {
 		rport->event_nb.notifier_call = rockchip_otg_event;
@@ -1509,6 +1510,69 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
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
@@ -1558,6 +1622,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
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
