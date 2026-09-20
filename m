Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08755C982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYXlDMXNZIXCCvZlS20iMVsm/Rz+zXikhStSbs3GIc8=; b=RbJimDDmqN2jE/
	+YwvDm9ssmgtgyyEOcGetDZi7H+OZyYrfejv4s2kWivPkzrU4CjxJkkM6CWPc7Eh1+4tl8MtWXHWr
	T9IT2G4i0yAx+HuzINx4QZdXTIQdWUiHRhgsphcUBdMrbQnwwroBTqTBbYKpcSl4hIDQ6ldqLFhhJ
	d1tzi48N1HD8qRMiwwnU+9Hjm0WlCszwog+XwsZYf2nW5Rz+BXPvcafglS+8M0iK2KqryMYbqa34M
	XTkCdPcKY0pFBAOICznLTJBWtM4eT8aF1FJdF/2TK8dPiWXfDNnxnxJ5BAuOchP3QDVOBh4KPCB4D
	ZoTQA6MbIpGWkdZIqpFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kwd-000000009Oc-1x9Y;
	Sun, 20 Sep 2026 17:03:15 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KwO-000000009Cz-3O2q
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:03:03 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc4b1f7e8b7so867315a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923780; x=1790528580; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=gsN8FGzbMlfC7OUhde8pQRPP6Y+xsHUbEwzTFM4X5BYs1tx8XDRd+f0NZkdbJbaYrc
         u0ONlzd4f8bAEOPIJOFO2nWk+4jiJtS6RBGb6wQXJSCFJ+eTWvvQYIjGmU295I38av1J
         sz83CjIrtjPDed4MFMoLLgiylwb0nLRSxwfCO4A+/tGC2pvFQweDhPuqp3YJAMfwL+XY
         FxdKr3VhOkjnxfZAjkqYwUFDhONiXQjP6s8vkCUseMrfa8ddlwBKu24CmNfShTJpIswv
         3Cpl6T80egWleLcqxXzjq8nDXP/qVT3iKgEDHPB6qQwSzxoLG8vBSVvGJNw/uH9Dnh3r
         y42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923780; x=1790528580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=A0EpKbpGO7sebCH19xAlyt/s5EMACsOsk7ifh0JdKJ7U9F1EWMdI5xO2b70uY1nlPH
         ek/EUeo5dYmkvPAffbRiil/7wxBNczZQuTNwnO8libHVL2+EXGoMwdDfMakdVAHr3ZlZ
         o1+d1VOJHHsLhaYHR3KLlY+0MdDIZ3PvtJUWvO9dKT8OXuPo8qILbcgbbNU4+CJiVVTP
         vbiW+BGGaHC/mHKfHO2WGTJFRMx2S5MFWJGOKX8do9EFHshMDbigfMomoX7v26qXopan
         bOIkV/UFaFJzxz05em0MDyLgo1WmGR8n4eR+nCzouCuq0P/xviBbSLJ2H4hG+VxuzshL
         mrlQ==
X-Forwarded-Encrypted: i=1; AKwUvBzF3A7ABep5OuNxGA0Hlm+UWbrwfARJnFoLclRY+WkgtBcXhKyvcI4jkQAOdjT1YCPDzGKVWbN1a830LIcMEw==@lists.infradead.org
X-Gm-Message-State: AFuF++lAAWZNphA2dAraaTqzrT08SPW6xmA5iuBSe1rQ5iJPbF7ZGnoe
	Wkapq0i1BPzntkw9rJAOrBtj7nlRiR77D+xalzgJBpsPurhfADJzOamH
X-Gm-Gg: AYBFou2tsUX6lzv/4gG4TtW216z2jMVRSelQgtD/7IT74Am8relM0dGVuF3+uOUI/Gx
	kZ0sE/4DJOSlsjAgXzfkFeY4fUWdEyjzSjvCPDCvrLPnf6YssqZu8CK8E6m2fqhBR1RMj+J6CeZ
	8so4EMQuX38QHsiYoUBTyWC18yjdb3CoZoyk58Y7oHLDQfQsHQ4wLsLiYJt66Y2OXW2GxhbcECg
	L0fW9bfbZFDLshPv8z6isv9xvRfHfDtiAw9FeWCUI35xxng4/qi4dH9DTPfS64PUzjKl3iqNpdY
	vHd75Z0H72VGrbHmiuG8cdTfv/BYVwjBToYIFtbqdL7C2a+SO5ARrpKFNv5K48guVeNEj7sbrFF
	crJ1CnHhbQ+V8ilN+BQwrH2JjQWlY49m3s7n6p12NoPQvqe+gUXsoPHaIaLcNiTFgZMy6dk2O+M
	mNHttFAxrpJer1mmCWCC8o3RrwIQK/rdyLfhIekG1DQWf+b0RZbOCxEIR4XC/h3eQAvdF89A==
X-Received: by 2002:a05:6a00:ab89:b0:84a:29a7:f3b1 with SMTP id d2e1a72fcca58-874decf5c32mr11449622b3a.16.1789923780066;
        Sun, 20 Sep 2026 10:03:00 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:59 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org,
	Jiawen Wu <jiawenwu@trustnetic.com>
Subject: [PATCH net-next v9 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Mon, 21 Sep 2026 01:01:10 +0800
Message-ID: <20260920170116.3624104-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100301_651912_43E7A787 
X-CRM114-Status: GOOD (  21.07  )
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
