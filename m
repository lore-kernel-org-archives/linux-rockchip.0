Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F57C982DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=ayYlZCIw+V+xHI
	IVAQD8Fh7In0raJdEok47B3z5Bga/gH3CIvW8yQBBYst8jTI3YEBXLmt7Z1OVGI3kmqAw/5qKHDoH
	dBxlXoAJtcbHuW6JDD0MJ24HFfuoqghZByy5R5Xw8PZfo3DghUMfWaEJTGv4QzSW5AY64nCfHkC6p
	gf5jaKKYgO76bs6IRF+ziYfkCgx+e83FMimSNsQtB0WPdzPHh9fpQ5ejdPmOrVsJ9qNTzrBFNQlEu
	TxGKubT2vYJE5gPCGJOk7FspEIv9eeoNsHFNY3l0fuxQ+d04mfOLLuriVAyEfYDRut9lukiZxzzEE
	MtWAVC5K9BRNCYoh0knA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uY0-0000000GGrN-1JTK;
	Sat, 19 Sep 2026 12:52:04 +0000
Received: from mail-pz2-x06.google.com ([2607:f8b0:4864:3b::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uXx-0000000GGof-31M2
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:02 +0000
Received: by mail-pz2-x06.google.com with SMTP id 41be03b00d2f7-cc4b14f0364so608657a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822321; x=1790427121; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=WG0ZlNh2tVttLThqTlkqbuQ2iF2YklFJllKmdQb5WXnnjPbWT7nVQCnj6j9GnEdWxI
         KdxqNJ95nYOf1w5nIq8Wu+/X3L92ETDGy2h1+EXoqHxcEuy7NwrYVcLrgUSF/XFis8Rr
         c5P9oB6JW0sx+OZiRh0BJ+msNNiV/8BnqV5UCIO9neM1/0iKyuUdlUCnPYNBUihWK7by
         CZTsOIjrE90OFJR+LUDtINq0XqKt6cPN19AdSb0jIOwqxkK3qaeRQ/WREzSOXxAnwkd8
         +UWTx6katJqevn2sYBYcqiQ+c4fupMEdPFn/hboKiv0KCinxFyy9TSYpXnTb861lAgiO
         ZOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822321; x=1790427121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=z/4JewKofax3QgmruSTbQZ+8BfUDwaEc3/qiE0n9TXpI9xx+5L0bdTL3kWf5Qes+To
         fiVnv5bXroSEInTta0dwm8erUxyOdSeTIAGowP4p+l7REMIDqF8Ugi42ly+RzKRx+sPj
         n2Bsvs1avNJdXozSEnJNkhSIAp+Ab4NiwWnCS1RksbcqpWuSzcOgXYayZ+Svi67mu71P
         hbGCuolfDG5wZt+yHKwWo1W4pM6+CM2J8YddjSh2Gw6Hp/R8tH/UpWEugsRb0vnpVPVW
         tqfpPK8Ecvk74CnSJpN7vmqZLJ9J0P3ks1PvbFQ96klRXo62UGXRovug26ciX7vhkNVF
         +5Nw==
X-Forwarded-Encrypted: i=1; AKwUvBxZ7eLo4tMU5jrCPZX98y1kao2jb8fhDZFIDeKUbwAs/ynFC/vc392/9q+9xOR5CP2pw4w75RUj8fdTqD3k4Q==@lists.infradead.org
X-Gm-Message-State: AFuF++lG3tkcOIkhFTm3YnVor55KdSd+/T6aVaQ8I1Gln4wpqV6Vm1aY
	wx6V4nKPZNbC42FqRQStend0Gsmd/G88kaXQ0UFAC7G+d255BgvdCXg5
X-Gm-Gg: AYBFou0C6QWPaWSRQBG3R2/mqLrmmNG4NjL2kIPGFY9BfgSMWYo2GiafOAIDWok8Kn0
	u6oxyDxGRooLGrH9c7cRdve6aACl2sEGBfy2vAQwV8fWDBhpBb3U8upn/gmzoTRvWO4GYVZjCwc
	GJGYS2IGzsR9wTy+QhTHsihjSSOZWFRPV2Gmo/WKyBAQe4PFaCQJSY7RDVunwz+G3iCiMgvOedR
	kg2/sqUcwRATaIdSf2/kfsN/fcmA3faqg68rOJ9JLCRJHqtN0W0KOssjYp6vfbGxTvNDqa2xmfr
	okLsePWeCS3PKiPZm6UNpYznL75AKnFoK8nfISebG8aVisdetUv+/Dhw0gMWP809lIp4KwF7euX
	0aEOMTJSmWJtyRwtWk5erEfdvNoWHpOqNtHeRQGp6PnfzKwpPAxMFD1WMqj6gX591FWFJChpRs4
	n5B2jzjlVifAwaWulLPUXLpkc7xhjPrK5tKvkojkqXOAK3OnIThCCgwGR4z+ZVoMN/sE0Hqg==
X-Received: by 2002:a05:6a00:9086:b0:878:3783:8a82 with SMTP id d2e1a72fcca58-8783783932bmr1483263b3a.52.1789822320744;
        Sat, 19 Sep 2026 05:52:00 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:51:59 -0700 (PDT)
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
Subject: [PATCH net-next v8 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Sat, 19 Sep 2026 20:51:09 +0800
Message-ID: <20260919125119.2107089-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055201_761308_E9F473B7 
X-CRM114-Status: GOOD (  13.48  )
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
