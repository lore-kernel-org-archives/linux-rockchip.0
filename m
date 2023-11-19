Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D9A5C5AD4C
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 12:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gv35OkCpgvE3bC9cJhEmHfh08nUYamWKNDXjem6R960=; b=SRdFdPLF95vtkn
	Ot5z6iezu8FyqZoBlAGTmvQDAr9Ck1sj0lCjBblEqwJ7Oeb9Pl4+TGiVb2tDZVOLwUiX+jt+5BIlP
	PBGbXPhimmXRR2DZWiGyk7HJniJghsSWbb/9qcalQjj6B8OzQdK3nkDvH0M5jaKJjfLPr4W55rsnE
	TKMTn5npp2sul7KEcG/QcFcdgu1m88GGTOyk/JTkUn1qw3sUvJV17cO7nObAj5YYmkQE6NDnEcohM
	Ifm/Z+HzpGgcewQRjHpZV9wFhUW8LFkdQx7Z+2UjEpAs8dtmwqC2aSBsePrtiC0rzsBLwLfttdC2+
	LfV0fKsHP4Gx5YkIZXgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggU-00A9BW-1J;
	Sun, 19 Nov 2023 12:13:54 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggL-00A97G-2H;
	Sun, 19 Nov 2023 12:13:50 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5484ef5e3d2so2720384a12.3;
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396024; x=1701000824; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YVr7goYhFLlmDZmc5xEl9s20CmZbe4+FAt3N2E9piDg=;
        b=iDgXrT+E4kEZQYbrEXZlQt+CGp2ydTgoMXISX/V8D0+PDP2t+/lM/JRG/ITIToN5NY
         IkQEILIKBnhTDGlYE5JR/w5r7jO2gxsbjTr9uQUXEJkpuGIbXs36gP6JgxSxsqwzwnZx
         78CeA4IiNfJceG45Jm7RXutt2hFYKWSLCNPp4TJv0U2obWVaz51TdJ//z6qvTal+Hb2O
         +xGyFsd+71Fz/Fg6GxcRXaFWnDDd571hqN0uoEEE9oqvWDqIW+Sqt/nc2joOqOUlidBo
         USHAYKfJeJeoHJJzxyWT4g/rHkZdPeUJWK8RVwtQnB3pE/DH4fDHLMp7g7KPucAKlvKy
         Bt0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396024; x=1701000824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YVr7goYhFLlmDZmc5xEl9s20CmZbe4+FAt3N2E9piDg=;
        b=eqT3k22ilWbZigtM9SSaiprXE/sh/PD4U8lZhAfZAn3qZJEZ7u7bzIlsiWfqUOd1sS
         BUtpnxeDYgfF7j3A4b1F0Pbw7CAQ+AiYHypJppOIMl0FnAg7JJd2BqWf5mUwAqu2/SK4
         yivkOEgvatUuYMChnCOzX4QBwpTZpv2TYtkHCzUGyIzrGY3Wg+jPuoFT9UFhzCSc2UMz
         fRP/ko29J64TRTc1bQnskh8hjlLZMCaaLl43agrs+kJS82AyAKAXdQPMZ4by2fTz6Q4D
         qRi8iBGTOZt0l0wsvcS6vu77LHBlwUNrbga/MXPTsJ4fjummPjVGgI/RmREYYtHwBv2i
         mNfA==
X-Gm-Message-State: AOJu0YzuiVgV+h6a9M8IAaS1vYjrtAnV8jPePjG33x+1Xza0CKf39iol
	V+mGw6akKF7YOKE3iWKWOg==
X-Google-Smtp-Source: AGHT+IHBJU9wdIXPTCBk407dwoGGEi1XpoVY+fEgUXOjjM0NXJSTbbLeARn5Up3BUus6sIH24XikDw==
X-Received: by 2002:a05:6402:64f:b0:548:4dd2:aa58 with SMTP id u15-20020a056402064f00b005484dd2aa58mr3510536edx.28.1700396023758;
        Sun, 19 Nov 2023 04:13:43 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:43 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 1/5] phy: rockchip-inno-usb2: Split ID interrupt phy registers
