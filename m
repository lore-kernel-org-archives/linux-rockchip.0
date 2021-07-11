Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D6DEC07E96
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 14:34:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0952F61159
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 14:34:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0952F61159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fnUlYSBa+RkbfDHJgWyN2SaJ47lUz7ex11zETQ972ws=; b=AVxE6OHSTqmTdU
	C/0gLQFAZgrfPoihlOnDO9IwKTqCEfvtxyaxJD6rrPYkQu3Vi7n5x5hE6n37/AtGuC5Htp+up7wA/
	vHxP+MeXJolQhhb0pnY33nCeWkIapFZsN+r7qsC3gQVdyJujeRMlH2NYCkBoJCidYRRTqHuIjkiV0
	Li4Vl4EGfVFcXpQHOaZP/0bgEuW80xVE5+3VSPhesCPQy25ymqUr2EXaD9JgdbD1u2A8rs8vtLBtq
	NDHblYWzVGN6cGhT/c2H2CCARvpECADLmlCAl/6exYSjs2baP8UVDbOFnjmJRcgveoDCXEnPvLaT1
	sxtK0HyABWL69SX1af1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2aXl-005AwQ-6Z; Sun, 11 Jul 2021 14:34:53 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2aXZ-005AuX-AT; Sun, 11 Jul 2021 14:34:42 +0000
Received: by mail-ed1-x52a.google.com with SMTP id ca14so5981615edb.2;
 Sun, 11 Jul 2021 07:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=G4/vKfc2PJjfZ6X6kw4yk+dkdCYzRok+fw9mXUFf5m8=;
 b=oKdZfBRmfRjQ2nC5RuHWchA+ZFmmiWpy/LzF38bR0HrH3juk8rLV2jZHXtQqjEi0XQ
 zwnXrQR2fDoyPcQrmWv+lemhvhswrqk0B86HprJSH8GOHS5hmijnG/Cx5J/NHg1ylxHc
 Loc2xOyFyCHF8OPqQHWVBYCrAl0r6HEbvQVQAEsTQRm0AAeegDP68PH4N8fEepTLw1A8
 cmvenbGrrOk2Xprt9p/ZXr8CD4i+SyzQ5o31AoI6OS9OCb0j7hw6mrf6PPJ+antmS2X1
 1gmYUXKtd+dUeUxnrs2MPYIfiL7wrkXPaAT2KsYj92ANlSKj2nKoCKTqzeN559H1yHV0
 Nvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G4/vKfc2PJjfZ6X6kw4yk+dkdCYzRok+fw9mXUFf5m8=;
 b=F1eu1MnWVrAA9Dl/8f3woY1B3anHnNp3TbcMcSjW+aIQ6SrB984+dCzSF2V8Tuki5l
 eJTjmV4XuhZWXiO8yLJr83bSPicfzRKYVl0ATKlmG2wLG5zLTP1jhlgrbfetQQ68xRi6
 +kXrvh5PLDOnZf8PM0Ahw79dSOcADZ/4sQC+xe6zzeEYIopG7yrU8h2Ff6D/86X0hufu
 JFLy3bnf5x5tRT1lDRAeE2ezKRBLu5JMtPwcl70HVwtT9OIpELvA60Upq3WwOLedWxkO
 iqlUZxhVega6CTYiL+5dVmGQCnZhNBZybrqzj3aSi5jifo3tRlE5Cf/C5auOtivMvuCH
 +TeA==
X-Gm-Message-State: AOAM530B1MIPTO6yIRIv7QuaS833QQTX7HSQ6XmgdlCWZY3DKr8wd9Hz
 yAvtxnflHRQ1h0gn53g9/s8=
X-Google-Smtp-Source: ABdhPJxZrywtkxC9y5RlZG3iDoxJXZHnaFv84JhTwmO+affOXrUL0sp1Ig/rHM/d7sD0A0gZ2yaUCQ==
X-Received: by 2002:aa7:c652:: with SMTP id z18mr1530065edr.361.1626014079744; 
 Sun, 11 Jul 2021 07:34:39 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a23sm4687076edt.42.2021.07.11.07.34.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Jul 2021 07:34:39 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: rockchip: remove interrupt-names from iommu
 nodes
Date: Sun, 11 Jul 2021 16:34:29 +0200
Message-Id: <20210711143430.14347-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_073441_405686_09970C83 
X-CRM114-Status: UNSURE (   9.72  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The iommu driver gets the interrupts by platform_get_irq(),
so remove interrupt-names property from iommu nodes.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 9c5a7791a..4dcdcf17c 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -987,7 +987,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff900800 0x0 0x40>;
 		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "iep_mmu";
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -998,7 +997,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "isp_mmu";
 		clocks = <&cru ACLK_ISP>, <&cru HCLK_ISP>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -1059,7 +1057,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff930300 0x0 0x100>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vopb_mmu";
 		clocks = <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3288_PD_VIO>;
@@ -1109,7 +1106,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff940300 0x0 0x100>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vopl_mmu";
 		clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3288_PD_VIO>;
@@ -1252,7 +1248,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff9a0800 0x0 0x100>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vpu_mmu";
 		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
@@ -1263,7 +1258,6 @@
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff9c0440 0x0 0x40>, <0x0 0xff9c0480 0x0 0x40>;
 		interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "hevc_mmu";
 		clocks = <&cru ACLK_HEVC>, <&cru HCLK_HEVC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
