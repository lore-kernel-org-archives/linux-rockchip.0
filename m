Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52FC6C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 16:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yL69CvAA7ZJyzFw6q03cLkiKRWgwhIeajjGL4asxMM=; b=UB5fyTyPUOF+3X
	fSkUXyO3LN2xlsS7MdW1OnDXaHuSNcdE8Upczp6o/w7UZC+IjpLmwI5c5HX1ZmHnObIJk00RQ+lwa
	/Q1Q8UVDHTJP3xSlc2L+26xp++EJI8SNylk5SRmrdD+oKp9dEGo0nOKjOAhR074D8AosGSKs5IHcR
	yd44ZL2HLg0JoDkkrD2aP2cdalRu2d2DkW/XoWooDENafAzuI2tjztuYrJCzpAfvQul5EvPqxCjur
	OG5b7bZ9r9lr0IIa3Qi7HytVcCs8oNn2ZFbb2l+NTXdkBMoLaWLGVXglQI3lS21cDa61cqIdKR/Uw
	ynpoilgX4w4xdery1K6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWDQ-00Ghzp-32;
	Mon, 31 Jul 2023 16:57:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQWD4-00GhDh-1W;
	Mon, 31 Jul 2023 16:57:34 +0000
Received: from jupiter.universe (dyndsl-091-248-210-008.ewe-ip-backbone.de [91.248.210.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2AEFA660710D;
	Mon, 31 Jul 2023 17:57:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690822647;
	bh=P9l17piVJUVOMtrFDWF3XbJJjzW9YfC02cUrfUQr3Dw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Cq4AIz0NCArSne8qWA437xRyJwNao1oyJKvMT2bmmMbJ4iIwZxwb+VqviLOVntxA1
	 utncYdgkMoaPPJZXTiJ/GBP/OIoBipVdwfTmM5F+P/Gy1imdPHSmtiQW/AH5FPdvKJ
	 4RipzABmbg3wFy9kImOZN0FRmSIXov1SPQ7k+5R4145i258RlXj204487wUikY9spS
	 CPMpAP19BR48pETqGh4Gz1LGc2aB+tTFtPpB3NjJBHzYtvA6VZqy/0aKhL3XK0OUEL
	 jsWYA+hQqJxPU3efncwYHdSFqaL7F3vI4zJ8NNRc+Sf2iWaSqmoaUZRg0RTXc2JUyw
	 9q0z9aiH/VxdQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 28DFA4800A2; Mon, 31 Jul 2023 18:57:25 +0200 (CEST)
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
Subject: [PATCH v4 1/5] dt-bindings: PCI: dwc: improve msi handling
Date: Mon, 31 Jul 2023 18:57:19 +0200
Message-Id: <20230731165723.53069-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230731165723.53069-1-sebastian.reichel@collabora.com>
References: <20230731165723.53069-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_095730_720472_2C2406C1 
X-CRM114-Status: UNSURE (   9.82  )
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
index 1a83f0f65f19..d2b4fb8f6dcd 100644
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
+            const: msi
 
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
