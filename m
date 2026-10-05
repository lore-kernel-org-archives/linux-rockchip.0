Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DD39CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xAon6Tm+ktIOhJe3Qg/+q8MMW+b0vW9ipjFMDjPecA=; b=DLugMdDXOoprK7
	RNAXdd/Fkll6ZFyCRaq75p8lyTa/ipf/M90vXmbwGqf/vXkzTdSDUg2FZPk8gj/PWHOGStsKIyPSF
	5Opgdf0SSubyS7nMU1xtRWhAmw3pUUb1CUjcX2a8vOO/X2b9/hJnCYNyz8TT42xbXhgFVxGXbCQNy
	qS0w4lK6Z8qlzWsUBl8PZvC1pZAZZEN8IrH6HrGxLODmNBh9WYMVjTOWK9EGiqMpeyiNubMvdr6BJ
	wRFLhC6IFd4usVR9EcVJqX2q+qT4a/0o5S2n9c8c/dKOJkvwIzXx8Xxeiz6Ab1EM34umQMhvHxfe8
	qrt7RYuRuyB5cWKshxQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrCs-0000000HGA5-2d8t;
	Mon, 05 Oct 2026 22:30:50 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrCp-0000000HG8K-3bwx
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:30:49 +0000
Received: by mail-pj2-x08.google.com with SMTP id d9443c01a7336-2e2e52f7b01so14475695ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791239447; x=1791844247; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L2jHQ5uSsWE1tJZ2r8Ki7n0PjxWkIoR+7RH2XBS7AsA=;
        b=CJX0yVW3pjzqKU41CcSyzrIWt2kyY1zFTlCTpq2IngC8rWz2YPZcFPGMXf1E6woyRU
         ZulE0Eh8cLkpmnQIhyINw/Tk9n332Om7RwvYBL8Ej3pqIvBSsKmpLucpuWl25J1nqBQq
         Vg9jHVHzqj9GT7Fbc0OijinZcrarOu6PRlsY7ruApVmKUaAtS1V1W9Gy8H09KW+Kj8Y6
         WPZ4NTRGqvVqR4N133KzXN+jbWMOYOpZ13N0kIcJrxgmttd6G7eDI8C2Gvila2Msa5PM
         rkMSmayn0Lg9tSS/y3X4J9kMiEZ6BEXT/cGRIDdoHwJQ270+4Tx5Md5EgY5jWYRiN6CK
         kYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791239447; x=1791844247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=L2jHQ5uSsWE1tJZ2r8Ki7n0PjxWkIoR+7RH2XBS7AsA=;
        b=sDW49MymuTuUgn6f03NmmmKXr4niu4tiL+2E4fbo3vLhTe4owpTy4Bs5I6IObQk1+/
         TBfIx0qjowszVAErWPWrmOtGQi6cR2Ya9OV2Q5pJu+qrpoBQ2lVTGFJtWO17V0r4m4I6
         pqihRfX5K2Y3cYzVVmceqn6JFAV7Nfg6fXDz516K4Ug/ZZl2qOcKNwhKbDd3Pph2E3IK
         ibdf0igaDPVltSd9Skx0KOSRHJ1CmW+v2d5QGYfeAxuEYdulmDqLm1q6iiTon3zbTmu6
         gk0EKv1SjbhCwnKIdax+kEi4UZgQdXMYuHLJJEjCU/3ZjyzdV0ZZBceNp9cxQ3wwaBnA
         LV4A==
X-Forwarded-Encrypted: i=1; AKwUvBx4Nks0XJwDW4JbRAv0M3y4bUF3a91UVZjREJceAJ/ACGjO97nNiYBOHLHOC1vPjSwnYMqzPh5wMgxaUBM3rA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKbQZYX1HmN24GNY5L9u+sshjBdaITBD/towsRqV0XbY1suqbmX
	MRsF+5GVFCquegf3b8PQhsKfaF1tsVG7Gy9DzoN3DVLjHuSi8EAfj7fR
X-Gm-Gg: AYBFou3S2giwbk7a7AKHA4xeCyR9zeZ/+w32dn3Lc5EHanv7zujpHr3TDEK+y76inPL
	D9jKPwrNNxZB/wh6+uufG3DQW7F0tizDNfave+huXrI3WQb8PeNzwfpoPaEZgm3wO6g/2X1cQKy
	LNjXn+2StfB1GpF/3LZ1CT1FTKCpWaJhyZ4Hki7MFcV0byKGQ/mPIGoQlMNjAVi7G0uAjo1mw7I
	OcZRuBK8Gdx1M7j2r/FbrEGScDHrPCW6J676tNz1Y6ZGq+OE0B+IwiUukhaXabeZSs3KIlCVe/s
	G4C7TqP4HRYWSMT4XLr0RdWkHpdF5b3tkEPJ1AeOfibdPi+/hwvd3OdtG0YGeyVwvnif/vOLJo8
	y6Qn/O0hLbz3hSG+2+dcGRVrU4SVGEkVpNJu5YMqUQ9mGSC4WUx/TgB5gn8LBv6C6ilqoM3pzkt
	T6AAYqd9JzUmi+e2CV2UPZOZ2tm7tCEWZTC3PP1CggYXdWYmmx3uFL0c1yXTXB5jwsSStG
X-Received: by 2002:a17:903:3846:b0:2df:9a29:aeb2 with SMTP id d9443c01a7336-2e4ea0e485bmr89825175ad.3.1791239447197;
        Mon, 05 Oct 2026 15:30:47 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e5a5f05321sm13203705ad.78.2026.10.05.15.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:30:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Jiawen Wu <jiawenwu@trustnetic.com>
Subject: [PATCH net-next v10 2/6] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Tue,  6 Oct 2026 06:30:04 +0800
Message-ID: <20261005223011.1124347-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005223011.1124347-1-coiaprant@gmail.com>
References: <20261005223011.1124347-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_153047_932386_8388370D 
X-CRM114-Status: GOOD (  20.91  )
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

The restart cannot go through the .pcs_an_restart op: phylink only
calls it for 802.3z interfaces, and SGMII is not one. Changing hardware
state from pcs_get_state() is already done elsewhere in this driver
(xpcs_get_state_c73() calls xpcs_soft_reset() and xpcs_do_config()),
so the same pattern is used here.

The latch is cleared before issuing the restart, not after: clearing it
afterwards would discard a freshly latched ANCMPLT from the new
negotiation. If an MDIO access fails at this point, it indicates an
unrecoverable hardware condition until reset.

Also clear DW_VR_MII_AN_INTR_STS in xpcs_config_aneg_c37_sgmii() before
starting AN, matching what xpcs_config_aneg_c37_1000basex() already does.
On the non-inband path the function now returns the result of that write
instead of the DIG_CTRL1 modify.

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
index b415b93d77c15..6466e0ff2a98b 100644
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
