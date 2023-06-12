Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA5A0C88CB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPO3MziT8XEDVBzwuSHy0QzDT0XU9J0FfjnLZsa/q4o=; b=gfXtzhoseocPmt
	pBFzlVSPBQApQ1kOWwkLp3nktUBkKeXhiJbOPTXQHRl/eykpHmh9TAeeX+iW9UbH1v5SllMNYZ2WV
	UySB7Vm0A8Xt89z8jxydtboOtkKktBFGF7UvTNkk/O/otv//k6g0xj9YVjYxYKI/MMprm8Q5zo/Jp
	1Hxn8vpym6OfT1uVqwVyBcV51q/zRlSJdXYlJnyIpqhSceg0xZZMqk8v3qlR1xhno9dTuSs9WpZAs
	TaB0VjUS5l70sbcrKAEfMyeKVPJBXZVeDTsGZmu5sAWTWX9VhNnNxga/ECvCw39Ejr4cKl1L0E8CD
	GQqJyiVoBI94a8tByWow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l72-004ieX-0W;
	Mon, 12 Jun 2023 17:13:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8l6w-004iZC-19;
	Mon, 12 Jun 2023 17:13:49 +0000
Received: from jupiter.universe (dyndsl-091-248-210-131.ewe-ip-backbone.de [91.248.210.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 32D5A6606ED2;
	Mon, 12 Jun 2023 18:13:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686590021;
	bh=D1KuKR+ZNBWiJnLkvJscHLEqZhzpGY7F8aiTg99e+O0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Dc25F4tg8BzzDJwU/KA452v00Pk/TWG3XHaQOKWhZGngcDouQBUEUkzas1y2nshJ7
	 zlAEeK9IeRnWdrNZyfqCbblU2ZHNpdV+5ptXn81jsVhy1zIl4QxXny+Uc6OW9t8ZWW
	 w3SBKC/zM4qcpHhOxfDIVMPIGAIeeuMjwPHBYZm3CB9WJJK4RpMxBWl7m857cfiZpj
	 ryBUhF5wgKRbTu/ejLOzb7bYhweeGzIBnqY7fbn+uSbH9n9try7R+fPJ5sv4ZuMLys
	 m2M0++IP5ZtTbBNHxccZxYQhbORXrO1UjoF6Iv/lZBKtzOPJtEEed5bcb6NZVWrIv7
	 Lgb3GIBjw28Sg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A76CB4807E2; Mon, 12 Jun 2023 19:13:38 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 3/5] dt-bindings: phy: rockchip: rk3588 has two reset lines
Date: Mon, 12 Jun 2023 19:13:35 +0200
Message-Id: <20230612171337.74576-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612171337.74576-1-sebastian.reichel@collabora.com>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_101346_593260_5BED71E9 
X-CRM114-Status: UNSURE (   9.67  )
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

The RK3588 has two reset lines for the combphy. One for the
APB interface and one for the actual PHY.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../phy/phy-rockchip-naneng-combphy.yaml      | 34 ++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 9ae514fa7533..d3cd7997879f 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -31,8 +31,14 @@ properties:
       - const: pipe
 
   resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
     items:
-      - description: exclusive PHY reset line
+      - const: phy
+      - const: apb
 
   rockchip,enable-ssc:
     type: boolean
@@ -78,6 +84,32 @@ required:
   - rockchip,pipe-phy-grf
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-naneng-combphy
+    then:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-naneng-combphy
+    then:
+      properties:
+        resets:
+          minItems: 2
+        reset-names:
+          minItems: 2
+      required:
+        - reset-names
+
 additionalProperties: false
 
 examples:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
