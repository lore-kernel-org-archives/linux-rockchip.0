Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8272ED5B84D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 16:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XEBxnWWqG2s5a2QqOtoPfi3FhRZQpcbDdctex+Jegy8=; b=VXb8bA/KAn6fhc
	8LqjZCA74yJsJOnqWcZtcI4RAZIinACydBBx0YVsUZ9ns6i1Sv2JsHJCIKflnS1vEP3WEn/yVRqmW
	zDBTw3BbBDXxfbb1xIjJm16L6f69uNsAwchO39qbZ7kq9mD+QcoVi6irs6dWjnrbZWTSLkhyboqK1
	iR4ufq5xlfi3KSe+yqf7MVs9u2kxvnAY9H6iGurxVChakyyi9t15b19Sl1PaHR61mYwkiPX4WECID
	8m8HyeEihIrFBpkzW+w1pgj9Pp4x1MwDApeTw34Sb4kPrSxratjyVj/hkp6j/jWWkHq75rIIYoF0f
	YVDqiaXuDX4UFVmr6iTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBiK-0000000411W-33p5;
	Mon, 15 Dec 2025 16:46:25 +0000
Received: from smtp-42a8.mail.infomaniak.ch ([84.16.66.168])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBiH-0000000410M-3Did
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 16:46:23 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dVQtf6cv1zTkg;
	Mon, 15 Dec 2025 17:46:18 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4dVQtf0KpFz6NJ;
	Mon, 15 Dec 2025 17:46:17 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 15 Dec 2025 17:45:56 +0100
Subject: [PATCH] arm64: dts: rockchip: fix unit-address for RK3588 NPU's
 core1 and core2's IOMMU
MIME-Version: 1.0
Message-Id: <20251215-npu-dt-node-address-v1-1-840093e8a2bf@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqFMAxF0a1Ixj9giyK6FXFQzVMzqdLoRxD3b
 nF4BvfeZEgKo664KeGvplvMcL+CpjXEBaySTb70tfOu5rifLAfHTcBBJMGMm3FGGCsvAS3lck+
 Y9fqu/fA8L8QN/89lAAAA
X-Change-ID: 20251215-npu-dt-node-address-7bfeab42dae9
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_084621_938377_00D572B3 
X-CRM114-Status: GOOD (  11.80  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The Device Tree specification specifies[1] that

"""
Each node in the devicetree is named according to the following
convention:
	node-name@unit-address
[...]
The unit-address must match the first address specified in the reg
property of the node.
"""

The first address in the reg property is fdaXa000 and not fdaX9000. This
is likely a copy-paste error as the IOMMU for core0 has two entries in
the reg property, the first one being fdab9000 and the second fdaba000.

Let's fix this oversight to match what the spec is expecting.

[1] https://github.com/devicetree-org/devicetree-specification/releases/download/v0.4/devicetree-specification-v0.4.pdf 2.2.1 Node Names

Fixes: a31dfc060a74 ("arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588-base")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 2a79217930206..7ab12d1054a73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1200,7 +1200,7 @@ rknn_core_1: npu@fdac0000 {
 		status = "disabled";
 	};
 
-	rknn_mmu_1: iommu@fdac9000 {
+	rknn_mmu_1: iommu@fdaca000 {
 		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
 		reg = <0x0 0xfdaca000 0x0 0x100>;
 		interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -1230,7 +1230,7 @@ rknn_core_2: npu@fdad0000 {
 		status = "disabled";
 	};
 
-	rknn_mmu_2: iommu@fdad9000 {
+	rknn_mmu_2: iommu@fdada000 {
 		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
 		reg = <0x0 0xfdada000 0x0 0x100>;
 		interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;

---
base-commit: a619746d25c8adafe294777cc98c47a09759b3ed
change-id: 20251215-npu-dt-node-address-7bfeab42dae9

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
