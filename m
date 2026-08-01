Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 832C1C55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DiQCikhcWQpl9x02H369I5WJGeL7b1iv0Skmjd73aM=; b=G/7Vru1tDsMdjP
	EuPft3JvVRiSojun6/j7CYrZ6MVPWTkYcpm2rkZOxza1as8kbhrZxNUquE6H5n24JbRuE49TH97tV
	zs8OgYASloPKAoJF/F2R+3Ih6QdMLWxUiFi0H5iRXkrdIVdYgXOp3HokpYJ/iiETcSp1jJcd16BKA
	CWQMWKLiWrX+uMtC/gn/okX1jX2UVj1vAA+AYGBhyug1mZgUkkg2oeO8NSfYZLMWoJN69dWJ34X46
	LMkcNEzwh0o/w4QOzgkYQ1jW55mxtX3/AV0TGFxBAB16F0zjK0MaBEcKm93uV/O4I0wEcGT7rzzL7
	9QBhZ7ooRRCSHBUSx56A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAd2-0000000EipS-2LRp;
	Sat, 01 Aug 2026 14:23:56 +0000
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAd0-0000000EimJ-1SmL
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:55 +0000
Received: by mail-pj2-x0a.google.com with SMTP id d9443c01a7336-2cf41b07aceso8571205ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 07:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594234; x=1786199034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LX6e13BQ6UJAH9yya+bOU5LhJJwhDdd8JlyZZCveOd8=;
        b=pV0crPLoNgcJtO+RBIFYYodCpPMjTuDMnvAUSYsvEV5QMN8bkdNNamn1U2enrj+06w
         qbX8aXZHoq/PxwunHIjk0BYwHO1meQxT4loTHOJ754Wwv4WcstdcwdBfBfyGAH9S6sQU
         6YHFn0jed18751thGmLXArgoZgGzWbCeS4esGsCGHvTpKWN8VyJ40rDB1LjDLEIa+S2C
         ibJMOQ6/wBkxPDtxb9KgCKlYc+QI32oX2PfGR+5Q5h2wjgt0Pwa4M0SClQ9ykF8r+uun
         MwF/rRL2ho+yiLEeQILAYArycUyqImpv3Y5BNxiPwpiRYSY56nap0fDTKqJNV9G8VXMB
         RNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594234; x=1786199034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LX6e13BQ6UJAH9yya+bOU5LhJJwhDdd8JlyZZCveOd8=;
        b=ha04a/p/9fJv57phv9Cm+7PNAvHc7oehJKnu69BKJxrL8X1oq6FrVkVGm/YxS+/6qi
         LTKtZ6AjnjkppQVNVf83LJiD94TrKQAnzqNgN2uAlA6g2aTim/Zfu5Qq7N63vdvVjUc0
         bSBgbHsDo7hgfRFq8bcUzu7t3pUitymcN/z4ojEVkOUPwCwYVMPZ4IJ9CetGowDKaBUS
         uY0QbprQpu7zlZe5h/vUFc7Ce+0ZykHei8hKP4dWpYkm39LmFqI/LPjsEQLYPoNPUEKJ
         VO1+0mRhTF85MLa0hQhRHPZcnH9NhD39Pw0a7yPkMV9n/w0qdy9OlEaM8J2smdvwQUjF
         MQxQ==
X-Forwarded-Encrypted: i=1; AHgh+RrSFqJzpPtCAT9t/G99+YUmTrtDBIiuRQLATjEmZ/O31+5SxbW8JzjK07ROIgqqejMUfrH2AyjvMfcgV9pxIA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+Rx0F/UEuB6LVdUanpmX22WS6lVbBdRcRtEgtyQFU/QA/zMYN
	eyvLXAruKmE3kzQvnB+j+7uxQ3KewvIYk3G1IBkH+kx/ilQME03GUNjc
X-Gm-Gg: AR+sD12sI8JJncUhPjN7Jl/LQ4m0isVzbhpXvco9GWFXNxSqxNJXBiixio0oFY60de8
	f+PezmTXOVKPDGS11iRdXnGlI4Biii8kQ1WE8xt+QkHlvZU8gqb8z23Q2c9zTDNKFgvjCdG3S1B
	Zk+et926vNGmcshz3Upm93Bq6ojRHYy99hhTNTTAAl3OIntnUvaqxW3tB1Gpa6Qc57PRNsUBXLA
	dVSjoVGDFPAQ4PQuhWfyv2IFFzKMj+xb5fu790aul1fJUF/dNEyN63W2JFaA2VjpcepxDS4ykQV
	PzERDEsQGA9fFvgTgsgHp4OYDC9IHBxdluo2KJ7n9hi3z8R2sFExQflOk0Q2EUffjxAWVcPxIrE
	8cYD27p+Iec49U0kTGkCExEpvaGjJaTy7gm6oCngz5Zmpg1ZPA1xEHt2VlV2Cq1p+DF8skY5fy0
	RKEUePAaQSA5wsyz1rjBowPCrsLtdSseGf/ZJe56O1MEYmi5EW59TVNlg=
X-Received: by 2002:a17:903:2f4d:b0:2c9:97a8:8c19 with SMTP id d9443c01a7336-2d052474babmr36307755ad.44.1785594233641;
        Sat, 01 Aug 2026 07:23:53 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:53 -0700 (PDT)
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
Subject: [PATCH v2 06/10] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Sat,  1 Aug 2026 22:22:30 +0800
Message-ID: <20260801142244.679437-8-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072354_404978_E7D10FEC 
X-CRM114-Status: GOOD (  16.41  )
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

This change has been verified on:
- RK3568 (Photonicat board)
- Wangxun NICs (no regression)

Tested-by: Jiawen Wu <jiawenwu@trustnetic.com>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs.c b/drivers/net/pcs/pcs-xpcs.c
index 0337e2bcc0125..28e98449e8ac2 100644
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
@@ -1089,14 +1094,18 @@ static int xpcs_get_state_c37_sgmii(struct dw_xpcs *xpcs,
 			state->duplex = DUPLEX_FULL;
 		else
 			state->duplex = DUPLEX_HALF;
-
 		return 0;
 	}
 
-	/* Clear AN complete status or interrupt */
-	if (state->an_complete)
+	if (state->an_complete) {
+		/* Clear AN complete status or interrupt */
 		xpcs_write(xpcs, MDIO_MMD_VEND2, DW_VR_MII_AN_INTR_STS, 0);
 
+		/* Initiate the next round of AN */
+		xpcs_modify(xpcs, MDIO_MMD_VEND2, MII_BMCR, BMCR_ANRESTART,
+				    BMCR_ANRESTART);
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
