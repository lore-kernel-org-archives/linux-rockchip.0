Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFDA8C88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYXlDMXNZIXCCvZlS20iMVsm/Rz+zXikhStSbs3GIc8=; b=gUltL+dGcyEl3t
	m1W6XMkLAr0uETqKO71gvLMQh6d/+L8/qHOoCQ5JYLbgzzwNMTF+K2K/vELgfHtFFPEIG1wyI01Cz
	XGoVdB5n2i47u8WQi8sJRYlNhWsY/7a5OjlithTjouic3uZKXyPuHvKZtXN7Xzfw+5YRWYc98dMdz
	eSSxk+eoBAqQTfsdvYwzj6mKSoJvJPPIRy6AchmAol16S/PrZB18TYgoiFc99F6ubjAP2KUi5W1Ht
	NdLwHMUcWzL7SxLLZsr6oAbkG7PNEyVqFDcl1AMUJdAD+hw9jXiJ0U6RmRV775H3ts52VACXItIIF
	ybppR5osxRb+Iqp9IVDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1c-0000000CTCf-0ytl;
	Thu, 17 Sep 2026 20:48:08 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1U-0000000CT59-1YL3
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:06 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-39569e136f9so64917a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678080; x=1790282880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=NOUcx1jTo5AAVU0+kMLcfcCJ/UzuQa9G0J1PXfZQxoe3/4UUer2t2AZq+mFlus3unD
         NAf4axxVtP3i/pjcf1kjI39wsb9vJfPJP6+uFf0yNEX/0NZbpThbWBMhzYgmMPzxg/ix
         J4HshZF6orWtu6wBy6VqGEs038kLEsUy5UcvxoWH5YbWvt0kyLKgjf1WccePDEIItwF+
         WWeer3HbMRUNOq5wOJ4jnNh6UxM3CVKMWg+CJN+qQSc4lpKaqPbUHkEc9eIilhRp5MLx
         7EhEDHdpczH6ysyjLJfR9ZGKdOwelvq8wwVp5V5l6TyZEZqiRfP3Pf+mHzbLYOHd2rtu
         urCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678080; x=1790282880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=rwUmK/lcTOEyk/4WwZ9Bd0v2Vjmwau/MbdyITrRwU5dvxfawg/jN1j9cDjGH9jQGli
         eNwiXYLOJW5B8xyJ+IGaOxXhpeAWxMyEB5bMMWf9CG4pexCAuGB/FUwy9WgJOMSjFUgU
         +bLoanpbLtxCoeWFXTt5BLu6w6Ya+dfrpJt08d3/dhL2yu1S4DShGbnIL7693AnKG93S
         1aPki50pvuiW2BPehTN9o4ALeIxpDYO3d59CTBjbwH7tA6I9p40hiozClh/NPPpyvTBb
         XKUuUcTzIRAKiVd8LrIip0QjvXDu2BFD1XTMVtATZ79k4OU8VUw47ixUalyEiLG8g9+v
         JIBQ==
X-Forwarded-Encrypted: i=1; AKwUvByVw2b9AXVPWAZVNNPnVb86Vwvro1ELbajtQQ4f8+Ahs01vtyqc593mF6FKc7cJIz3hJUTRsycBeNqAS1huVQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mcglpeI4kBUsIU1n8oG3lIWAjscMhtJf8PjwDmF75bgFMZba/G
	H6xpVKnCHQDg4OC4sq2X4GzIUCmr6qSJEkkWOKAYqsSBysZMmo6OIGB+GHpgMeAihEK4Ww==
X-Gm-Gg: AYBFou0ua1DSNtSaNz7YEpgUNNZ1kp2FrwenPEHmOidJrcIgNkBPG89ZoLaac0vdBN2
	cS3L5xr+ELB830mFPHY+/N2rTsioKMvvTq8OnADJgVK4mCAX3pcGMlToXKdFIsiME4IpvK1tcwK
	vsR9Ek3Whhxldgkts+OswjAUH69LxgwOqHJuBmsWPoQX7262KqlPFAkdf2uUYH1ffcNvGUm1fSM
	wjX6wnoNOqMjtoxo1nKURHMfhcOruta5NcfidKSWZHvx8DxQQ6FVeuT+rmrinHQz6l7oZMmN6I7
	Jemkd4InwjUrVVRWjeme8DdltJXnid5uBqoh1BdxTRuA9Bh6Uv+IIswWSoIaUkK93PjH01wtb8c
	xK35+SYYsxZrN4lyKqMFTCad01A3yRW3bNoX1DYlO1TY/Nh0Z3FvebORqflkLzN6Js1Y91B1r1c
	FmTAT126ealivTbtMqWOPXjAAkI5TQeBCLB/srjC+2jixf1TU8v7MusmzmkfPX04HM+v2KA6s=
X-Received: by 2002:a17:90b:3147:b0:39d:eda6:8a0b with SMTP id 98e67ed59e1d1-39e54c9ccdemr697045a91.21.1789678079561;
        Thu, 17 Sep 2026 13:47:59 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:58 -0700 (PDT)
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
Subject: [PATCH net-next v7 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Fri, 18 Sep 2026 04:46:17 +0800
Message-ID: <20260917204624.2427486-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134800_438838_B5651E19 
X-CRM114-Status: GOOD (  21.01  )
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
