Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C98C88E5C
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wrkLi8CX8XV0fdoEvIy+nz9GF0sfOPoauX6I0mby/U=; b=RGFZFmblC19rp6
	ZDUUroM4ZwoUZmpYv3csxmbUxQV3jMjRRFIUfUiHP7PLHRK2Z0IyI/qbbJxeuBeeMcf7FoCHlk/PR
	7pTgOcrtJWOLwndQFmKxA8YYMLf645pk+P0LLJA71eThOU4ZMhuAbjcP0T4rvgdsmM3IDfaBTl7EH
	fxzM5X0T9hpHoDNSL2f0/NPAsHT5g5ANSnomkR6r6V+5IK2m6dV0NnfvVcrs0Wq0mZArlGyYHolMX
	QuL43hOg89AH6s4o6Ho7Bq4/hwSOf/jskGpcz14ZpCQSAADDV279QvAzkiJMwya2bWI3NVGfS2csS
	Pjszm1yfsJK2EVmjlvVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRN-00000001xJD-0V5n;
	Sun, 13 Sep 2026 19:00:37 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRK-00000001xGQ-0A2p
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 19:00:35 +0000
Received: by mail-pj2-x08.google.com with SMTP id d9443c01a7336-2db33361b2fso18528105ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 12:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326033; x=1789930833; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NB3JxtKcgkk3OGR3H9wZrN9ovALIkubofDJS6nyEOU4=;
        b=ruOyd3qM9Xr98YxV1mNBYdlPUtfudKsw0CpvTluyOJ2RqJduhZ9V7oIsdXQ41cQdb+
         Lds+s406vykqvGrPRFltBB1AnNHPEh9Ntv8B/2xymzJ44nTG2+ANQt2INOQ3YC4RHDmS
         PTr/RoNnTGjHlXJbG0EJnL0GInmJY3sXheen9oZNvo9+Ckmny5NJSRFdizdEb77G5n2J
         6x6O+9n3JS/Z+9sslHGML/1VersPm6vwC6xfN629ZGvakXZzD/+WT3+EcZwbSVm/bLPm
         Ks3atGPyjCgdjmJfyILx5ZhkXSPSNEC/5AW0N2JBt8g7mjeEQBQ0SfaRDI2jtl76lYy5
         TuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326033; x=1789930833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NB3JxtKcgkk3OGR3H9wZrN9ovALIkubofDJS6nyEOU4=;
        b=kHik4B/JcrZB7zerIgozrv17nSvzw8YviWkx6sBWtNwcy5wm6nkOwo8OIFVJWBKJk0
         KSY1AcAUBf7YfXxyDVOc0r9N8ZIEbrW6+USJg2fmnGl2QakuZufzRH2sjLWLhiZ6BP1V
         HZ84ehTm3fiGvYEz8cJwsl8CmS8SQb+QjrI0dPtDbRlejlsOg/4MMVIqU3ucg9+JSnIz
         1FJdVcipHhFm4ICPLGNsuw2CrVEecFpGLrU10mA7RCB/9ZOiirja93Fbw3CCtEqRghA+
         D5ZYIHUFF5w1w8rjzeG6oP/2STzxS3GmYpEwTRtNZnxyZOPGSzbgbv428g1K7BtLlBqi
         x5Gg==
X-Forwarded-Encrypted: i=1; AKwUvByFiG12wgFoLKvUl+BjxYoSl81Hncnqk9QGEW2OuKhml1GUj9bpCGQ3YTltOKY1+UyRNgXrMJNMeXZ+aeaTHA==@lists.infradead.org
X-Gm-Message-State: AFuF++lsySNIvKewphZRGJSaO/SJOUOrDB21O4UIl+sdGu4c+Sj9zJde
	p5PdB62vvrerfX10uNrqpYP7HlWLR31qqP0a/Wc/tmSGY1DWk8Sy7s8v
X-Gm-Gg: AYBFou0YU/YM42ybYLMAKOOv59HLHuz+seV1fEFYB+S7IDFI384wU6UfYEM4SyobHnM
	3HgtDbVrLemYrFU+YHxnqjXUexG4P8OEDyw2fXCT8vP72qMiokA7q4A3B39+BGUEwIdY0MMyBWM
	4+EZGA9pcq27wdmq6vfwSHjdiwC7xnGmv4U8pq9eOHG46YoLD/+la3mDXyBEQ/GIbyLZDY8l8aA
	OF8rDkqk9mKHeg8apJcGKFY2WEHMKExNKxh3P+esOhYoOONE1QF2IsrUBjnT9bxGej2agnR/EbP
	B9c02u8byzXgQ3akaKXUYkzZOkBh82N0TOzy/AwDdYKIZq8H5MgbaYqzBJzuY9vLS9nVatQ5LtH
	O6bCbhZJm39TM3Z/zRLBarS4y/y8RV/xqvNWEJZsSWtcmh7qLgrdb+of+gS1FELySchOggKUKRm
	vdacRoJPEAH+RkG/Jhc5J3GI8X6Nhd3Vt9M6ZsTjl3RbARNTSkkkFMRBa5QbrOUCXNHaEaNg==
