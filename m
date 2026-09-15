Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E23E8C88E53
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDjfqMRCEUO4zz5G3LhF/esDwZ5UCLIVBtz698gg+1Q=; b=Ogd1r838XTsVjn
	0NgquX9Uv/YnJCYA9Pwk6T5N4OxSdcGQ9HM/qbYKshVvlvP8jejjQY0/FdGlTj+fGLx65Cq/rkBHz
	sSnasY1ytuziDZgG2mhlidywAjO6ZPylCNyTbosMsN9aWEOCRg2aWklWvSNtrpfAYHdIkYvoZWbmj
	hZHZL2i1FH3laePKw39P2mpi3X8L/RiSUf33Q33Uz2bIzsirGMgi9v2VWZmmsdAFI5C+9XGjA08o1
	BqVnH+h6dQwAIgGd/AKmvAbw/jwOoUvQeaORQW8jjUPTdjs1DifWP6nA98c5J7XIyKpX6pOC5qgLL
	E0QCVP7SYoSrDvBa/sEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRc-00000006Y0V-1uZU;
	Tue, 15 Sep 2026 12:39:28 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRR-00000006Xbq-1tpS
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:21 +0000
Received: by mail-pj2-x03.google.com with SMTP id 98e67ed59e1d1-3859292bb51so247642a91.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475956; x=1790080756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Yjmztt9FS1A5qxNaZfWYg6PvzN0Znz9LRYwH9/qf2Qg=;
        b=kFFOELM0IIPP2w8nU98hUf7NC64kCzK7hgLrXnHJL10AbwtN2/2vLzizLTIzI87lgh
         Z9EXHtBb3gi9uqVaFoYGPcqbaZmo8gsJlxFbz+l9og1Pk3qL24FvCrgPrD2bqt2D2sea
         GhO9pHNht+Mlmqe1Rx5qmzqSUBfSSSmijnv/aB39yUq4j8L0kY2Os3lREiUQs4BdEO8m
         n+NIhqlwGSDsej1KbZ/A4b5KJM3HCUdN6H6kLLhIrPAtEMy9VgmnSoJvhWjrBGDxz/Dw
         knIjL6bDE/lkWU8rUIrs3L1n3ImyGDCbZwszkXmv7+tV7UJ/UhhqhjT2J98uobYg1rIt
         I/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475956; x=1790080756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Yjmztt9FS1A5qxNaZfWYg6PvzN0Znz9LRYwH9/qf2Qg=;
        b=o+Jwr6G7mibpFxSXOGUko65ICLASELFLOsdIyd1RHgSqu4IquO1pOq0NHlbCDXHCjt
         3lm6q4ykZbPKY5eX1Aq+8lcXYBtSyTEhtEFnpD70VUITB9e51qzhXPRaSZhJ8yKjoadu
         Rw7c2ToAfrv+m19FuMm0QfuvC5i6B6216Kx5L5IDRbEyjC0WyeLkNkh18R53/dFAp/58
         ZJS/y33r/LAn7ChKkWPyNwHp65XvMnTGESnEcNeFtfEuZnp3ot3+l0BrsJEuEZv1ONwV
         zOFNJoN376yeZ6NvFI+9RpovuP3RtMo5L5L3Fw3qPQuudw9nUP0mZJ4bVHnsd0PN3Lf7
         4mwA==
X-Forwarded-Encrypted: i=1; AKwUvBy3As6IzxdD8hbsT6XzDBWTLk/ElqpcVPYLvJ4jE8X7UV3Y9Iw1rzsHLGzv8+e5mVt84Clc2595zsrBZgz/oA==@lists.infradead.org
X-Gm-Message-State: AFuF++kQFU3tB+sAZKI03eKXAmTwB/Ca482+D7S7N8QCIgw0EHIH1BoZ
	8ZD3UnHFScgEKR3sQ+3VUliY5Ny+v/LkTeuKTKFB/o6mRIeUB/qMthAx
X-Gm-Gg: AYBFou1Ogo7Ha8t5xryDDN3ICuEx8UDU70hy1A6unCd79zT+rC6JxHmj12eC2vs00Ja
	ZiI0ObJmJ5QD0bS9Si29vbAXiorhblaUikMRYmYlW8dLnXoIg/lqN0db2s36CRrgZrLASDZgPU2
	R9/pOsIUvky+3FD7TZW27RoTgzHKFXT4odiS6vRLKyHIBhrKpqZmuwA9in1ekXf+XvGUzVBzyQK
	7OMN8tngJ9/CL2swggaJZGOtkWAoIuVQK28xEvqjvUXQ2lf5vGqsaI2uu3FjMd74rr41x8NS79I
	UCPle9KagurekFknXJOUq2NS0CZgIJSdIaRXVn+2B9KTDdrjdE3sIovE7uP55Yvrqt70KkzvY1v
	wBUAbJp6iHJ9IlGPq+xJEnRdNFlehbfWncFTJd4J3FjOJ46R9+R1xYOVzl/u1bpdi8jszq/wR6S
	psc7QSYrD+z3jH4Jq5FwNLC6jaJoHMZESuYGPSceIpaPFVxkIJFx8xRftP79pu1hT2D7te3g==
X-Received: by 2002:a17:90b:498e:b0:39d:feca:f48d with SMTP id 98e67ed59e1d1-39dfecaf6bfmr3959422a91.3.1789475956259;
        Tue, 15 Sep 2026 05:39:16 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:15 -0700 (PDT)
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
Subject: [PATCH net-next v6 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Tue, 15 Sep 2026 20:37:55 +0800
Message-ID: <20260915123802.1561724-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_053917_619620_55BAF003 
X-CRM114-Status: GOOD (  19.63  )
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
