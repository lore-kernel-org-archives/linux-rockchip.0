Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B350C982DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X23w5rpAbUjaGp4USF2QORFb2E/PKuv+IGbCT5/Okis=; b=Q6hgYb5DsIx4cL
	+7xU3NaWt5CG+mth+EEOpsruBNrbC26DjS/aR/a/Ygvj/YzPBHPB38dijn5sgY6iLqw+IX2Je2D2Y
	BYv8PoOzNV8Yw4X4zrUijpkELL0sr23TihrQ8GEUL7NejuYPlSJbrEgFR9kqYBIi7hF7I36hlz21S
	q0iu6z/AHNf1Bab2Q6JHdnb2JxtEPC94Y6sPYzn/BQ327p8BtYvjHud6jwhA8W8lOjxobhFlmydk7
	c5bAGbm76qZZz7zaToT+LG3pKJvbu9mc8v2003t3vBBDlCiSq1lSdJgLq4BU+XtKcp16jcbvmhhn6
	OnL0s8bPrROxFMnJaiRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYn-0000000GHfW-07Je;
	Sat, 19 Sep 2026 12:52:53 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYj-0000000GHbn-2HZO
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:51 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc1631a57d2so1062716a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822369; x=1790427169; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=Y8moyQ+nPriRmjlpSoSkyos8faFnmEDvS52TJOYK+1HMYls8BVVKlRVdW1e8tdOC+V
         7REIRihLJPIFHhO5zydqmYYSRQQvRn6zwNN8NDx1sm4Eo7VcRkfrSXwwyioMix+B0unh
         BtNLnEYHHQuthYF7TfUVAxZDAgKNajJPidFwSH+jV6Ra6glN03ksBoyhSnS0y3g1zSp0
         mXDbaSj2F5vraK7g/lBa7MiMYX65DX0RkfyLHTVbFwcHTWn2g7T9UFushhFkOU/unjAF
         mHrhcOWTGtB+8Dwin2o6jnrewOSINQQ78j2JnSb16FsWACSa1ku0UE5rJVqqLIE9IWd5
         fcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822369; x=1790427169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=MMgzfmye6T+gpNJ+WAnciv8MvtI7vkCnEoAE0zy5TFf8KOlIFwTpkwX8GCImHE647B
         M3Y9IbONyeYm5C7aiTSfngOVxri+kSRrzBSXomeD03YGk4ah8u1A8mHUz78o6Osx7JbW
         Lvl3PI5GDeaNnKPFa8DwTn3GUAkQZNVpifLnV/94W/j/RKDjVtmDONHoDsoByXsgc/TB
         HXDBZiIv68mjTH80y7m5E6bskb03WYHhDnryZOw07F6YV04SOMRx53SNlBGI7pwgBwS8
         nZWjasOjGk/lcEda1EYXLlWcTgNLTJHob83+bDOn0i+Wgu24uB5UcjrN/RatvYSWMGhC
         +l4Q==
X-Forwarded-Encrypted: i=1; AKwUvBxXxZK8pzWVr9O+aRIqmFTJOJmpG7wbP1N4QYe2x7yXs9wiAsnk79M0jikjGUgwSGz/tlNbrmz4YswXdE4EtQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kU/yer7zzEpAVnD+zu66f1fWFGZkpTheYbOqN7HQ7eYLq/Fkdl
	6R760rlN3c9akYKOBhMsYToP3Zbqiyqa20PWnfyYRzHnPYbrbcDYiuMh
X-Gm-Gg: AYBFou1bIQVTy855dDTXJs/ZoQNMFOMGtc8cBwoQHbLxp+oN5IgCd/pbSSqtpPAqLAL
	nBTdVfGo4ITqgqwIO3AN0Fx1oJRkZ81BNd6oHvz3u4iBfro6GB4FHGXmLlyHetwQsyIl2ZHBnx4
	vpTjbJ08We7SOh3UOfyVR4IoOe2hc8+GEVSXlHxJeoQp0SKBBY1GXRefhOhnzI9Z7hy/bcpUZxl
	lRGTznosVHZ0O+MOcsVHtiKiMU7BQKj8awJ4ribUHx6fzxcP4UT7+8atcKr9d53HYcCM3tDZt1Q
	i8ezW6eZ5F7QkU/ndCJY9G2eXXdbq3/DgkvFIEfGiNEEq8Qr9NopkqCZFZZwS01bw5+TCDWc+GT
	NbWioKHZHJu2VlhyfyA3EDG1oh4HDZtWmsgy49YkwGTq/WevY51toKODcnMUk0lD3qXE2VrgeAM
	qnrRDTIieOCZAb3HzrU2cb0nWbZuV2Aifg62KaDCjxcmXXksLPAHIvFF2zGJr5xRH2K9LfiSvhy
	RCg0v34
X-Received: by 2002:a05:6a00:2990:b0:869:9298:ba59 with SMTP id d2e1a72fcca58-874d84a6257mr9842225b3a.0.1789822368852;
        Sat, 19 Sep 2026 05:52:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:48 -0700 (PDT)
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
Subject: [PATCH net-next v8 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Sat, 19 Sep 2026 20:51:15 +0800
Message-ID: <20260919125119.2107089-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055249_633651_7C493352 
X-CRM114-Status: GOOD (  10.63  )
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

The Rockchip GMAC binding needs to describe the PCS reference used by
the SGMII support added later in this series. The property will be
parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
only SoC in this binding that has SGMII support.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..bb7540e838033 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -120,6 +120,12 @@ properties:
     maximum: 0x7F
     default: 0x10
 
+  pcs-handle:
+    description:
+      Specifies a reference to a node representing the PCS device
+      connected to this GMAC. Required when phy-mode is "sgmii".
+    maxItems: 1
+
   phy-supply:
     description: PHY regulator
 
@@ -159,6 +165,18 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
+        phy-mode:
+          contains:
+            const: sgmii
+    then:
+      required:
+        - pcs-handle
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
