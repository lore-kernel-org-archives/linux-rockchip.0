Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9D7AC54E49
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 16:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3rGPuDcsfgiXuJKuRhzjgN8Z3C0SOhLTXLY3fW+n7I=; b=wUstGYVp7ailxd
	Qr5C3EEggWw/QLoRoKCWHzO3XbSDT/h1yeKoL+1Bk1T9lFZkfeZBnvKmqfG0hckZ42VSUFKBH/135
	Mq2A5YH6XsPjmSLfFWkSs6vTvMp5VgsskXt4W9zx+7bVcmJf3shgkhXV6/oThb1HY/PQ8eqtviB9K
	TlQWTVtJB7gXYRLazy31gXEreGLNsN3vxFnCH8AzA2tZHXrEqWoO88ksxea42JZNadsKuiJ1aiKRT
	XcA8DYmJdzW4Qiv+Oie0gwoHcrdeE1J+imEiSS5Klwj3HkDc9QrltZ2HHVo7TS6R322Z2EiBF1oYv
	2HMxWy8+87Ui1pc+s2EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf0bu-000000063Bv-24uK;
	Tue, 27 Feb 2024 16:47:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf0bs-000000063AT-0oJI;
	Tue, 27 Feb 2024 16:47:17 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf0bl-0006qV-2r; Tue, 27 Feb 2024 17:47:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Theobroma-Systems RK3588 Q7 with baseboard
Date: Tue, 27 Feb 2024 17:46:57 +0100
Message-Id: <20240227164659.705271-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227164659.705271-1-heiko@sntech.de>
References: <20240227164659.705271-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_084716_257514_7C824D03 
X-CRM114-Status: GOOD (  10.07  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Add binding for the Tiger Q7 SoM when used in conjunction with the Haikou
baseboard.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf55..864d7c77077e4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -898,6 +898,12 @@ properties:
           - const: tsd,rk3588-jaguar
           - const: rockchip,rk3588
 
+      - description: Theobroma Systems RK3588-Q7 with Haikou baseboard
+        items:
+          - const: tsd,rk3588-tiger-haikou
+          - const: tsd,rk3588-tiger
+          - const: rockchip,rk3588
+
       - description: Tronsmart Orion R68 Meta
         items:
           - const: tronsmart,orion-r68-meta
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
