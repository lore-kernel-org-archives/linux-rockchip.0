Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C614AC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 11:12:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58FFA61166
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 11:12:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58FFA61166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pY+ShyZpgKp//mGGU4Q06xkhuebSFk6OPm95/P7A3ds=; b=Mmf6NkyQR4u5Ho0MpAUnDbGOX
	aHJZe/MEdNKyM2GFR/tRCoNOVNFeIobNFosH/xOPsrYw5hIkvjrcNZExYMEHIwr7ZknRCepnaoQ2F
	u7BUa9tXJCWwPQtvw5mgxN1GFferdPQyJ7D2uuT3uYxQyNX3M7FUXa2iRM90fCPC4jfWYvRJGyO0h
	5+Q71QnW1peELOOaLEubN1JILVJHo/ogQmWZDVr+0DINgF6duNoG/f7O3FNa9ZVjqG++ZB5qR2HWH
	KYT0ntfAuPdWhvb5hO9WsaHQ8h2fRXsLOlAEU5tSBv9H1aow/Q4jFX5Lilsu4e9MUCID250bbcSqw
	xjp4t7qwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lebvN-0045l8-UQ; Thu, 06 May 2021 11:12:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebvG-0045k0-3C
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 11:12:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5nPj5ekwuqefYekmH8kNs4rw162hQiGlpiEL2D4gWns=; b=GhmIhQ87QkuICnkzcRt7JLjxkp
 kPkSvlRiza0mNu61WpbFsiwzV/qtqRCeVGk+HBPpV0pl0XtxFfU8wHJrc1+5KDXHLwmDgzcHtEXtM
 cvxm4Tm6ZRHrgg0lCIlCiGVUFZDEFkGuB0zVMvtz/lTmI3FRTF+FT7DGCf5D01b8r+yKW/HbMMiPy
 FdsKAmuP6++mq/hzDBADBd+4WKKSB77/+mfSyHAuUsUMi7s09RoZQl1O/5/h84/AHV9AQQRDeR08U
 9XhL797XAoJXo12DnPZK9xahEjDCJ+xSzzH+aCzY9OZvqGHpnZsZl7dGXYALg4ywKsx3ZQ7HGJkUa
 M+Gb5OSA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebvD-005ybT-J3
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 11:12:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 364201F42FD8
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH v2 2/3] arm: dts: rockchip: Fix the timer clocks order
Date: Thu,  6 May 2021 08:11:35 -0300
Message-Id: <20210506111136.3941-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210506111136.3941-1-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041159_772803_4EED4AF3 
X-CRM114-Status: UNSURE (   9.25  )
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

Fixed order is the device-tree convention.
The timer driver currently gets clocks by name,
so no changes are needed there.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 8 ++++----
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2298a8d840ba..2c08ae60e4a1 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -150,16 +150,16 @@ timer3: timer@2000e000 {
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
index 05557ad02b33..03ae83f50a17 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -196,8 +196,8 @@ timer: timer@ff810000 {
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
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
