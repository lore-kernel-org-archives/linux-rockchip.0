Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64379C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzp5x6pHFTuymOe9UjhPVPGz5UJCPJ65J59iygSw3tw=; b=p0DImlsrNMmAp8
	P7hOIvDNyiDpv3lEmwlK2bMy4DGp82SSf+UYuTAHpXf3XodBLRgPmUmZfGSRedo7iTp68OE11t+nY
	K+vVNhTaO5nIwfaYk3LDB5J09H7UJQ89WhbVWiKaNI/gtbBmne4q378xIOi8F8ibuPJWKQZQqBXfn
	5qKppSa1fS6iTjOoh7dqijwBmliRl9Tr4eDlb6MIXJNoWJHl1OV3NIMi6vUBGacJQOZ9sPKJMwzVP
	HCuNrhtOUs3oGRJ7fWGJoxytkr/LKBpayQRK2o7Kyadqvff1yaa6+eIuhkSKF5qoIh0yUH/6/49XE
	F/ct4gE3DsoZ+oqpuKOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3iJ-00AvjF-7J; Mon, 25 Apr 2022 18:45:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3i7-00Avd8-53; Mon, 25 Apr 2022 18:45:24 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 00DDA1F4300E;
 Mon, 25 Apr 2022 19:45:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650912319;
 bh=hSDAXRypJ/Z4HhJhylWfvqB1KkaymD9gTFsthsCapJw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TsXfhHhpeDrZ+m1pUkaCZLU7zwah3JdG9lNHFDdSodF3B7ViBCy/UWy0ETU0Aa+XM
 78dtZ+rkh+3x10Lw4UkXJ9ADAmw7YUqv/gDgpYiU9t68PesD2PL4GaljMjG81kG6x+
 mQ+MIBYEF0CTTvQj/ULkOL/NzToEIJcU9wZYNL4BNqape+gPMTzljHijClLOpfbDBV
 IKJ2BsqK0xrwxU9pmY1/dLR+u/otjIXcFpZVwUu2WAkfIL1RYN82mfmrLnw6CnZBa7
 SrxrcHdMLe9AFfuyRvVe73I3Mml2ek8Gw3vZQKvmz/Dg8CunrwjjSsYrKYRYhm/j6/
 b8Od9akPbxCqQ==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add vdec support for RK3328
Date: Mon, 25 Apr 2022 19:45:10 +0100
Message-Id: <20220425184510.1138446-4-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220425184510.1138446-1-chris.obbard@collabora.com>
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_114523_370551_85F6014A 
X-CRM114-Status: GOOD (  13.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The RK3328 has an vdec device with dedicated iommu.
Describe the vdec device, the required power-domains
and enable the iommu in the devicetree.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index f8ef149fedad..49ae15708a0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -306,6 +306,10 @@ power-domain@RK3328_PD_HEVC {
 			};
 			power-domain@RK3328_PD_VIDEO {
 				reg = <RK3328_PD_VIDEO>;
+				clocks = <&cru ACLK_RKVDEC>,
+					 <&cru HCLK_RKVDEC>,
+					 <&cru SCLK_VDEC_CABAC>,
+					 <&cru SCLK_VDEC_CORE>;
 				#power-domain-cells = <0>;
 			};
 			power-domain@RK3328_PD_VPU {
@@ -660,6 +664,20 @@ vpu_mmu: iommu@ff350800 {
 		power-domains = <&power RK3328_PD_VPU>;
 	};
 
+	vdec: video-codec@ff360000 {
+		compatible = "rockchip,rk3328-vdec", "rockchip,rk3399-vdec";
+		reg = <0x0 0xff360000 0x0 0x400>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>,
+			 <&cru SCLK_VDEC_CABAC>, <&cru SCLK_VDEC_CORE>;
+		clock-names = "axi", "ahb", "cabac", "core";
+		assigned-clocks = <&cru ACLK_RKVDEC>, <&cru SCLK_VDEC_CABAC>,
+				  <&cru SCLK_VDEC_CORE>;
+		assigned-clock-rates = <400000000>, <400000000>, <300000000>;
+		iommus = <&vdec_mmu>;
+		power-domains = <&power RK3328_PD_VIDEO>;
+	};
+
 	vdec_mmu: iommu@ff360480 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff360480 0x0 0x40>, <0x0 0xff3604c0 0x0 0x40>;
@@ -667,7 +685,7 @@ vdec_mmu: iommu@ff360480 {
 		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
-		status = "disabled";
+		power-domains = <&power RK3328_PD_VIDEO>;
 	};
 
 	vop: vop@ff370000 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
