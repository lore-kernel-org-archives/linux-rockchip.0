Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E11EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 17:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZRT0+5S9xyW/V1I5ynOBYSipb/YGJYYYhqkynwDIJ8=; b=KUmY0PkNuLMfG5
	24kQl/CBbKbC7ODl5NWjDnY7w4lJOsVe8WvC7Ph3gxmhYwcxwTgia2+KD1BAXuzFapjkO5AnxBxRl
	UyzJJ4DAzWwtoq521/umxYAPgyjRd1WBdcPKohH56uxRY9dZXl5qZRmT024WPOcxCsxT4g11Boh1J
	5+UUHEiRqXurMXWa10AAgvU7Fctxa7ddPXCrwZ27zjEZPxw8R0NhK8hW4aFolNLT5J4DT+arucC7X
	k7UpaE3Zb2ZDyq7Fb96U3om+R0BUdGX5Y33sr3GruimAQfChPDPWOXJ9w14bMzKiB/tWjpY1zqWFm
	iS5aDPhBSFgTDLyptebA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLS0Y-004fbr-2T;
	Mon, 17 Jul 2023 17:27:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLRzx-004fRx-2x;
	Mon, 17 Jul 2023 17:27:03 +0000
Received: from jupiter.universe (dyndsl-091-248-189-171.ewe-ip-backbone.de [91.248.189.171])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C95EC66028F5;
	Mon, 17 Jul 2023 18:26:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689614815;
	bh=E9QpBFx3OjWlRLEoFnsSGJDKU0c7IinxD+9ybLulYfM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gBd2jq4JHb9CE+ya1XOhEhR8MKtURZmk5lB5peFJDBeh0wOKk17+kgS9Nm7+Hhgcu
	 qOh5mOdHVwJqaRFRLPSb2mtpgUa+weZKMTIfWhfBBUMJL1KX4zqgXU+i8nqP4Ys4ZA
	 YqZ6FfDfHgAG8X+lXT+iuq+YzVtnzqGIfVVtZur9+umaXpmzUAAMSJ0oVdd/n7vcnn
	 mlCT5fMjyhVTy91uj1/5o/yi1XBcgko8OTZSzbQSWmaBNERCxbnaTt6Ea5+4Xhrsvb
	 QP69NWwHMMo1j1VpSErayFf4O6ZrLxo9WHyDL2CyiGpkf1/nBS++clnJnMr8ehOU7a
	 b7jOZmADZrYiw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 19AC7480C77; Mon, 17 Jul 2023 19:26:53 +0200 (CEST)
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
Subject: [PATCH v3 1/5] dt-bindings: PCI: dwc: improve msi handling
Date: Mon, 17 Jul 2023 19:26:47 +0200
Message-Id: <20230717172651.64324-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230717172651.64324-1-sebastian.reichel@collabora.com>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_102702_150144_22B9C40C 
X-CRM114-Status: UNSURE (   9.20  )
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

Allow missing "msi" interrupt, iff the node has a "msi-map" property.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/pci/snps,dw-pcie.yaml        | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
index 1a83f0f65f19..abc1bcef13ec 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
@@ -25,6 +25,15 @@ select:
 allOf:
   - $ref: /schemas/pci/pci-bus.yaml#
   - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
+  - if:
+      not:
+        required:
+          - msi-map
+    then:
+      properties:
+        interrupt-names:
+          contains:
+            const: "msi"
 
 properties:
   reg:
@@ -193,9 +202,6 @@ properties:
           oneOf:
             - description: See native "app" IRQ for details
               enum: [ intr ]
-    allOf:
-      - contains:
-          const: msi
 
 additionalProperties: true
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
