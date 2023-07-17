Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B46EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 17:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1g157HksPmkRqHur/8v83dNVyZwi10d+9GYt37/Hoo=; b=fG2xyakqaMWLG9
	lygEN4c1JxX3Thzp4hNzQoU4P6yyNLi4ZUoxy/sBfPKiJk6qj7cAazTB0HbWDE3KTte7am2OvI1VT
	+ZODwj/7S1Z308p2heRpl+TmZO9AdSyIO5r0wKf+7XOaMfW5I4cEFoA6FyoGKBUuNM3eTBlcy+duV
	M4HjiLOZHvjrAKPWJtoyAIymEDdRWAmctpN01O18tBcWEJUi469rNu59jTzzxWcWPikaCMqXDecLb
	nDmfOtaUQ0/KS5ESwfsWRWBZsqpZrYKjz82Sfsr3+cHcpGSPzG7CDTNqE11TxGvWi6HVKxSZMNmqA
	9RzNrT+WZak+Jap0ruEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS0t-004fk8-19;
	Mon, 17 Jul 2023 17:27:59 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRzy-004fRy-0X;
	Mon, 17 Jul 2023 17:27:04 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D0D976606EF9;
	Mon, 17 Jul 2023 18:26:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689614816;
	bh=aWxYY6oZC42uA/u/eur15Qmr3pbggLJlNDx8VSDbYNs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aI48EQQOKu9Kj29w5eqsvdzhsgtyy9wZgPf7LPM4/XqzJXxxgtCZoVaaTPFsKmwSU
	 /JCne+QOQD3Ir0ALjgc7AC/38Go5wIDgTBRaCul5UNWHBsj7qGKR6070TQhsKnaOhb
	 GeoP1Y8cBe2rb4uRI3XdEAxvZby47lL9Skan0H4l78Li/yFiqqE2Kd8KJa7QLeJzM/
	 LojiH2Ar8sR/XmL80jeB0Xqpk/alG3pfZ+za0QpT3eWV+fRdMeD1OVj4XpsQRuLyAI
	 gT97tPpOTuUqmKxlAbOsRhWXBjfAdfAf5ujWJvoZid5tUKLHmwNRtj3f7UEaGTeGXl
	 oCl2cxgxGIzdA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1D6A0480C79; Mon, 17 Jul 2023 19:26:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 3/5] dt-bindings: PCI: dwc: rockchip: Use generic binding
Date: Mon, 17 Jul 2023 19:26:49 +0200
Message-Id: <20230717172651.64324-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717172651.64324-1-sebastian.reichel@collabora.com>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_102702_381015_CE85D46B 
X-CRM114-Status: GOOD (  10.92  )
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

Use the generic binding for Rockchip. This should either be
ignored/dropped or squashed into the previous commit.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 +--
 Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml     | 6 +++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 7836b9a5547c..ad9954f7fe02 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -17,8 +17,7 @@ description: |+
   snps,dw-pcie.yaml.
 
 allOf:
-  - $ref: /schemas/pci/pci-bus.yaml#
-  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
index abc1bcef13ec..95d343c75485 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
@@ -196,12 +196,16 @@ properties:
             Status register (the event is supposed to be unmasked in the
             Link Control register).
           const: bw_mg
+        - description:
+            Combined Legacy A/B/C/D interrupt signal. See "^int(a|b|c|d)$" for
+            details.
+          const: legacy
         - description:
             Vendor-specific IRQ names. Consider using the generic names above
             for new bindings.
           oneOf:
             - description: See native "app" IRQ for details
-              enum: [ intr ]
+              enum: [ intr, sys, pmc, msg, err ]
 
 additionalProperties: true
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
