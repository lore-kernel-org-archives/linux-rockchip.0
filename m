Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4257DCC6B2A
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 05:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xAon6Tm+ktIOhJe3Qg/+q8MMW+b0vW9ipjFMDjPecA=; b=Udi71EiZVyp2BJ
	6tNHn6CZP0YoD9SpwTUb1WWWrKWUIZ+y88VgiVmKXQ7uoJeqDKTalwrhXnM6HRa7RAYlrrRcXgH0T
	wme+k2nfbK0JvhaAtG36MOvbwg1T8vqjmuWXJDAWhszYIpCxtchuf3c7Xk1wFBJ3KwD5qolmwWVgI
	T0JQelMzb2W+YwoRWiXcmqkOM1gXmM7ZsKLnTMPHMgwzyisTRNEzIFQRVllkU6UA7o10s4v0pCh1Z
	2Uahd4xi7AY8Ds2/Qfh5GGf+HK8J/u8YdH8KEpkCK1H85wuGB8IdUZUseGC44xCTd9SZIeZGlJxWR
	xjuqJD4c95YXXxs5Zn3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxDy-00000004SKT-2s8p;
	Sat, 17 Oct 2026 05:44:54 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxDs-00000004SIl-1FQJ
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 05:44:52 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cd66d7e32baso36527a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 22:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792215887; x=1792820687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L2jHQ5uSsWE1tJZ2r8Ki7n0PjxWkIoR+7RH2XBS7AsA=;
        b=S8GXOQkoRVa4Vp+MctM3oo+VKKIOl2U+WEq93Xw2yQPz6XRerUSpD5OiKrtkB65pCv
         qMeqOHGMoX6Xsz14e30KNYAsmTMj/LToq58pAd0L1JB2RH1lzRk4EWyOHMzihBxFvzQT
         5EDgwS66mwQxxKACdjwByQRZlznZljGknYZ4WKI+vuX/aDuuRs7mxtO69Re22KRa7DC2
         bMRqq8+fRjETOaB2sKBoOTq6WwBOcy6bQeCsi0G9AO3GEZfTzKwr172JL8rEKELf5Mkr
         wloopGTiIq6jBip3oRhAcG5xS5+NgvN5R1sWLpUPqCJM/XMZQVPSWevPXJVP/pcYpAGn
         yu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792215887; x=1792820687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=L2jHQ5uSsWE1tJZ2r8Ki7n0PjxWkIoR+7RH2XBS7AsA=;
        b=o9teI/2t5djFGWOI4o56PTL5j/OZPI6RHGxiGGU00g1cw6dr1pdqE6hZrPg/G3DH7g
         /gu32m+Zvk8PIoehOmHNf60baGEeoTq7BeDaFhkYDyCQ3O7O7V++cm5LTRd/rZySJzJP
         92Idi7+ejshlsNR7sJsGRy/G4U/GYkUYh6Jg+W/cAuJexWw+qpXhpxB9hGatl24XvNvE
         q16hyu+Vd6ibWEBne509SbwD++mQJJp5KLnA7SaQMCemCDXK6aZGInCIIS51SgBmwZ0o
         88O6lFsml7INl8VvdepvH1QRqaa6jFFmagSTibTz/LH0MkQL/mKLh9InWeuHwSAUJDR3
         UtcA==
X-Forwarded-Encrypted: i=1; AKwUvBwm+K4iRJFGPt4LLd8u9jnCQ8KZMZo/vQMHwDA6+xzXChDqFGl4yRkJMOCKGgO3KJoGhTARLwpzi8DsOIA1yA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLK9g9/IupT9MiRgqeGcIvZaYLjN9OHgX0WnPnthVFXssfy90nH
	TlpNgu7t6u34zhXtXEWyWHYSbGFkOc3XifeIwpbzL8A74PbhX5XlzhgG
X-Gm-Gg: AYBFou0rAMMFcuyJ/jy2xeoMEEBlFPk71ERbzovt2Ok1vDAlo1r3qypYW/Ez5BwiS6w
	sSepc74h0i78eJyZNx4S7orWuKL1eJpxfGv0aSdLf2R+6B+o0dXCrglAhZCzGk5URwsZ1Enl6CZ
	bBwB+h6Nnlj/kDfu/uBVV5K39dgxfStJQg2/VzeIwmgTJIvmqB4S4m6idttWpXH7hdJAxkWK8Th
	O6r9OUYPoePQPMbxvoxs70N3HrwAIp1fZS/UTUqcqtky7OvISCGpNjHS9OoplWimojJf81kdR2P
	b/5REvcovoSjiiawWfqy1xHd5K3MR9ZHGGKG7P8Cx2+Yw4aodq8kCpbiG7HpmWgWfuqfX0MihR2
	IZ6QIUz5i3yO076y/6BXJxW24jKdX6hDPtryj+f+FZCTDUZ4wXLW6zVqXzv8ciH3r5lIwHtxiDS
	w2qDw9KovUSGlze8kYi3qn6+k2gUSWVPz0Ctgxg+B3PTKUIcQxNVD4gz/0R7Dx5Df7tLjLfQ==
X-Received: by 2002:a05:6a00:3386:b0:89e:fc56:a25e with SMTP id d2e1a72fcca58-8a04cd2efc9mr1245701b3a.41.1792215887340;
        Fri, 16 Oct 2026 22:44:47 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57269315sm1958225b3a.23.2026.10.16.22.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 22:44:46 -0700 (PDT)
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
Subject: [PATCH net-next v12 1/6] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Sat, 17 Oct 2026 13:43:59 +0800
Message-ID: <20261017054406.1828061-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261017054406.1828061-1-coiaprant@gmail.com>
References: <20261017054406.1828061-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_224448_342351_831EB0EA 
X-CRM114-Status: GOOD (  20.62  )
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
