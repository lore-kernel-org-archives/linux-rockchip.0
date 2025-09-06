Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFC3CA1002
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 13:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRmS9Xuz3rIVlAPQdcxG6KMEqGG/k0ob/qns6Ky6XZs=; b=BhmIiHsfzyENM9
	Qkzrt6clylJ+ouRVIGFPmvBPJzAticP1zMrZ6+JiSMAPzbaqZ9npz7IJl55murGPethuomXFDxC3J
	thV2vrQqIVK5vSAvpEPUY5RfTLwu8f/CzLHR1IqmSSMeTphWAcwAPQRaed/VBeoxkKSwSQzCifNEw
	HRmg1NfBOSQImC3sWYASrATjZqWWDyNddLUQbV+bcK9OT9MoMlo/UMZrj5RhxnG5oJq1fSwgUxOyN
	RuBQ64bA/VsfU6l1SDWEUqexYOLo4G6H3TXG4ZUHLORQi7R8Me5JxjnChvyBACzdHHwntf0nkiq5k
	/c5a/ixU+fk763StarEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uutRR-00000007ryz-3vdt;
	Sat, 06 Sep 2025 13:58:57 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uutLr-00000007qp7-3Oui;
	Sat, 06 Sep 2025 13:53:13 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 87B2622C21;
	Sat,  6 Sep 2025 15:53:10 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJOJ-S12NzCP; Sat,  6 Sep 2025 15:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1757166789; bh=QsGy+bBU+9Umuk9tcBxgAcdBm7R9LKoAcjgjg3FRuWQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=UzK5gLBWNBPdd9zctSe6HF0agow0S4Irkj2epjEJqsqRj4003Fmpudn2OlKRQnyi8
	 sXmXz7a93HDo5An8XFbr0TunmzNsDxqiXbPsvWzj9rJX+6C2RB6PQvoRyZdAvvjFHp
	 2HWOwFLeP6UboKGnpxAZLObUGhnByw+pW0X98DL38OdLFEvXz4lQfoy9bmIebYaUZI
	 Peq65SYdeX/rUOAJG/gY3XfDxRQ/UbfqOxZWacohCuQosftoA41YgUkPmvy43NGHZq
	 6hXDdV9q4g5kFrVFgbB7/6+nEAGCFuBWwPIRYqQYTLihNBJhJANUNKv9o6KDs8zxRJ
	 lvsEEoof/L6nw==
From: Yao Zi <ziyao@disroot.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 1/3] dt-bindings: PCI: dwc: rockchip: Add RK3528 variant
Date: Sat,  6 Sep 2025 13:52:44 +0000
Message-ID: <20250906135246.19398-2-ziyao@disroot.org>
In-Reply-To: <20250906135246.19398-1-ziyao@disroot.org>
References: <20250906135246.19398-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_065311_981992_287C7D20 
X-CRM114-Status: UNSURE (   9.31  )
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

RK3528 ships a PCIe Gen2x1 controller that operates in RC mode only.
Since the SoC has no separate MSI controller, the one integrated in the
DWC PCIe IP must be used, and thus its interrupt scheme is similar to
variants found in RK3562 and RK3576.

Older BSP code claimed its integrated MSI controller supports only 8
MSIs[1], but this has been changed in newer BSP[2] and testing proves
the controller works correctly with more than 8 MSIs allocated,
suggesting the controller should be compatible with the RK3568 variant.
Let's document its compatible string.

Link: https://github.com/rockchip-linux/kernel/blob/792a7d4273a5/drivers/pci/controller/dwc/pcie-dw-rockchip.c#L1610-L1613 # [1]
Link: https://github.com/rockchip-linux/kernel/blob/1ba51b059f25/drivers/pci/controller/dwc/pcie-dw-rockchip.c#L904-L906 # [2]
Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 6c6d828ce964..67f1a5502048 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -22,6 +22,7 @@ properties:
       - const: rockchip,rk3568-pcie
       - items:
           - enum:
+              - rockchip,rk3528-pcie
               - rockchip,rk3562-pcie
               - rockchip,rk3576-pcie
               - rockchip,rk3588-pcie
@@ -78,6 +79,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - rockchip,rk3528-pcie
                 - rockchip,rk3562-pcie
                 - rockchip,rk3576-pcie
     then:
@@ -89,6 +91,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3528-pcie
               - rockchip,rk3562-pcie
               - rockchip,rk3576-pcie
     then:
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
