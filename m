Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A888C61DD3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LhoxFg5G5n7yzemV0549APMVAdfyfd81JwCK+Ymk6s=; b=D3B+So66dKU449
	99xwiEh/Bxbg4i5Ac4eHIGjMbxmttMarb6rZfdJnopNLmCjBQCGaHUruJDmyunYzr93+PsNWRgfVK
	KaZ0YRVaUU8cDmquHjw8RfCOHzur1Td7AjJtQpesaX4XTTC8cdB/BoMPy7sY7S7Q1ZkCKIytSrR7d
	mWIkdSdSmJ07q2vnAfdOKSfZb/56+j8W7dE9Tszv41LQ9SdF1kAWEDuDCINPKAjM7EYwzHyBQZJL2
	zf+z9BJoXcdWFd9+kvsuTka93q0AJYbjJuhEgQpUQdYq0YGNhuhj6YxK6xeP3hftfjK5FrMYq3QhO
	oO9eWFvf3hN0uZpNNiiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0t-0000000CPqt-3rq8;
	Tue, 01 Sep 2026 15:03:03 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0q-0000000CPna-1uyR
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:03:02 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc150711112so775497a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274980; x=1788879780; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7inwahIcNU1aV9djAHi258zSUQz0eW0dslHEgzobBAI=;
        b=d2gREqKo0lfb8VyXKMbI2RQxOylcy9fOyBXo93yvSprdqWzAFJw2p2xTHBtA5FcQyR
         PUnk/AOhLz3FoCFxP0poCT35ndljecYU7NfPrk4Ifv8lIsHaNihV5YgT3gh1SGU03g3k
         7l0HeLk6RAufy4ueiZP8il1GMsfhF0T73tAbOPdJXcwQsnnyJV+deppEwVN9vlUFc/AW
         lEQa0XjrY+FaXeptQOOVCYrrbHiU1dM3k7MbXPETLuD+B8NP6K5yzpCqLsIBt9pEYCEh
         OI2OmAXx9Or9eZJfkPnLt+j7ykYgqq9JDSDzPLQFgJ3PFRvwSSE/xtoFUV+cxusSTECo
         dxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274980; x=1788879780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7inwahIcNU1aV9djAHi258zSUQz0eW0dslHEgzobBAI=;
        b=VSlOsHqkkyc3yP5XpDi/rfl88DYdjBk4sTi8KQs1j6TNw6AG8M94P9xZS881WHB24c
         Y/1C/5HH4wew0Bc7lr2WQRvG8mRBQz4YyCZ3Ehi4h0mzgvjxmsATnE3tDhnNoQLKvL8q
         nQebNZPF9oGdjIFmzdK18AAztXx2Z4p5qKv2L+uwXqeedAJuTpZi7Wi0qluJL4Uo79MR
         f+vTS+F7G5PvajxIb+V/oFpvTCviICsyi+8f8bPWqwnx0q+3mGUvpaU6RHi1qIC2b5o0
         6IerfgacsNbfbhX1ehUma0MODan8tsuAgsnmHw0j42v6cKBVT8/ZxbBtPInC5M3Xoi03
         ToFg==
X-Forwarded-Encrypted: i=1; AHgh+Ro926fjyJb4bzdPrqirJ0hXgc37VH6460APN6WXI/6ztQtlJuFknQXN11e9Fuiz/eyPQZ+pFOJcYG2jRReh+Q==@lists.infradead.org
X-Gm-Message-State: AFuF++k6VswBra0w3FunxDCcTyd95SOazc3Gvqi5opopZLXJaAhFqA8c
	+YXTPQ77WkFNKVk7g8VA4uEYY93d29FgPu/iliHsS7fZd8C4FhaJqU5v
X-Gm-Gg: AR+sD11qTfT/y8Lrmewi4hdW3ocX/XS6uPTiHHre4YG3xXEiUkqggEjSPuskPmKidve
	ntNaUkYH/sy0VrjM0HmRw5/j4r4xzx8yJOo73yOYiGc6TMpdX4jrXx5OexcDpNvTO1E2+XFHPQS
	Uzr2kdzhpgKCVViJXYDHyqTnXh3NDyB57WCOr4TlUOwbGsjQdu8cwLWNjzoyK5hLcsxf29X1csc
	xiLI1k60ig3j5Ltpe0/cTYnPJMltxsI8Z9c49yzChI585AJUzpwciuxGiom/RPKeV2es+Y1dM+8
	roHlBB5p4OOBumfjFLPTqbMF2P+j1xMJRVNqpXMeY4InDKXSBqDKNGIBAZqE6KlM3AMCiQW5748
	Cmxbbg+khJrCbjHqh2mFQmlpcK4fIsrO8poZEU3X3CDU5uII2Eti2W2pwCx44G7JHs2dNuNe2l0
	hkIvc5cDUBqWUMHkCX7GnipS3Gyu48brcUdriEMP7w02dnOnRMA7i+3JOgQag=
X-Received: by 2002:a05:6a00:3d0a:b0:848:417a:d1a6 with SMTP id d2e1a72fcca58-85b5b321d25mr11818840b3a.15.1788274979663;
        Tue, 01 Sep 2026 08:02:59 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:58 -0700 (PDT)
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
Subject: [PATCH net-next v3 06/10] net: pcs: xpcs: add ANRESTART support for SGMII link recovery
Date: Tue,  1 Sep 2026 23:01:06 +0800
Message-ID: <20260901150111.141037-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080300_521390_AE517DB7 
X-CRM114-Status: GOOD (  16.40  )
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
