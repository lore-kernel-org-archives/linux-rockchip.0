Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14E69EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 17:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFZ5/bZS1/3E0luBpF8Fy/aQEUAd76CopZpFM+Ufwtw=; b=sBsyFPiFA0sqWz
	BmvPAelOgG3L6w3s/PGEBIwGJXJPSDDhr7OJ3dhOeLRZWljOR5G8hbqVUM0O40nZ7zlLeqEYx2qtP
	zGQmyAboMvgmZj9/GGKkH++d9D7vrank3toQDVJHb8mNPC1GxVCqSVzclDC2+Fyr1livBwzZIXalH
	y27waejSGwi/6xqBurEPT4ZXpvJZZJmRE/nrmWJq6wesVQtaMgbU/Wjxj17pmRhLaDHD3cGBjivuj
	stZDIgUnZLNTH84Sm3n6weAeK/q4z9kyuqFhfTg3OXHcWjI1Vz6Tky43aQj/XVRAM/NAP96XoyuLB
	C7vg97g0Hy4J4uSvpfiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qACob-001DLI-2O;
	Fri, 16 Jun 2023 17:00:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qACoX-001DHT-0m;
	Fri, 16 Jun 2023 17:00:46 +0000
Received: from jupiter.universe (dyndsl-091-248-215-052.ewe-ip-backbone.de [91.248.215.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5C3ED6606F61;
	Fri, 16 Jun 2023 18:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686934841;
	bh=X01oy+ihteZncXuvNTLu0v0W9yQ61BoqL+FIOTAimbo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WjWItqyG+6JtsUQmPKLZ06/+dqMQmlncIFF+Nkc7IP23kC09kxM99c1opbDaSrV8+
	 Y8/AboL6PR0kAV2/XrwdZt/97XF/WnqxWVJzXP3+4nOUq1oMHZtZ0WC0GzGzDFC3Pp
	 wf5JxqyDKyCky07aT545/1JKhHyhNIIbV1Q6GbJ1nNR70N3VJlKrKszwwT49oYr+ub
	 F8DNTiBQZVp56f4Dx+YMLueaP4cbePxUfoptrxy07mZGAE1I+7SIcMF238l3/p7UUS
	 hbxqZCKJytCBCco+ZtLXypdq54qNpsNHMgh59eyAPXFxhC+uXVll4V2/B5D56F00tg
	 8yOh3YKQ6UqGA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 14241480598; Fri, 16 Jun 2023 19:00:39 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
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
Subject: [PATCH v1 3/4] dt-bindings: PCI: dwc: rockchip: Update for RK3588
Date: Fri, 16 Jun 2023 19:00:21 +0200
Message-Id: <20230616170022.76107-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616170022.76107-1-sebastian.reichel@collabora.com>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_100045_441967_95ED0F89 
X-CRM114-Status: UNSURE (   9.80  )
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

The PCIe 2.0 controllers on RK3588 need one additional clock,
one additional reset line and one for ranges entry.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/pci/rockchip-dw-pcie.yaml           | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index bf81d306cc80..7897af0ec297 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -41,20 +41,24 @@ properties:
       - const: config
 
   clocks:
+    minItems: 5
     items:
       - description: AHB clock for PCIe master
       - description: AHB clock for PCIe slave
       - description: AHB clock for PCIe dbi
       - description: APB clock for PCIe
       - description: Auxiliary clock for PCIe
+      - description: PIPE clock
 
   clock-names:
+    minItems: 5
     items:
       - const: aclk_mst
       - const: aclk_slv
       - const: aclk_dbi
       - const: pclk
       - const: aux
+      - const: pipe
 
   interrupts:
     maxItems: 5
@@ -97,13 +101,19 @@ properties:
     maxItems: 1
 
   ranges:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   reset-names:
-    const: pipe
+    oneOf:
+      - const: pipe
+      - items:
+          - const: pwr
+          - const: pipe
 
   vpcie3v3-supply: true
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