Date: Sun, 19 Nov 2023 13:13:36 +0100
Message-ID: <20231119121340.109025-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_041345_773490_DDC3D79B 
X-CRM114-Status: GOOD (  18.83  )
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

Commit 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ") added ID
detection interrupt registers. However the current implementation assumes
that falling and rising edge interrupt are always enabled in registers
spanning over subsequent bits.
That is not the case for RK3128's version of the phy and this
implementation can't be used as-is, since there are bits with different
purpose in between.

This splits up the register definitions for id_det_en, id_det_en and
id_det_clr registers in rising and falling edge variants.
It's required as preparation to support RK3128's Innosilicon usb2 phy as
well in this driver and matches pretty much to what the vendor does, so I'm
not expecting issues for other SoCs with that change.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
Changes in v3:
 - rebased on linux-next
 
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 99 +++++++++++++------
 1 file changed, 70 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index a24d2af154df..b5a1d30df83a 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -123,9 +123,12 @@ struct rockchip_chg_det_reg {
  * @disrise_en: host disconnect rise edge detection enable.
  * @disrise_st: host disconnect rise edge detection state.
  * @disrise_clr: host disconnect rise edge detection clear.
- * @id_det_en: id detection enable register.
- * @id_det_st: id detection state register.
- * @id_det_clr: id detection clear register.
+ * @idfall_det_en: id detection enable register, falling edge
+ * @idfall_det_st: id detection state register, falling edge
+ * @idfall_det_clr: id detection clear register, falling edge
+ * @idrise_det_en: id detection enable register, rising edge
+ * @idrise_det_st: id detection state register, rising edge
+ * @idrise_det_clr: id detection clear register, rising edge
  * @ls_det_en: linestate detection enable register.
  * @ls_det_st: linestate detection state register.
  * @ls_det_clr: linestate detection clear register.
@@ -146,9 +149,12 @@ struct rockchip_usb2phy_port_cfg {
 	struct usb2phy_reg      disrise_en;
 	struct usb2phy_reg      disrise_st;
 	struct usb2phy_reg      disrise_clr;
-	struct usb2phy_reg	id_det_en;
-	struct usb2phy_reg	id_det_st;
-	struct usb2phy_reg	id_det_clr;
+	struct usb2phy_reg	idfall_det_en;
+	struct usb2phy_reg	idfall_det_st;
+	struct usb2phy_reg	idfall_det_clr;
+	struct usb2phy_reg	idrise_det_en;
+	struct usb2phy_reg	idrise_det_st;
+	struct usb2phy_reg	idrise_det_clr;
 	struct usb2phy_reg	ls_det_en;
 	struct usb2phy_reg	ls_det_st;
 	struct usb2phy_reg	ls_det_clr;
@@ -488,15 +494,27 @@ static int rockchip_usb2phy_init(struct phy *phy)
 			if (ret)
 				goto out;
 
-			/* clear id status and enable id detect irq */
+			/* clear id status and enable id detect irqs */
 			ret = property_enable(rphy->grf,
-					      &rport->port_cfg->id_det_clr,
+					      &rport->port_cfg->idfall_det_clr,
 					      true);
 			if (ret)
 				goto out;
 
 			ret = property_enable(rphy->grf,
-					      &rport->port_cfg->id_det_en,
+					      &rport->port_cfg->idrise_det_clr,
+					      true);
+			if (ret)
+				goto out;
+
+			ret = property_enable(rphy->grf,
+					      &rport->port_cfg->idfall_det_en,
+					      true);
+			if (ret)
+				goto out;
+
+			ret = property_enable(rphy->grf,
+					      &rport->port_cfg->idrise_det_en,
 					      true);
 			if (ret)
 				goto out;
@@ -1030,11 +1048,16 @@ static irqreturn_t rockchip_usb2phy_id_irq(int irq, void *data)
 	struct rockchip_usb2phy *rphy = dev_get_drvdata(rport->phy->dev.parent);
 	bool id;
 
-	if (!property_enabled(rphy->grf, &rport->port_cfg->id_det_st))
+	if (!property_enabled(rphy->grf, &rport->port_cfg->idfall_det_st) &&
+	    !property_enabled(rphy->grf, &rport->port_cfg->idrise_det_st))
 		return IRQ_NONE;
 
 	/* clear id detect irq pending status */
-	property_enable(rphy->grf, &rport->port_cfg->id_det_clr, true);
+	if (property_enabled(rphy->grf, &rport->port_cfg->idfall_det_st))
+		property_enable(rphy->grf, &rport->port_cfg->idfall_det_clr, true);
+
+	if (property_enabled(rphy->grf, &rport->port_cfg->idrise_det_st))
+		property_enable(rphy->grf, &rport->port_cfg->idrise_det_clr, true);
 
 	id = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
 	extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !id);
@@ -1524,9 +1547,12 @@ static const struct rockchip_usb2phy_cfg rk3228_phy_cfgs[] = {
 				.bvalid_det_en	= { 0x0680, 3, 3, 0, 1 },
 				.bvalid_det_st	= { 0x0690, 3, 3, 0, 1 },
 				.bvalid_det_clr	= { 0x06a0, 3, 3, 0, 1 },
-				.id_det_en	= { 0x0680, 6, 5, 0, 3 },
-				.id_det_st	= { 0x0690, 6, 5, 0, 3 },
-				.id_det_clr	= { 0x06a0, 6, 5, 0, 3 },
+				.idfall_det_en	= { 0x0680, 6, 6, 0, 1 },
+				.idfall_det_st	= { 0x0690, 6, 6, 0, 1 },
+				.idfall_det_clr	= { 0x06a0, 6, 6, 0, 1 },
+				.idrise_det_en	= { 0x0680, 5, 5, 0, 1 },
+				.idrise_det_st	= { 0x0690, 5, 5, 0, 1 },
+				.idrise_det_clr	= { 0x06a0, 5, 5, 0, 1 },
 				.ls_det_en	= { 0x0680, 2, 2, 0, 1 },
 				.ls_det_st	= { 0x0690, 2, 2, 0, 1 },
 				.ls_det_clr	= { 0x06a0, 2, 2, 0, 1 },
@@ -1587,9 +1613,12 @@ static const struct rockchip_usb2phy_cfg rk3308_phy_cfgs[] = {
 				.bvalid_det_en	= { 0x3020, 3, 2, 0, 3 },
 				.bvalid_det_st	= { 0x3024, 3, 2, 0, 3 },
 				.bvalid_det_clr = { 0x3028, 3, 2, 0, 3 },
-				.id_det_en	= { 0x3020, 5, 4, 0, 3 },
-				.id_det_st	= { 0x3024, 5, 4, 0, 3 },
-				.id_det_clr	= { 0x3028, 5, 4, 0, 3 },
+				.idfall_det_en	= { 0x3020, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x3024, 5, 5, 0, 1 },
+				.idfall_det_clr = { 0x3028, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x3020, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x3024, 4, 4, 0, 1 },
+				.idrise_det_clr = { 0x3028, 4, 4, 0, 1 },
 				.ls_det_en	= { 0x3020, 0, 0, 0, 1 },
 				.ls_det_st	= { 0x3024, 0, 0, 0, 1 },
 				.ls_det_clr	= { 0x3028, 0, 0, 0, 1 },
@@ -1634,9 +1663,12 @@ static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
 				.bvalid_det_en	= { 0x0110, 3, 2, 0, 3 },
 				.bvalid_det_st	= { 0x0114, 3, 2, 0, 3 },
 				.bvalid_det_clr = { 0x0118, 3, 2, 0, 3 },
-				.id_det_en	= { 0x0110, 5, 4, 0, 3 },
-				.id_det_st	= { 0x0114, 5, 4, 0, 3 },
-				.id_det_clr	= { 0x0118, 5, 4, 0, 3 },
+				.idfall_det_en	= { 0x0110, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0114, 5, 5, 0, 1 },
+				.idfall_det_clr = { 0x0118, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0110, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0114, 4, 4, 0, 1 },
+				.idrise_det_clr = { 0x0118, 4, 4, 0, 1 },
 				.ls_det_en	= { 0x0110, 0, 0, 0, 1 },
 				.ls_det_st	= { 0x0114, 0, 0, 0, 1 },
 				.ls_det_clr	= { 0x0118, 0, 0, 0, 1 },
@@ -1700,9 +1732,12 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 				.bvalid_det_en	= { 0xe3c0, 3, 3, 0, 1 },
 				.bvalid_det_st	= { 0xe3e0, 3, 3, 0, 1 },
 				.bvalid_det_clr	= { 0xe3d0, 3, 3, 0, 1 },
-				.id_det_en	= { 0xe3c0, 5, 4, 0, 3 },
-				.id_det_st	= { 0xe3e0, 5, 4, 0, 3 },
-				.id_det_clr	= { 0xe3d0, 5, 4, 0, 3 },
+				.idfall_det_en	= { 0xe3c0, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0xe3e0, 5, 5, 0, 1 },
+				.idfall_det_clr	= { 0xe3d0, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0xe3c0, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0xe3e0, 4, 4, 0, 1 },
+				.idrise_det_clr	= { 0xe3d0, 4, 4, 0, 1 },
 				.utmi_avalid	= { 0xe2ac, 7, 7, 0, 1 },
 				.utmi_bvalid	= { 0xe2ac, 12, 12, 0, 1 },
 				.utmi_id	= { 0xe2ac, 8, 8, 0, 1 },
@@ -1739,9 +1774,12 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
 				.bvalid_det_en  = { 0xe3c0, 8, 8, 0, 1 },
 				.bvalid_det_st  = { 0xe3e0, 8, 8, 0, 1 },
 				.bvalid_det_clr = { 0xe3d0, 8, 8, 0, 1 },
-				.id_det_en	= { 0xe3c0, 10, 9, 0, 3 },
-				.id_det_st	= { 0xe3e0, 10, 9, 0, 3 },
-				.id_det_clr	= { 0xe3d0, 10, 9, 0, 3 },
+				.idfall_det_en	= { 0xe3c0, 10, 10, 0, 1 },
+				.idfall_det_st	= { 0xe3e0, 10, 10, 0, 1 },
+				.idfall_det_clr	= { 0xe3d0, 10, 10, 0, 1 },
+				.idrise_det_en	= { 0xe3c0, 9, 9, 0, 1 },
+				.idrise_det_st	= { 0xe3e0, 9, 9, 0, 1 },
+				.idrise_det_clr	= { 0xe3d0, 9, 9, 0, 1 },
 				.utmi_avalid	= { 0xe2ac, 10, 10, 0, 1 },
 				.utmi_bvalid    = { 0xe2ac, 16, 16, 0, 1 },
 				.utmi_id	= { 0xe2ac, 11, 11, 0, 1 },
@@ -1770,9 +1808,12 @@ static const struct rockchip_usb2phy_cfg rk3568_phy_cfgs[] = {
 				.bvalid_det_en	= { 0x0080, 3, 2, 0, 3 },
 				.bvalid_det_st	= { 0x0084, 3, 2, 0, 3 },
 				.bvalid_det_clr = { 0x0088, 3, 2, 0, 3 },
-				.id_det_en	= { 0x0080, 5, 4, 0, 3 },
-				.id_det_st	= { 0x0084, 5, 4, 0, 3 },
-				.id_det_clr	= { 0x0088, 5, 4, 0, 3 },
+				.idfall_det_en	= { 0x0080, 5, 5, 0, 1 },
+				.idfall_det_st	= { 0x0084, 5, 5, 0, 1 },
+				.idfall_det_clr	= { 0x0088, 5, 5, 0, 1 },
+				.idrise_det_en	= { 0x0080, 4, 4, 0, 1 },
+				.idrise_det_st	= { 0x0084, 4, 4, 0, 1 },
+				.idrise_det_clr	= { 0x0088, 4, 4, 0, 1 },
 				.utmi_avalid	= { 0x00c0, 10, 10, 0, 1 },
 				.utmi_bvalid	= { 0x00c0, 9, 9, 0, 1 },
 				.utmi_id	= { 0x00c0, 6, 6, 0, 1 },
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