X-Received: by 2002:a17:902:f60d:b0:2db:5c0a:f184 with SMTP id d9443c01a7336-2dd2a34fd91mr276627985ad.17.1789326032455;
        Sun, 13 Sep 2026 12:00:32 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:00:31 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org,
	Jiawen Wu <jiawenwu@trustnetic.com>
Subject: [PATCH net-next v5 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Mon, 14 Sep 2026 02:58:41 +0800
Message-ID: <20260913185849.907479-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120034_084959_6D7D386A 
X-CRM114-Status: GOOD (  19.00  )
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

On some hardware using the DesignWare XPCS IP (e.g., RK3568 MAC side
SGMII), the PCS does not automatically restart auto-negotiation when the
link goes down and comes back up. Without an explicit ANRESTART, the link
stays down forever.

Add BMCR_ANRESTART in two places:
1. In xpcs_config_aneg_c37_sgmii(), when starting AN, set ANRESTART
   alongside ANENABLE to initiate a fresh negotiation.
2. In xpcs_get_state_c37_sgmii(), when link is down and AN completion is
   detected, clear the interrupt and trigger ANRESTART to restart the
   negotiation process. Propagate the return value of the restart so
   errors are not silently ignored.

Update the comment in xpcs_config_aneg_c37_sgmii() to note that although
the DesignWare databook says AN restart is not needed for MAC side SGMII,
some implementations (e.g. Rockchip RK3568) require it to recover the
link after a disconnect.

This is not a fix for an existing mainline platform: the affected
platform (RK3568 XPCS) is introduced later in the same series.

Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 0337e2bcc0125..8c3875b6985b9 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -761,7 +761,9 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	 *    DW xPCS used with DW EQoS MAC is always MAC side SGMII.
 	 * 4) VR_MII_DIG_CTRL1 Bit(9) [MAC_AUTO_SW] = 1b (Automatic
 	 *    speed/duplex mode change by HW after SGMII AN complete)
-	 * 5) VR_MII_MMD_CTRL Bit(12) [AN_ENABLE] = 1b (Enable SGMII AN)
+	 * 5) VR_MII_AN_INTR_STS = 0x0 (Clear CL37 AN complete status)
+	 * 6) VR_MII_MMD_CTRL Bit(12) [AN_ENABLE] = 1b (Enable SGMII AN)
+	 *    VR_MII_MMD_CTRL Bit(9) [AN_RESTART] = 1b (Restart SGMII AN)
 	 *
 	 * Note that VR_MII_MMD_CTRL is MII_BMCR.
 	 *
@@ -769,7 +771,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	 *	 SR_MII_AN_ADV. MAC side SGMII receives AN Tx Config from
 	 *	 PHY about the link state change after C28 AN is completed
 	 *	 between PHY and Link Partner. There is also no need to
-	 *	 trigger AN restart for MAC-side SGMII.
+	 *	 trigger AN restart for MAC-side SGMII on most devices.
+	 *
+	 * Note: While the DesignWare databook states that AN restart is
+	 *	 not needed for MAC side SGMII, some implementations (e.g.
+	 *	 Rockchip RK3568) exhibit a timing quirk when integrated with
+	 *	 phylink and do not restart AN automatically when the link
+	 *	 comes back up. An explicit AN restart is required on those
+	 *	 parts to recover the link after a disconnect.
 	 */
 	mdio_ctrl = xpcs_read(xpcs, MDIO_MMD_VEND2, MII_BMCR);
 	if (mdio_ctrl < 0)
@@ -816,9 +825,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
 	if (ret < 0)
 		return ret;
 
+	/* Clear CL37 AN complete status */
+	ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+	if (ret < 0)
+		return ret;
+
 	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED)
 		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, MII_BMCR,
-				 mdio_ctrl | BMCR_ANENABLE);
+				 mdio_ctrl | BMCR_ANENABLE | BMCR_ANRESTART);
 
 	return ret;
 }
@@ -1093,9 +1107,18 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 		return 0;
 	}
 
-	/* Clear AN complete status or interrupt */
-	if (state->an_complete)
-		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+	if (state->an_complete) {
+		/* Clear AN complete status or interrupt */
+		ret = xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
+		if (ret < 0)
+			return ret;
+
+		/* Initiate the next round of AN */
+		ret = xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+				  BMCR_ANRESTART);
+		if (ret < 0)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
