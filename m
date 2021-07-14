Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 208FFC12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:58:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0292610CB
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:58:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0292610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lk0pcEsCkOgX9/ldwUcLxRfsKBRglYYEyaGNsq/Otk=; b=H+sPckceCt+Xjp
	A6u1QHT3bNBwj/M5n1Qqjsj0Xatn4cqX1sT5YoVW7E8EcquH0byWh4uxW6+WYzFxRkzyyW5Qg4ZqA
	wGeSvZUrooT2rt8zZQ3rvtkWgY0kuuYi2zJ8boCXXXO+OFCliBn9zzwUblcWH2mfNcXbIXLGLSznJ
	FUqw6FYe3qRompebwZUmkc90Gh+6gwYbGmpHyWFNwoNSbGLDZQh8BSF+MieM/XD1njfV/z0sg+JFr
	EhVkMXFUIISOgA9vseGwVXbvrGhlVJsWQm3v9alEdmz9RzRCQKFhoyWIpAxP0o2tcERDC6OKAUI3Z
	qmJN4k2kQgCRdlODdOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3nq4-00G58o-Bd; Wed, 14 Jul 2021 22:58:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kqw-00Egmd-5X; Wed, 14 Jul 2021 19:47:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C667C613F4;
 Wed, 14 Jul 2021 19:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626292049;
 bh=4tcDpdxrXw1XvD4LTfMK69Frzm4Uaw5FIxR/EHkUNKM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lfJP44GpRy0DSysA0ji8xyA6EWqpoNlY7jex3wmtEIocvXG4eMF8qY39jzjxHuNjy
 +Vx4QKxgIDoPabeJmAz8N/eM/shOlsS0MfCr432q//ipCCVqrFrQYmjM4PYmY5NFPE
 b4TJmmv5vFyFVmDiNghdDicXnxWdPJ63QZ4cdIFSfvLrTu20HFPGfmz8RsfnX47x2k
 D1xSLv0ZU6ghUVD9nFCjRdFZI7myKvYQT4brqdYxoNwZm1ulAIYG92FDKYd5DRrccA
 iHq4AxKZ5HmDnNqwyFkqLa5BFTB+G7t7crjfVEg1JJgRiw6Ay/aFaK5gSsCS/Q4eK0
 gtozR8m378dfA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 04/28] ARM: dts: rockchip: Fix the timer clocks
 order
Date: Wed, 14 Jul 2021 15:46:59 -0400
Message-Id: <20210714194723.55677-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194723.55677-1-sashal@kernel.org>
References: <20210714194723.55677-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124730_314243_C8C720AF 
X-CRM114-Status: GOOD (  10.17  )
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

From: Ezequiel Garcia <ezequiel@collabora.com>

[ Upstream commit 7b46d674ac000b101fdad92cf16cc11d90b72f86 ]

Fixed order is the device-tree convention.
The timer driver currently gets clocks by name,
so no changes are needed there.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Link: https://lore.kernel.org/r/20210506111136.3941-3-ezequiel@collabora.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188.dtsi | 8 ++++----
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 1399bc04ea77..74eb1dfa2f6c 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -110,16 +110,16 @@ timer3: timer@2000e000 {
 		compatible = "rockchip,rk3188-timer", "rockchip,rk3288-timer";
 		reg = <0x2000e000 0x20>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_TIMER3>, <&cru PCLK_TIMER3>;
-		clock-names = "timer", "pclk";
+		clocks = <&cru PCLK_TIMER3>, <&cru SCLK_TIMER3>;
+		clock-names = "pclk", "timer";
 	};
 
 	timer6: timer@200380a0 {
 		compatible = "rockchip,rk3188-timer", "rockchip,rk3288-timer";
 		reg = <0x200380a0 0x20>;
 		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_TIMER6>, <&cru PCLK_TIMER0>;
-		clock-names = "timer", "pclk";
+		clocks = <&cru PCLK_TIMER0>, <&cru SCLK_TIMER6>;
+		clock-names = "pclk", "timer";
 	};
 
 	i2s0: i2s@1011a000 {
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 5dd37d09c1f1..8abf0990c691 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -220,8 +220,8 @@ timer: timer@ff810000 {
 		compatible = "rockchip,rk3288-timer";
 		reg = <0x0 0xff810000 0x0 0x20>;
 		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&xin24m>, <&cru PCLK_TIMER>;
-		clock-names = "timer", "pclk";
+		clocks = <&cru PCLK_TIMER>, <&xin24m>;
+		clock-names = "pclk", "timer";
 	};
 
 	display-subsystem {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
