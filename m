Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3038BC021B3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 07:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=suxu6eWILEpj46A3cl+CKps6S3hZmXTJLHINSynsCHA=; b=29YNqEdaVT0xVE
	B5A+Z4l4BE8Jcqc7uHCO7oZlT7J28VfXCRJ4tYUlfsKUYJytlTjvIxVydTZC23mooqFxxTHtzgZwj
	scw3fDFtXubEayJpW+Vs8W8GSbgAWOoSEnutRBqX82WqLnXxVQ3wbN30WNv587FPOsyBYyitRo0Hj
	PT4zdMNKMeMf8zGZ0+dadZ5FgAe408/HVlAHLj9lIoJtrtfcGBccwLO7Rw4pOowmz6ToFv/cujP1G
	zmjxmX8s7QMo9srSkrAEGbz5Gv0Mj5UhrwMAWfWc6g5MAXze3lMZJJpcG44MJIP/YYDh9zdjHWDwd
	hdk1qu61kw41y7m+/ELw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmTDm-0000000CbAd-15Jt;
	Mon, 24 Feb 2025 07:49:46 +0000
Received: from mail-m32108.qiye.163.com ([220.197.32.108])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmTDj-0000000Cb9D-1J3l;
	Mon, 24 Feb 2025 07:49:45 +0000
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id bfc40046;
	Mon, 24 Feb 2025 15:49:32 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Simon Xue <xxm@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
Date: Mon, 24 Feb 2025 15:49:27 +0800
Message-Id: <20250224074928.2005744-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHRgaVk9ISB9JGBlOSU0eHVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NMVUpLS1
	VLWQY+
X-HM-Tid: 0a9536eec49e03afkunmbfc40046
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORQ6MBw*LzIRShMuSEsNDQwY
	GUgKCjxVSlVKTE9LSENISExPTExNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU9JS0M3Bg++
DKIM-Signature: a=rsa-sha256;
	b=SmWlMBhKcNySNTWiQ22qRydMuZBe3cbNVFwMfg4e5b/Q73gR4I+7UgoAuL/d7SQrYEnkSHIbghyNqRXrRiGcXewg1lvGUBuJggXKKU9GqwzzM823kzCRxuSZK8vmNw2KqlfEHKbyuQ//L4qZj7APZAzRZYk3vh77kimgUxXo2UQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=gZcFfe/3Ec2Froj8QkKmzTvvnm/edhrxyAVxPgLiWlo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_234943_862282_6BC35C82 
X-CRM114-Status: GOOD (  10.14  )
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

rk3576 is using DWC PCIe controller, with msi interrupt directly to GIC
instead of using GIC ITS, so
- no ITS support is required and the 'msi-map' is not required,
- a new 'msi' interrupt is needed.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v6:
- Fix make dt_binding_check and make CHECK_DTBS=y

Changes in v5:
- Add constraints per device for interrupt-names due to the interrupt is
different from rk3588.

Changes in v4:
- Fix wrong indentation in dt_binding_check report by Rob

Changes in v3:
- Fix dtb check broken on rk3588
- Update commit message

Changes in v2:
- remove required 'msi-map'
- add interrupt name 'msi'

 .../bindings/pci/rockchip-dw-pcie-common.yaml | 41 ++++++++++++++++++-
 .../bindings/pci/rockchip-dw-pcie.yaml        | 19 ++++++---
 2 files changed, 52 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
index cc9adfc7611c..e1ca8e2f35fe 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
@@ -65,7 +65,11 @@ properties:
           tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
           nf_err_rx, f_err_rx, radm_qoverflow
       - description:
-          eDMA write channel 0 interrupt
+          If the matching interrupt name is "msi", then this is the combinded
+          MSI line interrupt, which is to support MSI interrupts output to GIC
+          controller via GIC SPI interrupt instead of GIC its interrupt.
+          If the matching interrupt name is "dma0", then this is the eDMA write
+          channel 0 interrupt.
       - description:
           eDMA write channel 1 interrupt
       - description:
@@ -81,7 +85,9 @@ properties:
       - const: msg
       - const: legacy
       - const: err
-      - const: dma0
+      - enum:
+          - msi
+          - dma0
       - const: dma1
       - const: dma2
       - const: dma3
@@ -123,4 +129,35 @@ required:
 
 additionalProperties: true
 
+anyOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-pcie
+    then:
+      properties:
+        interrupt-names:
+          items:
+            - const: sys
+            - const: pmc
+            - const: msg
+            - const: legacy
+            - const: err
+            - const: msi
+    else:
+      properties:
+        interrupt-names:
+          minItems: 5
+          items:
+            - const: sys
+            - const: pmc
+            - const: msg
+            - const: legacy
+            - const: err
+            - const: dma0
+            - const: dma1
+            - const: dma2
+            - const: dma3
+
 ...
diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 550d8a684af3..d727502ed822 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -16,16 +16,13 @@ description: |+
   PCIe IP and thus inherits all the common properties defined in
   snps,dw-pcie.yaml.
 
-allOf:
-  - $ref: /schemas/pci/snps,dw-pcie.yaml#
-  - $ref: /schemas/pci/rockchip-dw-pcie-common.yaml#
-
 properties:
   compatible:
     oneOf:
       - const: rockchip,rk3568-pcie
       - items:
           - enum:
+              - rockchip,rk3576-pcie
               - rockchip,rk3588-pcie
           - const: rockchip,rk3568-pcie
 
@@ -71,8 +68,18 @@ properties:
 
   vpcie3v3-supply: true
 
-required:
-  - msi-map
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+  - $ref: /schemas/pci/rockchip-dw-pcie-common.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: rockchip,rk3576-pcie
+    then:
+      required:
+        - msi-map
 
 unevaluatedProperties: false
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
