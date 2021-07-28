Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B11C4320A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:29:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8B5D60F9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:29:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A8B5D60F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQWuB5rWwCYzE/lvGHL5jlEhegxC+2Bnhxi1v5F4Fd0=; b=bUUow7YxPi10Ti
	giHnFvhErggYyGpCUv2DBCd/kskzyWe/m2DbF7RSn+dAiA7AZGQlb1KKtWdiM/gvtYOjLYA+hlEdZ
	fTH6NIUL1Wlzxsz+1Je3T9rN5TqAv4eFlUDvzGsUkcKm/yaaeL32/Nit4O/I65ns2hOEEPA0h9w8Z
	b7lw/dHnWaM/JPvXfbDBISmMVMPJYYnEFTnKKPbYoWCAp6etXKGkNRYS4BpqUYIIvoioQJzmoRMNG
	q9Ead+Wgj1Tch4ryjnQMiBsRRU3OVn55nqYUV3OGBIqXhTu34BJdI3IBqcBUvT7gXN1f+B9iPyozU
	aLrHv4vEIoHLwKKBzGAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8igs-000e9F-HJ; Wed, 28 Jul 2021 12:29:38 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idk-000cgw-FX; Wed, 28 Jul 2021 12:26:26 +0000
Received: by mail-qv1-xf33.google.com with SMTP id g6so1386834qvj.8;
 Wed, 28 Jul 2021 05:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4fH6A/BcmiXnSJNIz36CupSiUjhhUBPUWUzzeHlruOE=;
 b=JSpRYJD3Xeg1OyyvcOBaRRAySh9dHFQ+LDF8TSLOCuQCkUAdVhut5t7Irx/fbJsdmf
 t8zJHrKzFbEPZqAYwX2oTFXMnBCi11S/SVlNZxqXSiGdCeBrSDMwvfEY6tMsG3mFvKOJ
 R00UIScGLqQU/50cCqzaM4k0VvpA0c4aminIhDp+CRIXUgH8jdNSrJxrkV0vB6gGPMvy
 /+j8eJVer672MKIOt+6kjdfUB7TQqJkiJdWk4iy39B2yJiiun6nGENDwXSU/FPc1hSN7
 2d9lvxvUijKClXt2jafEQ6bcR2uKmq//N/73J2kyOkK0QFXNah/EgybglOQ9wlb3y7zq
 kysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4fH6A/BcmiXnSJNIz36CupSiUjhhUBPUWUzzeHlruOE=;
 b=tVNxDLcdh6Mnvq/6jdDMFltSZ8rj7evFu2vOnvlKqVRRVEBtcEDXqAfTWwfhQLhC2+
 c5PC6REjNUSMKjkTEgryc5vGF4J8M/VYYizW5T37WyEwzItmXUUHImZGJ086lkKnn3Qv
 Q3wSGHbktCMBqP9CDuEKuspR00TSaK2fhX4/hlcmxQbHKymvaHZOUSs/gZmNcwgfZSla
 sh3pvl2i/G+h+/sxg920NQyjH622cCAQn34PfufHJSxOfNx+guHHwnxaIajRI9L0Ni6M
 ylxcA7KHpvcsQbOFNN44MOB8lufj89UAQa/D8rVwwi2fud5hsQcDdKHHKrc+ikoAn0sG
 aiig==
X-Gm-Message-State: AOAM532ML1MqshqzOOKdx+vApiDHDA3MJiFuRxVjQgcpp78hlHCKMHf2
 ple3miy6NhcIyT3pEQHD+wk=
X-Google-Smtp-Source: ABdhPJxpFSDaJnDvXsK7PrU6zN/HgHLCfwmJN99VDxwvD9uv4fJKdCBhpQzD4KStC9OelKZ8BhyDXg==
X-Received: by 2002:a05:6214:1d2e:: with SMTP id
 f14mr1841834qvd.17.1627475182901; 
 Wed, 28 Jul 2021 05:26:22 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:22 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 7/9] phy: phy-rockchip-inno-usb2: add rk3568 support
Date: Wed, 28 Jul 2021 08:26:04 -0400
Message-Id: <20210728122606.697619-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052624_594579_979D541C 
X-CRM114-Status: GOOD (  13.96  )
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
