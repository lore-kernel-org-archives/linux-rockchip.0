Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0296DC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lvee2gQdBHwWK/gJ75fhLpJVJXEsY/w2l8JY2wfhvc=; b=3cE/nU9GwBSjt6
	cL/KQ5xWLe8O4agGVne8+kgkZMdx9Azac6g/6HoCeXCFeaDe29Mvx6+InnQiYo6wejhy2bcnEnR6w
	I92BPELAQNbrzM5oI8cXl+yAqSQeWv0n3F7RI6DIfgzrbbnUchhMPHj+kwL8FKMS+F4WvWcQb5fyW
	aebHrpC5V4okCaIlAyj6Zw9ZJrNUVu1YQuT44lyIfyhhk+mQa9q8UCiOI7tH1unuumjFaatM1yJb6
	/Y1wvGTXBccOm/I5X+mU0GJkOY5Ef+/RYrzY5LiQoZ35um/v2s4W27EK9mSnDsufXftooDbplDWFc
	JyTYtuz5Of3u3sGf7upg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PjR-00Fu4g-AC; Thu, 23 Jun 2022 16:31:01 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PhR-00FtCa-Ht; Thu, 23 Jun 2022 16:29:00 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AF31166017E4;
	Thu, 23 Jun 2022 17:28:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001736;
	bh=NR9TyHKc60OYnxwLzxpQ1c2wItafR5D/uWReeMDiZLI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C4UNF7lZTqD5LepVh7lPXHlQ4Cg/MEBb0h35zYH+X8dGc8Eu0ai5PQMPD5IarZXf2
	 e7h0C7YgJ4TWpOj/Za/hPe9A0p0X8iJGdbcD5X1quHJvT0PDTGWJQ7CVzXh5zjle+4
	 p0ilh6svW6dAG/2XvlSuUcgpTSHIgSMb+nQNRD1qSksgEWCxSo94pTUHP9lYZIVT/4
	 aTHqXJemhYdox00n8txpy56Q3zYYT2idzOwicN9pAHjQek1Zz/6BlLlTi9u/mIyC74
	 aH6GFfmUNOh9oWw3igFheTNgflmESEipeFusus4ddL8mBHfKfB5g+6e1UNzhg7YPYo
	 +qDY/tzxGJmBg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4A59D480591; Thu, 23 Jun 2022 18:28:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 3/3] dt-bindings: net: rockchip-dwmac: add rk3588 gmac compatible
Date: Thu, 23 Jun 2022 18:28:50 +0200
Message-Id: <20220623162850.245608-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623162850.245608-1-sebastian.reichel@collabora.com>
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092857_809612_4C0C1CFF 
X-CRM114-Status: GOOD (  10.21  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 083623c8d718..c42f5a74a92e 100644
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
@@ -81,6 +83,10 @@ properties:
     description: The phandle of the syscon node for the general register file.
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  rockchip,php_grf:
+    description: The phandle of the syscon node for the peripheral general register file.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   tx_delay:
     description: Delay value for TXD timing. Range value is 0~0x7F, 0x30 as default.
     $ref: /schemas/types.yaml#/definitions/uint32
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 36c85eb3dc0d..b5aba399ca5d 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -72,6 +72,7 @@ properties:
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
