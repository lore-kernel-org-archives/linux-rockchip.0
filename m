Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12911EB7ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 11:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yS+8rwX0NLS8izYTBy88M6Ao3/6LipU1ypZ7UnmFGog=; b=pICxXT1fXnASoe
	0QUtiSGlaz8e6KUnafrERvI1f7z0E1vKYq384DeGAvPucHvDf4tsUnmoSKCQsJnWTO6fA5epo53Mh
	Exfs7+kN/WbJMbJBkxJfJucreJAxVLT0W7lI23eY6BvMr5Jv0qWZOID1U5Md+a1mTzTOcJr47iZzF
	8TFUwXXsIY05PvT3M1ob8MmAbAfgYgFsBG0WW0sAaXYPNNbrRXAVN/w9kjAwo5N/vgiR3W7X5/UBq
	x8KAY8zTVxTrBvJSlZxAluSC0koTmb873PavxBsG42E9rvR31Rsb0IHpIp1K3RiJNtOqHuKVGhScE
	Vv62ABnjag6HsG+zwxow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxk2t-0000000H2jg-2it8;
	Wed, 04 Mar 2026 11:05:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxk2n-0000000H2eC-0KQB;
	Wed, 04 Mar 2026 11:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7CCAB438B6;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 559B4C2BC9E;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622332;
	bh=0U86WNo0Z1KPyrYfx+eFGzAexTHQ6Omrg+jGefNkr5M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tuQhPifVWB+XJqH/T2lIQJYWkOA8PvUPLTu1S/tkLu3rEQ1VbUEMfF7iKrKcZnn2C
	 R6losqzAC+8p5OiHgIVXwbtNCisobnvT7e2fQUA0RM+U25ZsseH0OcEcXPwTBWAHEZ
	 KeCd5UGkTq8JBdb7QYFVsuLSa2lFTLBApgZTyLMl2wyEdsDWC1RL+XILRb1+pTPG8H
	 d+nCRyE/F7YXnFvK7FIaxcg5oZaYRYd16+Lwk3urICPUrApxeMtNqX8DpIA5pod6lD
	 lpsNEytlv4Oj674Xhu+t9gAPBa192FQm4Rx/ebtcTHPmutsX6UPr5NvclfcZz/dILs
	 YGw/OW68Qakxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43243EB7ECF;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Wed, 04 Mar 2026 12:05:27 +0100
Subject: [PATCH v4 1/4] arm64: dts: rockchip: assign pipe clock to rk356x
 PCIe lanes
MIME-Version: 1.0
Message-Id: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-1-37abd7ba29d0@ixit.cz>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2523; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=nJWr1cG55C7TfO8lmuP7iO4pkz7D7P5warAqQ5V7GaM=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpqBH5+76cstljDcdJQqO27u9npzazHz0WHktMs
 RATNgGZiVSJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaagR+QAKCRBgAj/E00kg
 ctxBD/wIdVOClRo0Xr9QvWclph7PqoDR44+VURYr41+YD/4RlyzAe/948Bu4XS2V4Ujyp+TfGH7
 Jmnd831Htg/1Y/2nOK8Jfd5Dc7QFK+pihhm7IOy3AR9g54sz7ddaAvdRGz/xa6sh2zMO2U4JZQw
 ud8Z6oJsy3xJTeS11PTH8UUTQkjcnalAqsxQQPgtD+BShRVHQEPMvplR8TDyo8VVherlOjt7jdI
 bKI09/HIOLQKDh6hG9cCStcfRZpV6CinHfNMTdPHTtDOb6LdUC0a3SIdOxXcG+nxzRoJajGFkbW
 mBuk1ijJngCropAIITQGS7d1ROhXx4+m6ehxMFrjF2NNyd4tbuSBJ1LlQZdWIrDS5kSPwTfA6Us
 pX3v3XmIe0RLgcVkxzURUWjNA96va95xQnviXhAJwiBW3S3CVJTcXxW2LCxSFQ92d+X2Zdcn0t/
 0liNFDU1E8k2Ght8tBN5DQgB2lQgnRKDBdy7+CgEPwh0SJDtqJgauDNjiH3aQN7Cfg+UAAFl1Tq
 wEh8uNOoGXiLcrjaVjLD80e8BsCxfuXBeylgIcaW8vykJlb7mPtHenVOMUwAgeegFTND9tktZS1
 T+4wQAbotfwUYigrPhhUE7rs+0EQ8IsZnaJOTmkBRFnqyqE3HbInprZNMvOmmyu/Ybw4om9BafU
 fwqmyGml7G0cjtg==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030533_179021_C28518D4 
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
Reply-To: david@ixit.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: David Heidelberg <david@ixit.cz>

These clocks are used by PCIe lanes, but we're missing from the
definition.

Suggested-by: Charalampos Mitrodimas <charmitro@posteo.net>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 12 ++++++++----
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  6 ++++--
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 658097ed69714..3bc653f027f1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -155,9 +155,11 @@ pcie3x1: pcie@fe270000 {
 		bus-range = <0x10 0x1f>;
 		clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
 			 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
-			 <&cru CLK_PCIE30X1_AUX_NDFT>;
+			 <&cru CLK_PCIE30X1_AUX_NDFT>,
+			 <&cru CLK_PCIE30X1_PIPE_DFT>;
 		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk", "aux";
+			      "aclk_dbi", "pclk", "aux",
+			      "pipe";
 		device_type = "pci";
 		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
@@ -208,9 +210,11 @@ pcie3x2: pcie@fe280000 {
 		bus-range = <0x20 0x2f>;
 		clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
 			 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
-			 <&cru CLK_PCIE30X2_AUX_NDFT>;
+			 <&cru CLK_PCIE30X2_AUX_NDFT>,
+			 <&cru CLK_PCIE30X2_PIPE_DFT>;
 		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk", "aux";
+			      "aclk_dbi", "pclk", "aux",
+			      "pipe";
 		device_type = "pci";
 		interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 68b48606f6010..15741acac6274 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1020,9 +1020,11 @@ pcie2x1: pcie@fe260000 {
 		bus-range = <0x0 0xf>;
 		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
 			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
-			 <&cru CLK_PCIE20_AUX_NDFT>;
+			 <&cru CLK_PCIE20_AUX_NDFT>,
+			 <&cru CLK_PCIE20_PIPE_DFT>;
 		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk", "aux";
+			      "aclk_dbi", "pclk", "aux",
+			      "pipe";
 		device_type = "pci";
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;

-- 
2.53.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
