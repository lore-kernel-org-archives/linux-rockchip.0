Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA481C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9DQM+HBJ8Ef77jTVrYNeuldG8cBUrHUj/Qboa5BGcPs=; b=V24rMr8tGT+wgH
	n4EGAwluSgy/gXeQ2maN8DZlYKroj92GZwG84R3Rv59vOCUard8hTKbbBYJU0i1X+ovi94VeI2Q5m
	zdyJxS4e6SvN9AScuunBk3RhDgfTiFlCn7wYX0Ia40byTA8HGQ6IKE8aRdw2EKb7UpynCa93B+LQX
	L6no2HzI7KnHMZDHn1U1UuOGUzfn2YRo8Fv0yWGV3QHS/p+FCCZEXVYcXXXeu/6NuzMY7FIPrgCTY
	dsjPsKLYFqMv6q1AENI/tIgQkv7RepHGfncPy7SviOEB/JTY4lyX1wFD7Pys5fvCDe0WhI2xsLMqo
	eZrurQRTmhTdEwI0fqNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvdq-0099L7-J6; Fri, 21 Oct 2022 17:17:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvdo-0099KT-6Q
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 17:17:05 +0000
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B5486660253A;
	Fri, 21 Oct 2022 18:16:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666372619;
	bh=8SEmRRNqWhaovZwlBX64w79Qsrya4d5yN06pT0JgFlY=;
	h=From:To:Cc:Subject:Date:From;
	b=OS3eeaMMU7EhgwObqeldVSO/Ydqm6XG4oVTr+K+uQrr1K2pdkkXB08MLcVuwsGV7e
	 c83m5SW/OIqD57D6uQBRrJBZ2JHVzSbgea9ztx3aiFBhurai9PMMVB9CGhvzYw5CF6
	 VhOhguRxCKT2gDI4LyR6JQtGDn/jOVWYuvNxyrfDTm7P++MX+0Dq4+oY7BLujhpU07
	 LGxcpcyUc3VDp0zvoqVeMEH8TTRn9YM/LG3MsdLcFqFOdaz5qUWoH1ogJ0s1417rwQ
	 kAu0t/ilzveWHhRlgaWMYSBkC0JEd2RpT7iais5YH48rDRzrvmB2b97UcXQJOkfNnv
	 38lflUm/krRUA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 745DE48082E; Fri, 21 Oct 2022 19:16:57 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/1] dt-bindings: mmc: sdhci-of-dwcmhsc: Add reset support
Date: Fri, 21 Oct 2022 19:16:54 +0200
Message-Id: <20221021171654.87071-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_101704_379537_4B833074 
X-CRM114-Status: UNSURE (   8.42  )
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

Properly describe reset related properties in the binding.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml  | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index 71f8e726d641..162c1a4abf3c 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -45,6 +45,18 @@ properties:
       - const: block
       - const: timer
 
+  resets:
+    minItems: 5
+    maxItems: 5
+
+  reset-names:
+    items:
+      - const: core
+      - const: bus
+      - const: axi
+      - const: block
+      - const: timer
+
   rockchip,txclk-tapnum:
     description: Specify the number of delay for tx sampling.
     $ref: /schemas/types.yaml#/definitions/uint8
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
