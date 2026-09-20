Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A06C982D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=e90WSI0+c6Xusi
	TbsXaiFhf3251QDzzYztr0l5QP5IZhn6hYyx6jNDxr5KiBJIwx42Aissttmqkbyx63esJas+fKDLx
	6Lc2DQSGJfuAAyswyM6NphYxYQljV7bURZ1idj/RhD4Be4QCLKq+0OMJvHHDtwz5+JxzmxImQAIy8
	Q7iy/WjSndqT9UzYVTlrlqHVO1CWjc51K2VYB0ERo3aw5KfYY1/nPR4OAnj0VoZMw6Hxj7367FTwe
	MyBoS2X6W4CA7YVO0Ht/+ELG1cTh+gbBp1BzrkGTV/rrbjrIGJrSUeCTbyp6g9LmDkKLy6JkzVsEC
	p9zrWja/hoPlXcnpkKyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kvs-000000008m4-37u2;
	Sun, 20 Sep 2026 17:02:28 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kvp-000000008jg-3b6M
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:02:26 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc4b1f7e8b7so867190a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923745; x=1790528545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=Wvbbk5fbVoj+UwZWKJPTPYpNc5wR0Wuzvd02/jc6fvabe3vMj0uEl27+BtuHB36xVs
         eZw9fDbeUmujHbHnmjc1hJBfISU1imi8AJb0tT2JnEA/yrVn8jH6viyuJ6Q6jdUJYFw8
         IldR77aKEGi3g64P86/YfftrmdZGllEJXZ8COg0Fe6m780VnDI2GUrAisVeNXFub/8qU
         CPJcwlxTVQVs1FrcFybaVxBavpKscL8txtILiT/wXxjDeL+uy3HiWORVe+zluYPY1H1j
         f6omiTqk5377YWFWm2pc1fkwLZH0p71SLsswUYoZ+PPPSEIYabx0gwnAMRYtEV7evPg7
         6a8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923745; x=1790528545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=KSK3TApVheifre2OLG2ol97R2Nv0P/aSJ+SGA7H6+RKA2aV+qK/0vyD4TXxcmlrdiq
         KtYqsIiDxg+b2cQiJKvFGbs0qOcqBM9Iz4yYCjOcrJ6ccL7ac1nYUJVe6P9l34nqdrQS
         I0FsycaqxfGTtcm++g6lOTX+Wvy+hBRlYHVkTcdhlUeKmFI6Xq4aXs1gbGxvp7Cjv8ko
         URob631w7E55ANiaDW4rakIU9Ob+MLSZexvGGKPPPdZhqWxb95Y4Zb+7GUKanLu3Lc28
         mOnLGvU7DQ/Mg+742ejUQqmg9okWBKikeSzChmNcB8zDTKBJLp2VVoXP7BodeXUIgZKc
         kmDg==
X-Forwarded-Encrypted: i=1; AKwUvBzVOwMdQ4W1b3dL8K2sL5SQnI0rJKYdtAmyaTzP7oJfLEF7ToOYUM2gg/YV138Xl4mWdeu0222DSQSK2O8iYQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lryePaFWhae+cICiDUco6XoUIk8V82oytlgJH/YaxvkqGk4uge
	9sFx53khcjS4Kne2IMFfA/YxUlhN1utyjuS5WW27Iv/6yQlbbIPeqRLE
X-Gm-Gg: AYBFou02AUVNDxcTAqJXqaKovEmV1NKtdra7S37acn8mKTWahhuENXAiVN8Z4NNOtk7
	l3zfHhMeTqdnyg89kXSiEb7wfRDtpVCpy9GI9B0ibsJCcb2plB6bUytEcTkrX3M682IM4CQ+RuX
	A70uO3jJZxb3EurTua/inkyBHiaatL5GbSgwg3BXxJFKwHoSdWwB4ahAX28K35Sr04hG545uX+b
	+WKtUYk5Jf0Z6IwmkMnGB0nOOs/coCRGOLtVn0CDlKGyn1WvxZMriLrWCuE9rc9HyjNs5ZjSc0s
	JVnw7eEv9i0qAj5PdyWM3tSK1dIYvA89uAIQ07pWuJbtJXhiuA6RP0C3spKQweV9U56XqpLu/Tk
	EzUjFrgfl3Z6v9gJ9sItXWCsDtMx6Z3OeZkmT2e7C63Y8OcHMPOYUHNlIq1iJINCJz5fjsdDMgI
	LWmjRL2fp/1Q8iireNol0PZRj6KyGC7npwM3SLk5llIergFJGqosLJwlFY5YUJqlwO5ZR4epfgn
	WmAsdEf
X-Received: by 2002:a05:6a00:298e:b0:874:708d:b621 with SMTP id d2e1a72fcca58-874e02e5f4dmr13003999b3a.31.1789923744661;
        Sun, 20 Sep 2026 10:02:24 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:23 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Mon, 21 Sep 2026 01:01:06 +0800
Message-ID: <20260920170116.3624104-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100225_897279_90D41993 
X-CRM114-Status: GOOD (  12.93  )
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
