Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B0F3ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 15:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4T2gurW+2ssgmK6PqTyFlbUIedxW4uL+5Wad4F0O+tc=; b=bct+dL89naDZNQ
	TMWAfuIVm1qTGNnbCCXT0Pz1mc/GUTZpXUQMcdd5+xUgSzv7/QBhuy2PMKsUkr9/xHFTemzpFZCez
	ROIZvsYFGka5exLZpP4dxogb27+XFaDGa/9kjKcnLg+r0VdBC/fsT2AYqb+TqZ3TZk+VbKwQyDYk/
	2JzuAXawYuXZIjZ/O+PLw+XeQtDhlgm8WiwYqBCM1DFPURsbKIlM2b9nG0TzpPRHBdw7KPoeFUV1L
	gMyKzzQlsWHfMNKO0yM/fCs5Jeg5L55aH4te1kxh/nBZHSr6xE1tbl72weMCn+oBgFZRmRQJiJ4Ow
	lHW9fjM0Ycvnt7/AcbbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT3Rq-000NR2-1P; Tue, 30 Aug 2022 15:46:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT3RL-000NFE-UX; Tue, 30 Aug 2022 15:46:17 +0000
Received: from jupiter.universe (dyndsl-091-096-062-005.ewe-ip-backbone.de [91.96.62.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E24906601D85;
	Tue, 30 Aug 2022 16:46:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661874368;
	bh=1G+3bB/tW0uo95ySNz7kpnmQxHlFCdwniLi2dIfbO8o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XVoWS72x7ccta7tvrHQgffDwStGPkois+sknq1dZA2PYlZAWM+3djuSM9+M62Hvtl
	 OaEU0mLIeaaB8ZsmhQbOjaNiTwRb9Buy6mAO/zA8zj/mXtPNpLLOESeu0skPx84qVj
	 35k88U6N47RKry6B+qFxdPmmRai91UZ8u4eVYQG3yvN2oxwJJvueZVjBn/6LBCLV5C
	 CKJ7auZ21NPZfZKl7xFmHPg6Tg60rV3QIFa4L0hXvLqkG7o9H+bbhKOZwSLJdAsstN
	 rgaq+NZ1yMMd9dG6Dj+B4sDzaLaIXV3syiS/XQjaH8WkbWR3eTUDGkGV0smn7eUmun
	 6lc6kt7wqbTfg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0F96C4805C2; Tue, 30 Aug 2022 17:46:06 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv3 2/2] dt-bindings: net: rockchip-dwmac: add rk3588 gmac compatible
Date: Tue, 30 Aug 2022 17:45:59 +0200
Message-Id: <20220830154559.61506-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830154559.61506-1-sebastian.reichel@collabora.com>
References: <20220830154559.61506-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_084612_214939_E17CDC0B 
X-CRM114-Status: UNSURE (   9.93  )
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

Add compatible string for RK3588 gmac, which is similar to the RK3568
one, but needs another syscon device for clock selection.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 7 +++++++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
 2 files changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 083623c8d718..3c8c3a907181 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
           - rockchip,rk3568-gmac
+          - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
   required:
     - compatible
@@ -50,6 +51,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3568-gmac
+              - rockchip,rk3588-gmac
           - const: snps,dwmac-4.20a
 
   clocks:
@@ -81,6 +83,11 @@ properties:
     description: The phandle of the syscon node for the general register file.
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  rockchip,php-grf:
+    description:
+      The phandle of the syscon node for the peripheral general register file.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   tx_delay:
     description: Delay value for TXD timing. Range value is 0~0x7F, 0x30 as default.
     $ref: /schemas/types.yaml#/definitions/uint32
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 491597c02edf..2f909ffe2fe8 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -74,6 +74,7 @@ properties:
         - rockchip,rk3328-gmac
         - rockchip,rk3366-gmac
         - rockchip,rk3368-gmac
+        - rockchip,rk3588-gmac
         - rockchip,rk3399-gmac
         - rockchip,rv1108-gmac
         - snps,dwmac
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
