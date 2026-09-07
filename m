Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32FBFC79FA1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LhoxFg5G5n7yzemV0549APMVAdfyfd81JwCK+Ymk6s=; b=1BBHOZuJNL2PRB
	fS4m7wYGhZhrnqVr9LAB1ydCQHagOBA7zwtIEy0658GE7Hms2rT7hYP88HDEVFS01lT4VIoi5Jmut
	+QOL4JS7H2XefNK4EE8Sz1ELgZvBmivdoutWgFM/o4LsjUZwrI4VKassYV3/IsFb/nmhquHkC5B5f
	rW2nx/+olSRhR6VCvg+iDyka7DWBs8kLSYfAjiezsTuJDkP7frjwjk0xi7c0w4mChKV6rU2xR/UvV
	GKE7FXWSY9sE50EDYa8syyeZYrF151pNPQRN92iYbIab2Vs4/FPtjKwEw3KwXGl0zmQj2wUHeXxv3
	3IRrV5YYevU/mo1zOgKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRP-00000007CVb-0Qmn;
	Mon, 07 Sep 2026 15:39:27 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRL-00000007CRr-2SWi
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:25 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-398e03cc38aso1351273a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795563; x=1789400363; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7inwahIcNU1aV9djAHi258zSUQz0eW0dslHEgzobBAI=;
        b=DdlvZrb/FtFx9oUG/Ujjay9rsDS8dnf4Ev7rwG5hvSB0IZU1wMKhvGuDlywHrADiUm
         G6Rrc8jCVFQharIPEtvsNKPnRatotOqhdFDWTyK3ZNMJyoGYUNAWFS3QFm4FWdvLCe8i
         Dt5z4+Z+bdd/7x+7NHY8Cw0kyx1ZSiQNE9mlRsUfz1AxtFcNdSOd5HcvRixjwOlOtpJk
         j3aoeZHlp53zI/VFO8W6l1rnuM1k88fjfXTQ5e7Pc/sCEzF4mzOM3UD1CICjgsqJNDAn
         xQz8NAfp9WPgZctGIVsI8yxsWjAjG3wmtqpYVhXWGfi5XBWlNIrCAnhZihQJPiESUAND
         vmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795563; x=1789400363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7inwahIcNU1aV9djAHi258zSUQz0eW0dslHEgzobBAI=;
        b=BFcKkEFOEvzetxdOz13z0e84+vLvImHookzXcn06698X84fb2BTOA4xCjlmxeXfthn
         K4+Bs1DwT8jsckxQ4QIa+g+27ilRL/x43dsCFrplQK7c+xd69fR5DPjVAEyzSK0sF5iD
         bagntHRfcNrkfF8/ZbuxLahi44NFhGFmr8fUDCpJEu0i1vSlOiDpAotLdaj+u8ClmT9i
         q/ZuO20+Ds8VXY0wg4SpvAupu8VxVy6jIRyw5EWOIBwWtHSA5+a36d6BWgefJuttocUx
         54NHTEp1T+ugUnLKBaVCxN/Msiy8JkrN5Twe5VXrCaoEa7S2rqkpKYQBvcIHF8gCVn6D
         K1Uw==
X-Forwarded-Encrypted: i=1; AKwUvBzHqD3cyK35jXhpVXdbzKzjOoRAWkCIgadImkEBkYrU2xDY7kSo/W+6i3hyXxqW8AwmRErutKmSdglfqoE/ww==@lists.infradead.org
X-Gm-Message-State: AFuF++lSUZ84wZ7FDwL9RULNMl/57i0HWSb4bC11IKqNoo4GAg/sQfbK
	YJ7KuBScEY9pAhRh3sUh8D23L5afUtiNKT0ytLCGCOPQQoCC3tr8M5Cd
X-Gm-Gg: AYBFou2YT3TAXMTVybeyyzFJEiP2JBsvO2FuttMTrYI00LpO9kdcvThBRr+BGA4Gf2T
	B8qF6KJTmgyybfS9juBJa7Q15sNrhAXm20OoP8kVLKMlvFL8usWH+uHYq2l2pbdyztAXPpP7WAh
	SDAML2O82+dDdQ8S1CpeIBAhf2F53eSu7kUghi9x+qLpujFSKqkKOZkCl9HiGwIYpF87q30Anto
	l6bxcr3Iu2/STTpEcvcCp/N+mYOS1FdoGoBMhZknkel5HdphjbXY+lJzYGIx8delKeOcoLKLb4Y
	vLCn1x0v24Ck0zn600ifj5cTPdoVDL9pTaUVBsWsVyi6S6LpYac+KBoFq293aCeiAJufi7EBAKU
	xoWsDaWcfi/IxLfInXF6MeYq8Mn1H0KrwssBET32qo7Tf5H1H6kWQ8zPMWLI2zSgidoRXStCI/C
	utyWtZLPYR3lIZqAb8Vlj8nd8FeyOWXnLKzofa5kXZszUTKefH+KVYz8IqzxI=
X-Received: by 2002:a17:90b:384b:b0:38e:524:8797 with SMTP id 98e67ed59e1d1-39b261e79f1mr34240199a91.13.1788795562857;
        Mon, 07 Sep 2026 08:39:22 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:22 -0700 (PDT)
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
Subject: [PATCH net-next v4 06/10] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Mon,  7 Sep 2026 23:37:09 +0800
Message-ID: <20260907153713.2572547-8-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083923_624207_435C457C 
X-CRM114-Status: GOOD (  15.67  )
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
   negotiation process.

Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
Tested-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 0337e2bcc0125..50b9cdf94fdaa 100644
--- a/drivers/net/pcs/pcs-xpcs.c
+++ b/drivers/net/pcs/pcs-xpcs.c
@@ -816,9 +816,14 @@ static int xpcs_config_aneg_c37_sgmii(struct dw_xpcs *xpcs,
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
@@ -1093,10 +1098,15 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 		return 0;
 	}
 
-	/* Clear AN complete status or interrupt */
-	if (state->an_complete)
+	if (state->an_complete) {
+		/* Clear AN complete status or interrupt */
 		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
 
+		/* Initiate the next round of AN */
+		xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+			    BMCR_ANRESTART);
+	}
+
 	return 0;
 }
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
