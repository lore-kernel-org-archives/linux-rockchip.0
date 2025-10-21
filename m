Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E32ECCD1A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 22:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IpyCpTxkXmRCG2u6kaw8VmF95q3XWTXdaEF9IeGdz0=; b=Iuh2Q3sS5gNjcj
	GUyIq6C2wAbroKYLzLGhVnAcQra9A8GEF9zqDGnLrly+rSz0izybtgCIx36YkZ4BVs88zLvQAdORd
	owezNNSVBbOJNc/4Lhh283tEVRs4MFRbClLHVnpdEIKnEtwhwSYJEC8laH19bplIIzbN+SfSTdJz4
	BrxREYjYwCNs3GkLzpvGvCTmJeVxgzeqphEBkDOMlrTBOyoFNdfhJ7EDPXXafE/cqvTHKJ+rBIT+I
	QoP7j/McJSYFlwU6XLbq6N/tPQjcrbqjlm6AXmt/WobUPcsB5iR4Yk/8NCkOda7+gpNxtI8clQ9jR
	ypAjY4DA1wDqWxJvbwZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBL5y-00000000q0T-1oym;
	Tue, 21 Oct 2025 22:44:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBL5j-00000000ph9-3aJ6;
	Tue, 21 Oct 2025 22:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=6FoTuurwhJCTzhxL1K844VeX/g2bvcWy2Z6GNdQEJ48=; b=Vftz7HtPLbA1u3G6kUjaIj5GyO
	iT5a7S8KYNwVz/N2s6wHcRVL3g5SOzyaP1nm0At4lqwRIOp0eVo5wp69yNZPweF1i7KfCeH/Yk7GD
	vdmTkDWPWZGwdoFqkut6NK5uGyO3iOPxzJ/RDyNUs3q1afzWxv9AWi58oI0jNigPkkuy+suE/NlMK
	x6JLNG0Ynt8tcf28Oxc+MccN5TXzjEvt52NHI1yGLKYNQh/Acp3p07acFdKccpDs5ZQ0Tg48FFWRs
	cGz2arFS9JeQ6AUJsz4X0wicf7lb4hyG4EeJv30kUxAO5U7KRxCY1qPfuQivbQ5UjkY6LlIwDXH5b
	Sx8pEvBQ==;
Received: from i53875b19.versanet.de ([83.135.91.25] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vBL5d-0006q7-8A; Wed, 22 Oct 2025 00:44:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: net: rockchip-dwmac: Add compatible string for RK3506
Date: Wed, 22 Oct 2025 00:43:56 +0200
Message-ID: <20251021224357.195015-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021224357.195015-1-heiko@sntech.de>
References: <20251021224357.195015-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_154431_898894_0A3DD611 
X-CRM114-Status: GOOD (  10.94  )
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

Rockchip RK3506 has two Ethernet controllers based on Synopsys DWC
Ethernet QoS IP.

Add compatible string for the RK3506 variant.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 3 +++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 0ac7c4b47d6b..d17112527dab 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -24,6 +24,7 @@ select:
           - rockchip,rk3366-gmac
           - rockchip,rk3368-gmac
           - rockchip,rk3399-gmac
+          - rockchip,rk3506-gmac
           - rockchip,rk3528-gmac
           - rockchip,rk3568-gmac
           - rockchip,rk3576-gmac
@@ -50,6 +51,7 @@ properties:
               - rockchip,rv1108-gmac
       - items:
           - enum:
+              - rockchip,rk3506-gmac
               - rockchip,rk3528-gmac
               - rockchip,rk3568-gmac
               - rockchip,rk3576-gmac
@@ -148,6 +150,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - rockchip,rk3506-gmac
                 - rockchip,rk3528-gmac
     then:
       properties:
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 1a0d6789a59b..dd3c72e8363e 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -87,6 +87,7 @@ properties:
         - rockchip,rk3366-gmac
         - rockchip,rk3368-gmac
         - rockchip,rk3399-gmac
+        - rockchip,rk3506-gmac
         - rockchip,rk3528-gmac
         - rockchip,rk3568-gmac
         - rockchip,rk3576-gmac
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
