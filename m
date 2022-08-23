Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B11AC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 14:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DmgwaJj5MIxXG3V98m1eK0bRb+725CqeAy7ps95sXQE=; b=qR5d86h3OxbaDB
	Y7+Pb58AzqGsv87vL1dw2pH47kUXdhL6UtTEa3cR2dAZSxp+ZYuP5NW3yzMCffz4JS+OtWAQnlOrH
	elSApmrGJX2i/Me/FgkHuNKI6t3jFoWoA99NadD384gDLrlQB1f1mVcQTbTUn9EmgjQD95bS7VKmv
	7b5omh+pjInoHFVWN1Sj7Tqppxn+fnN+0AbqYPWbBzgF3nLiIOysBS0VKItBQkYhErGF1TcKcIeQP
	lCR008oymcLMSEVkggq0rNkN3JufiD76s7x2hdqvFijEi57n4PxTvOD227o7GNYdzIhpmtPN0p4tI
	B6Tonhhm09giqmVcfx+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQVBy-006itJ-MV; Tue, 23 Aug 2022 14:47:46 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQVBo-006iny-5k; Tue, 23 Aug 2022 14:47:37 +0000
Received: by mail-qt1-x830.google.com with SMTP id r6so1450760qtx.6;
        Tue, 23 Aug 2022 07:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=b8EYUe3JugOX0krlcI4SIAy+UPYGVeLR4PxCSdVOZKA=;
        b=kds/eg8K8iDSgVtBJnyCXPYIJMTjIe4TyWFlnVvOJk99djqYpAvmv2YGgDbvzOJPeA
         cE2QB/DTRvulIqdttMXeB9CLHfx2bIc2bsNRauw5PA0xGRIeStBVoAoHKLlT6RPuGZuV
         qFHH/TY6hqKpwWuWFIjJ5jikWkkWE4fBYdn+eyxk5YbSy7FNs9SK0jNuni93x7hSD0vs
         kQIqtSBLS3ML00Sq65XA8Ax7JZBDQriWvnPMN0ME5oOoRi/EZWOhMBsxT4kCByC5E9Qt
         PNM2JAFW7DafoTylAIZxeFPmkjhy3JFfkDuIgwzcQPEch9CAFRi7E4qa/uqBiOaS3J3v
         PYBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=b8EYUe3JugOX0krlcI4SIAy+UPYGVeLR4PxCSdVOZKA=;
        b=n1ncioIaFmzv82jbLR/aS8quWKk5iMpQ09JDeCTyA+x/onxWRUK+UrdGQ+8KaPEeGM
         l0OskOt0pAl+zB4klBHmnP/Gel57wgYIRSh/V7kb3RCdrZFQHR6k6cDeIbelIc9LJDzC
         JnJM5zkYv7hzOtOHktQQhIghHGb4EBW99rD8jO4Sm4MdCzfd1OGoIB66jt8pBMQvLKX3
         1p8NMu/CE5BcBpCw3cebQUBnHuHJPDUB1fl75Hb748r9FYjLBknAK+nHEQlH4MlDDebP
         RnQs6g697rY7oftBrA+oXCwH6aQns+vOEqjlS8BeS5OfxTelNar2iJTXMPn9SM+wYomg
         bCHg==
X-Gm-Message-State: ACgBeo1OIP9yDSBExf7V2g2GSGDvB0pzpKwAFbRmAvewQdTnlHC5Dz9+
	Rki7M8gLyuKAsVCLEkYK/UmPlCPTG8qN6A==
X-Google-Smtp-Source: AA6agR5pSSGs0EgS8b/26ah8lKzgSPS8zmBy7jeWzv2OusfHLi0QCQsN/9wfq3U41+VJTU8fy5CYcw==
X-Received: by 2002:ac8:7f83:0:b0:343:869a:7db9 with SMTP id z3-20020ac87f83000000b00343869a7db9mr19705477qtj.46.1661266052867;
        Tue, 23 Aug 2022 07:47:32 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:901:9131::10])
        by smtp.gmail.com with ESMTPSA id y9-20020a05620a25c900b006bb83c2be40sm13304284qko.59.2022.08.23.07.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 07:47:32 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Markus Reichl <m.reichl@fivetechno.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: rockchip-inno-usb2: Return zero after otg sync
Date: Tue, 23 Aug 2022 10:47:28 -0400
Message-Id: <20220823144728.47068-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_074736_237432_1FC8BFD0 
X-CRM114-Status: GOOD (  11.06  )
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
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 0b1e9337ee8e..d579a22c61df 100644
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
@@ -1164,11 +1164,12 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 					EXTCON_USB_HOST, &rport->event_nb);
 		if (ret)
 			dev_err(rphy->dev, "register USB HOST notifier failed\n");
+			goto out;
 
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
