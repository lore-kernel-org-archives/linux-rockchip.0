Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47A4CC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 17:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MS7fJgQK3wrWmEV+nQ0UwOCBeYKCGMLCk3FhFw1OzpY=; b=RaGyvZbnNpTe6l
	DlJ8ZK3mceKDdfCN21rZG6Le802DscEPRYLaYkMHiCnSI1U5rlghwN39rrFsm1mpkAymYULieeGHQ
	+dPLhRgT6V6ob5Y8jhZJ8xlJ+t1kK37EjPB1FHlQOmBJIlT9wGmbwqgBjaX6DrmJGeTLzE6Z597zS
	LGAdlPlkW07mI/tDoF+1J5BUxmBlM3Ku/IhRYi0usD8aCOLtBMhJ+z7vk12clyF8nByQ4LNEDGcYt
	atJI1SCSyVBtFzs4RkcaTlEWRZsXhDsN6x9FSe4/1jGi90VilDKCXuRSDtbS5R/MoAhouxdiE8Q8w
	4QPREuiCBDmnZPFNP2uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5zx-00GiUJ-Ul; Mon, 07 Nov 2022 17:33:25 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os5zt-00GiPn-Tq
	for linux-rockchip@lists.infradead.org; Mon, 07 Nov 2022 17:33:24 +0000
Received: from jupiter.universe (dyndsl-091-096-035-235.ewe-ip-backbone.de [91.96.35.235])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B647166023A6;
	Mon,  7 Nov 2022 17:33:13 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667842393;
	bh=I5nGG6JUHVwZMZBXP5eZJMglpJE+L4055H0JxM8aqmQ=;
	h=From:To:Cc:Subject:Date:From;
	b=DK/qrYG9emNCkBmFd7xouyl498094nEf54CsaYY7LZNAOnKxDLckx+AHlcCzlGEYo
	 GHJ9MPQJ534/Eb5+NUZD0Yg54P5gSWLaiBxDCVffYfHR/YhWXCwri4LVoQ/d11bcnL
	 R97c8TMX6HYqFR8/MkUu05qR8iLByGByVBssdM13kDHmRJnKT8cdTNOHM5Hj+ZfRgf
	 /LRcZtfa/k8Y9QX3aEaAw6vUQAZik1dyORpuP06dTAiNufFWSZgNIJgqcYtjZTWX+P
	 sKFNtIVzoFHAPTQIrRSvk3AzPMzbHUeubYzrLZZERFGNWF5UV0RLUFj7a9y/+Sykdb
	 1UbxE5b/hUbVg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id D15B148011F; Mon,  7 Nov 2022 18:33:11 +0100 (CET)
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
Subject: [PATCHv2 1/1] dt-bindings: mmc: sdhci-of-dwcmhsc: Add reset support
Date: Mon,  7 Nov 2022 18:33:10 +0100
Message-Id: <20221107173310.60503-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_093322_115344_19F092EB 
X-CRM114-Status: UNSURE (   8.06  )
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
Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021171654.87071-1-sebastian.reichel@collabora.com/
 * dropped minItems (Krzysztof Kozlowski)
 * reset-names are not copy pasted and intentionally the same as
   the clock-names. DT looks like this:

   clocks = <&cru CCLK_EMMC>, <&cru HCLK_EMMC>,
            <&cru ACLK_EMMC>, <&cru BCLK_EMMC>,
            <&cru TMCLK_EMMC>;
   clock-names = "core", "bus", "axi", "block", "timer";
   resets = <&cru SRST_C_EMMC>, <&cru SRST_H_EMMC>,
            <&cru SRST_A_EMMC>, <&cru SRST_B_EMMC>,
            <&cru SRST_T_EMMC>;
   reset-names = "core", "bus", "axi", "block", "timer";
---
 .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml   | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index 71f8e726d641..51ba44cad842 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -45,6 +45,17 @@ properties:
       - const: block
       - const: timer
 
+  resets:
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
