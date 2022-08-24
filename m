Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15D6BC00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 12:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YrGTaTjoS7ai+c4eEwkSeCwlIWxge9SjD6z8/gXcWck=; b=g+lqX6QtnUONpu
	GaRIKKWw9rdg78IrezFarblxesmQaEqTfH/3dyUxjnvmF8R0LBe4U23dNInbIwexlRLJDOMaul0OU
	r/ha3eCJaLfB0p2zq/508F0w6Tax4WiBAkMs+bL1FN9KtKg6hOUFmOQ8NgYRB+zam8Q3uU7Z85ZQD
	sxpUqfQNqowfCjmocCxbaocIL+jyb5lU3lnvCCCMmmkQj+J4YCQftcmSJWzghSwBveGwy2y1xeDNe
	cy2bg+F4HBZ3cA9ssoa9SvV8cyZJw+s4QT8EsmAFIGhJfXNbbuBuD42tW25PY96dy0bH/BvbAnAwR
	O+BKsbXT7Q/x2fW61ouQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQpSQ-00CnsC-TO; Wed, 24 Aug 2022 12:26:06 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQpSE-00CnnP-Kc; Wed, 24 Aug 2022 12:25:56 +0000
Received: by mail-qk1-x735.google.com with SMTP id m5so12487971qkk.1;
        Wed, 24 Aug 2022 05:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=9U7sd7xcwxQ9yB0a4u1XKB3ZhZTZ5GAHw7+laA2TH8E=;
        b=LjZ/wqTVS/JtUiGast16cN6CBPLVniH3ADtIKMaZV3hsURfGFmIVil4M9bR1pUK1cP
         5tryb/YT3bfxcJ0PBCLAPl3WwAh9VUvYho/AZKWRcrmZ3Y7xFCHaAajSpBgNH7ulvt94
         wX5VFkW4VamGTzkPGKsRgQJ0yf5Kn8P1U5pZVDA2hT53DzSSoh1ublVCpKpmisncGAbc
         nVsKvJjlU2KY485A5+04/lwhJuhe3GaqC3zNnhNQ9G3p2EZ2lICUJcSuZjQ3mk2wKHhb
         UxhEJctSDH3OtYnt4itJaUvYQM08qJ8Z3WRIzNGDSC9ci6loz3ufJqV+oiTHY8e3CkI2
         g11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=9U7sd7xcwxQ9yB0a4u1XKB3ZhZTZ5GAHw7+laA2TH8E=;
        b=ocdw0JDyOl1pKxvQeRfiMjDz4acUTDPQzjOMGwzl1A48nubU0+59DODt9jw4ugfqq9
         qcF+nPB3B3ogm/TsNAJF9o1yNUajARihLsvXTx7Lv/PNf5sAA0rRl//8uL5oo5JXQLEl
         nMUUzYGgEI2uZxELEhuPQAsO26gvUooOsb56O3XOu/DjYqsm0J/uY3wJVTAdT537yYs6
         +j3blsqs5acyHIU5jNTu4CdVeqAdwoGiwv9toOaO3jtXlP6/Ce1MxxyQqjhDSk3zfvsB
         tI+IXo6IHnfb+qdWanf2MrFWM2VN10yLC39uURgXqLr4jDVZHpiVE2s+E7L46tfcYCq6
         HYpg==
X-Gm-Message-State: ACgBeo1l9c2yxRT8qqEjpCTxgy8h88qYaWeJHiZ039g9e6Nw8KXv8P7v
	keD25lVzYAaMYTHLsYv4tzVybslXjjxG/w==
X-Google-Smtp-Source: AA6agR4Yz5+Wne0chNlUFuKSXicK3OSjoAb8O4xJVr0Zj7ULRZu0USsPGwNhON/AKZbWM9PE2KkVAg==
X-Received: by 2002:ae9:e104:0:b0:6bb:fb42:1e93 with SMTP id g4-20020ae9e104000000b006bbfb421e93mr12431015qkm.693.1661343951372;
        Wed, 24 Aug 2022 05:25:51 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:901:9131::10])
        by smtp.gmail.com with ESMTPSA id x30-20020a05620a0b5e00b006b872b606b1sm14548248qkg.128.2022.08.24.05.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 05:25:50 -0700 (PDT)
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
Subject: [PATCH v3] phy: rockchip-inno-usb2: Return zero after otg sync
Date: Wed, 24 Aug 2022 08:25:43 -0400
Message-Id: <20220824122543.174730-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_052554_717953_9DD5BDD9 
X-CRM114-Status: GOOD (  12.44  )
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
v3
- add missing brackets around new goto
v2
- switch to using our own variable
- add missing goto to skip sync in case of registration failure
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 0b1e9337ee8e..27da5ba379c4 100644
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
@@ -1163,12 +1163,15 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 		ret = devm_extcon_register_notifier(rphy->dev, rphy->edev,
 					EXTCON_USB_HOST, &rport->event_nb);
 		if (ret)
+		{
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
