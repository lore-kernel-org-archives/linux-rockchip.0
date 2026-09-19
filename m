Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E0A9C982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYXlDMXNZIXCCvZlS20iMVsm/Rz+zXikhStSbs3GIc8=; b=PhsdXQ7zRiqSx/
	LoHrA9u9lwZO9EysbfTFL5beezLBwyckj7S4Nwp/lqLeJOI2m02WcVr7ib38996WBsuhY+RnIbulc
	pHitZoYkjfq/9ywmBK+oVAJ4Vd4bDo7YylhJoQaGQu+QprNsYOLKPMRxcz+/36YiVZFbNeil0Gkek
	lB1Hqc/s1amri1XO3ck/Zw7YW9Jva2qSFsfYzvDqZuhyhxShB/zDdkvQdpi8wskMQIKOhKzy985l3
	4BUiB6mN0un8jz7ei5L30w8wyjcLKgrrLmkRrj1dguHdQeGhrtFHrE5BalIPsDxUFlGQnKUUlaKVm
	GRRxtfKLaJBfkIBrz8DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYW-0000000GHOH-31ou;
	Sat, 19 Sep 2026 12:52:36 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYT-0000000GHJD-0RGn
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:35 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-39e0e245eadso664869a91.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822352; x=1790427152; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=LDsfIlXSVUYbBEUAu3h6Zm0Dvk8g7CTh0ycAqhVugLcwHG/QGIMOJhaulXbfKDEfd6
         3EeBJrMgGPLe3LD1NyS3E6FUau3ppCm1MaXAuP/0H7DurIpjVYyN5dHxkHS3kpDz0PRk
         /jwEvuvx+4Oi6zj97k6hpCMoFFU2tL15a1OHvA00r+RLzqdIB+SEgRXxeWKZ6hq1izWk
         hDbdu6yNvEPIlI47qvDU/mJX6kuUy+vZQYhs9yQKEUJN/OgTlHYKQgHcH6vUuq5r5q08
         kqkapCyfNxyEW1MtviX55eJPvZD+HuiYJvD/IPJRJdKuk9b6IDqmHcd+wsjMTHUe5Gl6
         vQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822352; x=1790427152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=s/eBjsMbUu4KmQPd6dfybXXRKRWzlAuXWPZqO5pNdlA=;
        b=ppOUlTHOrpiD8aPzSXiv4CUImC1Q9Weba0WQJhAskfSvD3ofXmWEjxncf+5/uFyJBM
         9uOU34wEve1v5oD3I9Lz/MoTAz1u0kjrxouBcHh2sYC+nbpW8d+BWFR1DUgEw1Rf3p8P
         1SoPbDpUaZbEuWWXiRUY7OsCCA/M7b9KHTgTN5XmL9WsdBe9ItC2Gg9Cum9Xl/vS1Jb6
         CH7iu00ZilJcYj2q7PRdq7aG3sifSftVfRejyYbN95owqr/0elCY9F78yZz3c6wn8W12
         4M00j9UP9boxS3r4oZISuipseureyXdxkVJ4c6RIICIbryGx2sYtjk62iFBN4e9VuSzw
         oFOQ==
X-Forwarded-Encrypted: i=1; AKwUvBxJcc62lLWdVScPKjd1JE08OeFDat4uEo84lqh+/p1bU8wQA13oZNJ+ATRy6whGuCdlVxT2fvLziBslvfRFSA==@lists.infradead.org
X-Gm-Message-State: AFuF++ksfbSNyrZne22JhvX8nI3CEKqtNgwvTG58EfuzSyrJN2HeV42I
	7GHYWcwpdATP+bT68q3zV1cL7U7XMcsCmVpV7YH69aWq19xtO+97xcRu
X-Gm-Gg: AYBFou2724dnVLrEJT7whZewzR69RqWImHcER3JFuirt4j5cghHBt9vQ44XrpLCyFjb
	kv6JD2eniccgLhyWCObcVaA5gAheS9ECdbVC5VJk/MAZDwQ+V42FqfW+4AD/ovKzTV99c4CDeFy
	I8AAOgsf9HU7U9jJfyVmK/pQ280hJ00vxBPAHp2slagOG/b02OqH2ZVCjfh2NdoiJkaGN15bpm6
	zy2cKggTJWuHfcLJUx1U5vf78F0G45rnBVkpXtoVyO7HMv6anjhPNwa5cmlcsi4E7+vOMmEmAO2
	o/D5OmilYceRbnbirtgx3o2xxk7Q6Yu8Db053alo7+12XGW8nhZZViIey6EyguCslFietb4wOQ3
	v21iKtX9qHBOn6a/0uIxtRmCt5bWf5Unq1HYtpkESfoQT6sEfk5gdHwEmWE5/enVh0r7YpvIQpB
	Klx4iIYpwsIeKLZsbESVT6nErMoPSWSEX84yE6FoKW56OvAgB1B4QdyU17GfsrLTO9j3Wsww==
X-Received: by 2002:a05:6a00:14d3:b0:878:37e1:aa74 with SMTP id d2e1a72fcca58-87837e1abe3mr1531710b3a.54.1789822352406;
        Sat, 19 Sep 2026 05:52:32 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:31 -0700 (PDT)
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
Subject: [PATCH net-next v8 06/11] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Sat, 19 Sep 2026 20:51:13 +0800
Message-ID: <20260919125119.2107089-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055233_165772_B541C0D0 
X-CRM114-Status: GOOD (  21.62  )
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
