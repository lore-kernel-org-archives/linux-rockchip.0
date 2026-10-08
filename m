Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4450ECA600D
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 17:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xAon6Tm+ktIOhJe3Qg/+q8MMW+b0vW9ipjFMDjPecA=; b=stSvKK4FxDj6DG
	8AYdddrokkQOREWKvZtZ7kfys7pnHHe/xYaIuV44PwqQ8FBMyRw+e67c6xtF/SP31xJLLhbFJLY8K
	V7nHaNtp/KleDQuWtIAWeovMlHtO8KlUnYTPF0aWkAZwET8Mg6Ev84M43kTe6M5ljXvKUPu6vy8A2
	yuy/qLyM3HnTjAxT1LGs0JXHATU/Iqgc4geyZX0JA9hoOY5SeJFup+ymKYvBzoOkLTztWPLfsWDoC
	NF8lEI2x2puMq3Q2ZU7DBLvcw0OXPGiQM7DOscJ1Je9b5Zy0i+HlVy+gT7uDCzOu8cW2PSlhBP79L
	JmppjsNFJHj5it0I85Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsId-00000004odg-19b9;
	Thu, 08 Oct 2026 17:52:59 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIa-00000004ocE-3NwI
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 17:52:58 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-3a4883304bdso1448712a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 10:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791481976; x=1792086776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L2jHQ5uSsWE1tJZ2r8Ki7n0PjxWkIoR+7RH2XBS7AsA=;
        b=cLXhzhDFPyvvVSgl6JjFOXgCke5lz/i+qIabE5e0aKYm0zrUpS8/iHo0qiGN5vhDyb
         2/y20XDKPsNvfkGQq0KOMf0vsQ0/awfLkOoVHoStFQOx0SvGO7jjRhFkDZ+gKgKYw4C0
         i04fN6YhbzjMeQUlN4O5t2lvuml+LIEjSkB6mzRv3sG6qtqg8yp3EO7S2t/0LbqhoEYd
         vGiuyJoEd42TsxABqppzJyP9vuqX3NGFBW6WShmqjkzQ6Dr86iXFMF9vRZ4wxpC2sxwK
         GOjnXHC04DTc2HaRNtWh9ueTVlNStHop7GcFks+ndXFtmOZ/Z1tlVOOIbJXhs2eZMJNZ
         n5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791481976; x=1792086776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=L2jHQ5uSsWE1tJZ2r8Ki7n0PjxWkIoR+7RH2XBS7AsA=;
        b=Gkdj3mmichTcAtVQjLNPoNzv3XMb2kSb2Rq9NdcoFU3BakWEVF0BujanE3xGUiKPyE
         8EizYoW0iV7fCdkI+i6aViM8VgbWy8HrAOBbjPtQMSKdB0A5l55/oN+RDhZ9lpc5WoHG
         +kz8YpPoBko2DczL2i1ifLEmMtuHZVQAx7UB0GADr1VCOkkIOL+szFeyNtyX8flM7L4a
         Yt4edQYarW4+U817m+2kJR6cwWE10Tb6mGkuLAe22W5zDBMKUG83dsUoEjIv2LMMD6TF
         u65kLx7+ol3IAsSGzV2X2s0DhUEfLC4PdFS6dmb0hKGM+lkTSVfjrDxCriGpRAu1KxwZ
         z9cg==
X-Forwarded-Encrypted: i=1; AKwUvByrSx5HYPZ5qaEqb1Ztl7FGApIuHl7T84xq3l2xW3bgjTL0+1dELnPjkjJG3VIrYETUJfPvmrR195fakSc62w==@lists.infradead.org
X-Gm-Message-State: AFq9FYIdj46rXhC/qgCFjeCAp2RN2OVRfW28xyRQF9vumCd/HwMiWw5f
	NlSQ+ZaMsB3C4iUaWBCJWmMf9OxCGKKtHYLoE+hgSlTDO0MiaD4fr4dC
X-Gm-Gg: AYBFou2GC2daKtl4Q8/KPFvgwn+ioh1f/QE3vqsHz11+++QRmf2F3YpzWOmAlRhMFzo
	VTqdFE8k+Ai5pIMnE5eeyLBBbrT8hmQqTmEbRDOSMB3yVD46NyOrLyLZ5xB6aqd9VYL4vq7xcTI
	IC1dveasctRRY+h2wKL0R31Sh+cc6eWJCd4A+tD1+zcu45ayfynrB1IOrnngjHyfGci7sU/pO3C
	kTJBPDuKtI0yJnbqvI3c6Q2ZZiMfQdRAx61wkLoHv54ZWcYT9K25Q0XjjZcHJx/6mV7kZlhGUbW
	ubrNi+pvYe1J3Nt9xCenM7PQrtKzfj1x+OwTV0LYmNIboAe5vHZLCw0L6Uop8bJgNrsOyl2n3T6
	8AWKPR2vu7/kjwzCCwKptxqaydRV1cHszhLGEfZ+GuF8ZwOfROEPzLpXt1YNJ1WKqIKRjHV3Lpp
	oLpLi7nvCg55gtk4opt9d11KCzgZhzSjChGPLvdIAz2Ogs86J2FACKtKltl0UN2lTVdVsz
X-Received: by 2002:a17:90b:28d0:b0:3a8:768d:70e4 with SMTP id 98e67ed59e1d1-3a8a1b59a17mr5454105a91.17.1791481975880;
        Thu, 08 Oct 2026 10:52:55 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab3277c459sm144332a91.16.2026.10.08.10.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 10:52:55 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Jiawen Wu <jiawenwu@trustnetic.com>
Subject: [PATCH net-next v11 1/6] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Fri,  9 Oct 2026 01:51:55 +0800
Message-ID: <20261008175225.3375274-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261008175225.3375274-1-coiaprant@gmail.com>
References: <20261008175225.3375274-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_105256_857775_A51E6B7C 
X-CRM114-Status: GOOD (  20.93  )
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
