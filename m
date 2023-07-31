Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D1DC001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 16:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6o/O5A0IWBGFZqlrIoSX48+3c1EBRMWnUXex6NhoeN0=; b=FBzgWvcmrHOlGQ
	dZRCJAhFNwTolGC1N/tIeKTDNVvGF9hw8G7OIoQmDvEwuv7rY4dSBHhKC81diWokslgXoKnS3oohh
	DsW42g07N9VTCQ+eiAsbOi809XMMSl+TAxbVxZ1CUjSeS9pwroOdVbPqXTajSlqDIdrSnndb1CN+U
	89Apf75tP/dfN6Pv1SFOpHoqzw6eZJD3ald6uYuq+d7d+yj7x5vz+jd7UjtUCo4mbe4y95ShtW8mp
	ZK19SwpYyQzRBDujXJJ1jKgsIdLMvKem8p96IOtwJKspnb/kDtrlZoXqivkGsd6MMCohcEm7Wkwst
	gU3zJHfe8YEIyWnfWghg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWDH-00Ghni-1P;
	Mon, 31 Jul 2023 16:57:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWD4-00GhEB-1W;
	Mon, 31 Jul 2023 16:57:32 +0000
Received: from jupiter.universe (dyndsl-091-248-210-008.ewe-ip-backbone.de [91.248.210.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2F0296607114;
	Mon, 31 Jul 2023 17:57:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690822647;
	bh=LndBn2sfnnYSo4boXhNYyWPRDUxKhkkg9Nz5WzmEHnA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aI2l1FBFfcyJHLaQlHGeCipptK9LqMUcVy0e7kkKiUYUXyfwej1qMIbw1BRKkDY9v
	 HMj88boZVS/DgnkK8Tg2YYuHRLgpzv8sIGCJckn9ved89NPoEjkrBpto4oCDh287+3
	 ifUeZwhp2maNO6jLqVevwajRhXHTw6bSxsUcn7Bjr9Ynia5nta8yBuHwFlFSz2TD7h
	 Afo2++kjTgkMSnwbrg1u1xDsFDgYdlIV6hHNQkfBxZxz2LoddBltKruSkvozE6D0eZ
	 2wpuKUyNbvwhDO7SizIfdo81gHrg5XqnZ0wrNAO2l8oUocgbdqZfTPQtNKTffZjcOL
	 TIlpqk8Og+C7w==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2C7214800A9; Mon, 31 Jul 2023 18:57:25 +0200 (CEST)
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
Subject: [PATCH v4 3/5] dt-bindings: PCI: dwc: rockchip: Use generic binding
Date: Mon, 31 Jul 2023 18:57:21 +0200
Message-Id: <20230731165723.53069-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230731165723.53069-1-sebastian.reichel@collabora.com>
References: <20230731165723.53069-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_095730_698737_CE6BA33C 
X-CRM114-Status: GOOD (  11.72  )
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
index d2b4fb8f6dcd..8bbdeb8821f8 100644
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
