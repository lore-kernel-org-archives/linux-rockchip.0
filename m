Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC43CCA463
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 05:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83rsXStnp1SZzz6O1NYwXYamXy9MmqrjCD3re8ACAz4=; b=SpShAb30Y2A9Y0
	Y8pD9Bd/k5OnRQ54U6zshZzfOBbQnh4AgKmF/ETdF6iEokbdzj0TGyHNi9vfvaKzxSX39fXDdRjct
	7eVKFnYTcRa+lOaqNHn84oXJ9yqNKfhJlo3YoHtlxqBu2WDBc6UxDgz2fh9wkvE5rxDFyGKOedhzs
	JSQ4+O7LYdKWNfwbaLD46VQ39pU4/nZGDTJ9kWCd6vrStmxKzW9Hx1m5FGSL6OuPnYNVkEpOMtM3F
	KRsszWYoCYMfDUWMNw9/c8mynqqFCorM4G45FWUVoPASrIiPqi9L+D0dHig5dEWEjHMctU+9OmcnP
	FCZktEHE0u9RoMac5T3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxEO-00000004SYW-0qjv;
	Sat, 17 Oct 2026 05:45:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxEH-00000004SV7-04hr
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 05:45:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id d2e1a72fcca58-89d6bd67045so324100b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 22:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792215912; x=1792820712; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vxuxc5T1ripM4n0F4O5vkglU3x7CEQrB8YPn1E2u+7Y=;
        b=lekdKyUA3KkJYis5LhhnO6unafl/V++gwIkYc+xz6X6IUWDkDVDiZY7atwqiDay1Us
         wesbCm7yEwEeBH1e9GYl0AKPMPQzHCz2C4C5kwmkX/wNGIbkXL6QPK5tZOIrKN8mcIBg
         qkJE9z/vjcO6UyycWedOYkxaVV96HTAtNgzCODG1JylyBLrPKHwQ9cmzYC973gR6YP6g
         rP8kAWeCavljLmFJbXn7dLbhBYfUTSnHMb3fhLBmouSZQoU8GjmYuU3kFJ8ffmJTW0kH
         9KDLQX6sd7ni3jjJA/3fQimnVqhyKPhIMM7zNDcRHXrL22w1Lo9x0Ww3iM8If/XArbCJ
         2Byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792215912; x=1792820712;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vxuxc5T1ripM4n0F4O5vkglU3x7CEQrB8YPn1E2u+7Y=;
        b=kcZaQMkkY20bfHPhecc+wSs2/lBy8C9b9cSVpkd4Rf/suxK2f2xmQgO9FVR5Lr60eF
         k4hZofre2ey+/LQjBXiciCVMTZzBg+sac948fXax8ngZVzdQtJbKUVZBDhVcdJob7j3n
         FLInUy5w/z6b1dr8GY34+VXkt9oLcg1+JqAUSkdypZtSKjnbyqks2Qg4zupfdc5sLEYL
         4GJ0ppjMsyZ45VSqjQG2I4EpDZ77x+TGLyYkZYc6CFSQbtat7qpxcBXSkjvI6U5nDhUn
         F5e12j/NmTrgP2n6b/dP3ozMBSzJQtUslfCLE943lQCEm8nuI5vpxdFgHPxcTigRXQjy
         PSJg==
X-Forwarded-Encrypted: i=1; AKwUvBxD7fs4iFvDux/o3jvcFE+OQGp8Jul0/4+ScAp7f/HizrPgRVG9mkALVQhjimAb5lyECmRSf5TG3hlzJvlrng==@lists.infradead.org
X-Gm-Message-State: AFq9FYI4dH3B1OkQ4iPtenbw+m9bCtK9Mjm/WAc1ojeNJjTAfAsJMqNH
	j6oWuIyk13ynFB41dZCEM/ZB+CVMjoAv9HzVHEBpiuBXavNtgJQ0QaU+
X-Gm-Gg: AYBFou18Nzd4IdY0BnD7rn2qfUK2cCax5RfAOzdZKKSX+mlCW1wWXOx+5in9pL4llKz
	a2WxEDLigb616NveUjNjowDRtIvC1t0DM2ddmjRlu9vp01y7rDfEm7rmEwUCuWteN0EsD3owQiV
	5Ih5Hah9qqCnjR8AB/GfQXl1teZEwzDC2ru5cZUGjlec79cFS1jkh7fJ4OITfGBSytMBU7e8Mzg
	9OIjFyQgvIv25d5EZDrFjacwrVNZeyIwcuj5QAcePTOZCe6MY/Z1D7eYsC+3MBZyN3cIXoLkUL0
	k34HwGgh4Xz6rJ2Teem35faBxzsipmllAJOP9GJEL/BCa5vzBVDq1G9t3CgzzRhxKkvBYraHpgD
	sd08522l/sgaU/xrmctAahJK+6bAsWr46cxDZ7nm/HsFJsr540GzYWutcg4SyU1LiAU/nykt4Kh
	4qG3TwlLCF63lgfZXKXm3oXTFolJ5aWFzz//ANb7jS09oFrRPchg6ZOhkRLhpDjQF2abAI
X-Received: by 2002:a05:6a00:1389:b0:89e:7b15:d934 with SMTP id d2e1a72fcca58-89f2214f36dmr3388109b3a.45.1792215911894;
        Fri, 16 Oct 2026 22:45:11 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57269315sm1958225b3a.23.2026.10.16.22.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 22:45:11 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v12 4/6] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Sat, 17 Oct 2026 13:44:02 +0800
Message-ID: <20261017054406.1828061-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261017054406.1828061-1-coiaprant@gmail.com>
References: <20261017054406.1828061-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_224513_243835_CADDC6CA 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml          | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..c434450fd07ff 100644
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
 
@@ -159,6 +165,27 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
+    then:
+      required:
+        - phy-mode
+
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
