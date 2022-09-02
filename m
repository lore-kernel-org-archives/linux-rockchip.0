Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADAAECAAD5
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 18:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xK/Wa4/RCMoCDEogj8yOEoKTst1HMB6DcPqZjGefFKA=; b=H0hu1FFxl2Rvsb
	zuS+zaMvlJ2A932LgQhALDirDMqVsHTpmBQozVRJx0+z3yRTRGa42Ju72LpUH3GnCIOKIPgBGZioh
	2syAAPn59O4U+FFOyY8wwi6RfNdjZMooWzuA/wUEHqAyipXBCqdj+ro6clGOtn2lAuCcmQG4HyS1V
	zoDckm5sP4TmFwBEGWNgZ9nqtA6NaFggAuHgjC3jdAbLqN+oCI1/HHv5OWiGrYbuq4JEPCzMhxYfq
	dbvOOsbvxyANvYim+nZsBKnijlH5bnsuM+/Iar2BNyB1HJ3TmDuUZduTcBMdV4uRQZsnLGfjal2Ti
	3aoIxfnwgEqcEytDYJug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBg3-009jDc-M2; Fri, 02 Sep 2022 18:46:03 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBfq-009ivL-6C; Fri, 02 Sep 2022 18:45:51 +0000
Received: by mail-qv1-xf30.google.com with SMTP id y17so2093435qvr.5;
        Fri, 02 Sep 2022 11:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=l8lXRjJOTwa1pdbI6AHOCcVerD9joOqdaqD9HG8JOnk=;
        b=JT/5wswXZeLkBTP7NJmehoUSznJrZkjGyuGX1VZeMQR87I5/I/NvC9NhtkHkHevMSL
         5paJSt0K5hZEpDRgeCxtFxnTKXpFoCEV5uLmC/RZa8nU/JMLoii/ODoudvh4JSNPln9r
         flyLLR6wueAYBsGUk77HDDs8p+nAmTgUWFfhoFCyFIqr7XLImMfoEFRtCs1YTxbSlbin
         TMdomDl3vxaGu21qX/p1bUgflUS3QboZZAC8Zyc6O/qyjTSOXXu1b7Z73pYtVziaRZxz
         ZZJyGa4LwaeeHT8W4jwcUJgY238hFy1EK660+OjBPTyX+qcLKcGymUVM2WQSDdOVKze8
         BBNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=l8lXRjJOTwa1pdbI6AHOCcVerD9joOqdaqD9HG8JOnk=;
        b=n256435TY9Pmn1rSaIF+RR1W+7kdDzKoajDYgnYOb9SliO3lYLAYxlkp1jINlOFIy9
         FdvGeNS07lPRAc7QzqwIErUKqbH8Hy1CL3qqxU0iKORmV/pcoXRip+xlMWsLNADNbKU0
         23Z0paZgt/qJZLPgLzruObv+Ja6n7QLRPoPg9T/oDBGlWUoF6Dbq+C6Gqd2vT3QmOw+h
         LG+jvno/oPApdTQlfrnHVL9HGJyZQAN51eIiwNCQrsjA/sdJ90NcBP278qFcOLnCvubF
         pMrl9k1vUeCxGcpYhFDYaKyVXWR9+mp5PeU6h2VV4yN5rltvUjrxt6XSRtbGYgbXCCAf
         1fWw==
X-Gm-Message-State: ACgBeo3eCnF0QJhIoLLwcDhwQmTC3lAge4bxOJG4CNh04chpAViiNl7P
	8BeTs+Me1/JZ1pWLvXXkuFYYPq/Gqx0PZw==
X-Google-Smtp-Source: AA6agR7rAtz5HXoZEwSh+DlfA67M7HYVo7709S81K0h8mjg1oqA4O4cUjrdXJOOpwysFE1THXuW/zg==
X-Received: by 2002:a05:6214:1a43:b0:49a:f1ea:d8e1 with SMTP id fi3-20020a0562141a4300b0049af1ead8e1mr2795452qvb.103.1662144348356;
        Fri, 02 Sep 2022 11:45:48 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:901:9131::10])
        by smtp.gmail.com with ESMTPSA id a2-20020a05622a02c200b003447ee0a6bfsm884723qtx.17.2022.09.02.11.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 11:45:47 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] phy: rockchip-inno-usb2: Return zero after otg sync
Date: Fri,  2 Sep 2022 14:45:42 -0400
Message-Id: <20220902184543.1234835-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_114550_252901_AE11859D 
X-CRM114-Status: GOOD (  13.64  )
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

The otg sync state patch reuses the ret variable, but fails to set it to
zero after use. This leads to a situation when the otg port is in
peripheral mode where the otg phy aborts halfway through setup.  It also
fails to account for a failure to register the extcon notifier. Fix this
by using our own variable and skipping otg sync in case of failure.

Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
Reported-by: Markus Reichl <m.reichl@fivetechno.de>
Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
Tested-by: Markus Reichl <m.reichl@fivetechno.de>
---
Changelog:
v4
- fix a checkpatch style error (thanks Vinod)
v3
- add missing brackets around new goto
v2
- switch to using our own variable
- add missing goto to skip sync in case of registration failure
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 0b1e9337ee8e..e6ededc51523 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1124,7 +1124,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 					  struct rockchip_usb2phy_port *rport,
 					  struct device_node *child_np)
 {
-	int ret;
+	int ret, id;
 
 	rport->port_id = USB2PHY_PORT_OTG;
 	rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_OTG];
@@ -1162,13 +1162,15 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 
 		ret = devm_extcon_register_notifier(rphy->dev, rphy->edev,
 					EXTCON_USB_HOST, &rport->event_nb);
-		if (ret)
+		if (ret) {
 			dev_err(rphy->dev, "register USB HOST notifier failed\n");
+			goto out;
+		}
 
 		if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
 			/* do initial sync of usb state */
-			ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
-			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
+			id = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
+			extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !id);
 		}
 	}
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
