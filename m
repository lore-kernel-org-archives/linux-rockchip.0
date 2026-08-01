Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F51C55173
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=GIJ+AlIujSWt++
	cB67ZnV2iA5qPSeRozpmY5bTXgm3fqnlGjZK/9C8Lx94H50zdHQCdD/viAuMV2WV6tGI06U/Hj9Fc
	UQUj7srDHrFPxGrkVUBC1mrPGyG1J9Eyh51R6whdTmO4e4pIm1Nz7UtnGsiaylQLM0YMEk43iVNg2
	PoO3fp1e/VlH/hWNE7zz5AAh8JXKtD+iDTaNZvDGm9aHi3xhtMn8datJtngziIzzpsOtY4bUOc236
	YC4UPc3jI6u/GRT1NI9uXMLj9rYSNgm/EBInzgNILwcRGh9Axas+QwJmaSV2BG9zHIM/zKZ8atsRz
	lSUcU+6AVf+ch9oOgRag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAce-0000000EiSD-1bCc;
	Sat, 01 Aug 2026 14:23:32 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcZ-0000000EiOO-46rm
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:30 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2ccc2e84048so11250305ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 07:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594207; x=1786199007; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=R14Vfh+uQ0GDS0HAgCXKR+B7G++p39WpQU0dEr9n4cA3jV+HI17AyPphkqokH+/FRX
         4l+f7BzXXHGbqCyxv8HF6PcdNJtmZLSdPVdwTLd/Lh34WoLKToJUScmKt2m568XrLl6H
         l10b+m8aCkm+iG2+BcGvIGR/pRTNVXP96CqC+elsZ5XP7Qs8nICHsx8cL0afsHbL0wMt
         ebgo3jqtIzJPaK2uZzxjuA2aO4OERyIxor4VnVGPSRZfoSjZvF9cTizdXL9Bqp6hhZ9B
         N+y8ysQA0HEbKSYgI0Hx8+dF671XZj8t8jVSTFFZR5epv5LGrQLJ5sksma7N4UP1I3Ob
         Q7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594207; x=1786199007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=Y49Q4Kor3JQEFNsF2Lc/lTgc07HhldMu0FgnB37KGCP7H6ZBm36j/D7SvYbp5DzkXt
         xcqJmvWvb/AwWMhGQIPbSi6ht+lVu9nP1d1+Ea0+P3kHjUvcFF/+0bHb9zoFMiQGqo1k
         MNFX+tHe83GRnermMGxfZGqed4efVzaIDCRkVpdJH2NOs8LtoF5hFpImK4iY/uodEaGo
         stKiYbMfaK3K/LSI29kp9hxxjnqKEAqgPRfpFRzukJtgTs1F41eDeN1agq3mgY5uB4Ia
         EhyzAcO3sxN2E39l3hL3fSkuaS1eql/ebBt16ex+/ULHs3U64gnnf9hkpvLurtYiQIDE
         NdBQ==
X-Forwarded-Encrypted: i=1; AHgh+RqZE4Tna2LP9zS8MtoUZZoK9eHS15ZlB1KIuz6kvkCyVIDeETbnzpNZ/WQ3w6eVT+SDMcmguy+5FebaPfRPog==@lists.infradead.org
X-Gm-Message-State: AOJu0YzYVxILNu8cApiVWWBMwo9hhX6rxgcFNO4iMWGj1TqaUitVE/GV
	Xjg0I6d2PnAIVB1BNt5pStVRv/s5Uc1ZpCiTYqVs+lqbadcBSk4PC5+S
X-Gm-Gg: AR+sD10VxN5q8U37ABIvd0XRa/DfIupMFQVgZDBGh+3As7HVt8KdP52lH5kql4lT3l6
	Yb4LnvawQjBGiGvrh2/dsvijhG35DuN99yBTufwMHfk/q3KBRpSyUQ2iGtj0FUl429KOQLYy8eG
	aoosSBPo0yNXzBPG3Wrwubt5EWxWhMKe1cv1FyKs/jhRGlq1p+EZHHDoBtDOTAtw8ZQ5cVnRzjH
	GUk3HPTtiXdrfTFY4ISYezhjX2m7cp9ib/gndysOviSN4GSalSamFfFwQVWjp0+TRtdkJfKG+cW
	oCWu96CvkLlJexZOEziS7bFNxxpveMQin1N7wCsH/5Uta5ZpfVJcvnZnG9M216wLkDd6AnB8jwr
	Cti25U81bvqdUyBQqhIYTvgPkcKctfaGuBc4wSPZlQciivmcs+obo1vrtek0m347XM8iazXNRtQ
	S3ha66TnptEHdw0Mh89vbUuamRM91V2G/Y95922kktVNgIf1u4dNPnaam6hURoUrnL4A==
X-Received: by 2002:a17:903:2b07:b0:2cf:a5da:705e with SMTP id d9443c01a7336-2d052494227mr37113295ad.41.1785594206913;
        Sat, 01 Aug 2026 07:23:26 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:26 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Sat,  1 Aug 2026 22:22:26 +0800
Message-ID: <20260801142244.679437-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072328_027581_4CE2F2AC 
X-CRM114-Status: GOOD (  13.44  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
