Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17E1C47E56
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:42:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9306A6140E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:42:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9306A6140E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX13V3xBWIN/1k69lrtqaPxrnMmelfrEyLWQTc67NhY=; b=UkARzUjll0riLk
	M4hJMu5JoUsVOQETL71ELEgcXiMHelw+hDxZeMC+qhjstQA6FdrNeU5GqJZI9ZfHT/Rrgj7of2go9
	tAwi6bt2MzHGx+S6xXcp/ka6rpVhcq/FAU08rilUtTVoeUKIG9MoQzRW70GJMaWIlN10loQ9jlcN4
	hnLnW7OU+AskBKPxe+EWr4zW6SfQxR4L2FnxfakUV1GV5GCm8jF4PVlabfdN9U6XrwMWI/A52UFRK
	de5X2jPuhpN/bTa+lzgDzGvxNiafto8USh7USQ0nqHd/YnDz8JvqtR3brQ0yixHkQzNQr3qEUXh0f
	cPAOEEyFV+gZoNl3W+RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3km3-00Ee7w-Ik; Wed, 14 Jul 2021 19:42:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3khx-00EbZa-1C; Wed, 14 Jul 2021 19:38:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1342613D0;
 Wed, 14 Jul 2021 19:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291492;
 bh=pnyR6fwBHtFyf6b4xz5/ykwTIcbWbhXNEyqQ/nN1DOY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gY2bZXgnunmKf0g5N328+A3H37+vJpPXI1qaetzytF1TDIQggatwFsVGX0mKk6iW5
 qtd9ZlNinfrxcwJf0/QD8McjoIOh/Ksv8V1ex087iE/eJWTizOYws+jDdDiWRW9rrX
 g78Lwsvpq6j0Mk/BoaiV494sTThLZZ3/PyrAGciNz4CXtp2IZ3Jj/PaSOzExme5AOz
 Vp/ijYQfTr5s8aWvgzWCWNggrO5zTEEZaFpxNnyVYEnlYfODFpS2qKOxT2deFzZi1I
 1tS8o1EmHBbzv5auMVgU34aRtWYxFdAY+4m2WlXMBiswghncsZQUtFnj6pvyDGdtse
 F4youBTxOwPvA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.13 008/108] ARM: dts: rockchip: Fix IOMMU nodes
 properties on rk322x
Date: Wed, 14 Jul 2021 15:36:20 -0400
Message-Id: <20210714193800.52097-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714193800.52097-1-sashal@kernel.org>
References: <20210714193800.52097-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_123813_151998_20357A22 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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

From: Benjamin Gaignard <benjamin.gaignard@collabora.com>

[ Upstream commit 6b023929666f0be5df75f5e0278d1b70effadf42 ]

Add '#" to iommu-cells properties.
Remove useless interrupt-names properties

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Link: https://lore.kernel.org/r/20210507090232.233049-4-benjamin.gaignard@collabora.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk322x.dtsi | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 9f02ba7a0cc2..25f83f2f5618 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -558,10 +558,9 @@ vpu_mmu: iommu@20020800 {
 		compatible = "rockchip,iommu";
 		reg = <0x20020800 0x100>;
 		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vpu_mmu";
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
@@ -569,10 +568,9 @@ vdec_mmu: iommu@20030480 {
 		compatible = "rockchip,iommu";
 		reg = <0x20030480 0x40>, <0x200304c0 0x40>;
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vdec_mmu";
 		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
@@ -602,7 +600,6 @@ vop_mmu: iommu@20053f00 {
 		compatible = "rockchip,iommu";
 		reg = <0x20053f00 0x100>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vop_mmu";
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -623,10 +620,9 @@ iep_mmu: iommu@20070800 {
 		compatible = "rockchip,iommu";
 		reg = <0x20070800 0x100>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "iep_mmu";
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
