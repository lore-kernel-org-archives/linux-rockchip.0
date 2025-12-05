Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 380ADD3749C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 20:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhScbsgKtk7KJIsAHsj5svGcA/NspcZCYFXjg7A+v+8=; b=FcmtTUdhyIwSc6
	cnHI6p9X4ymp8FnB9sPp0vAAq7NH0St5TvlnNb90bMeUP2tPMfSuqTLvWoCu9AQPIA64RoYYP7+Fc
	+cFlXd8He2wuR8TJ0Uu9p0k6ZEmDGyrgGfkNz1NnX0YP4nOzLmN4SCnQCalY2Mdm/6hgemJ+alreS
	uKxSc77alYhrQ3TBmLEKY8rjf8DlU8v4WBp11I0+5GiTul0Dow/EJXafS5tKX8Cs3QVd9wI+55mlm
	it0ZKLvH0EZ4+rEuPLxEPYgj6hpU/eJQPTyclYqMiV6H1SR1lGrL2yboajBnkdlXYLuMEqWZajbHA
	/naXqdpuaKYV9W6Z2J3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcEi-0000000A0dr-3X0q;
	Fri, 05 Dec 2025 20:17:04 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcEg-0000000A0dI-1NaD
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 20:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pn/ekbTIZqC3VuEnsI273ukLxN04lGciAMmt5wrgHOY=; b=NL+W52IFlmNuXro/qvyh6AlREY
	us+g7Y8e5U72qis/gZq0auakjgcasXr3p4AITtRvMHeo0W0dREe1n/potg0I+vJyNHTKY55JfnYZY
	AusMf1u+ruPh1bpj+97ycA9qtCLIcbnyHOySNUOlH3wCbFmHBedM5lEwjS11CeUO//Q0=;
X-Preliminary-Spam-Score: -4.3 (----)
Received: from [45.142.19.84] (helo=zozo)
	by tika.stderr.nl with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <matthijs@tika.stderr.nl>)
	id 1vRcEX-00DDbl-1b;
	Fri, 05 Dec 2025 21:16:56 +0100
Received: (nullmailer pid 2868416 invoked by uid 1000);
	Fri, 05 Dec 2025 20:16:53 -0000
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, Matthijs Kooijman <matthijs@stdin.nl>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3308: Add gpio-ranges properties
Date: Fri,  5 Dec 2025 21:06:53 +0100
Message-ID: <20251205201254.2865179-5-matthijs@stdin.nl>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251205201254.2865179-2-matthijs@stdin.nl>
References: <20251205201254.2865179-2-matthijs@stdin.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_121702_372713_B83CF36F 
X-CRM114-Status: UNSURE (   8.81  )
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

This makes the mapping between gpio and pinctrl explicit.

This does not immediately change functionality, because the
gpio-rockchip.c driver has a workaround that defines ranges when they
are not present in DT, but that relies on global gpio numbering (so
AFAICS only works when the rockchip gpio banks are initialized first and
in-order). This prevents the fragility of the workaround for rk3308.

Signed-off-by: Matthijs Kooijman <matthijs@stdin.nl>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 31c25de2d689c..681d2429d541d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -889,6 +889,7 @@ gpio0: gpio@ff220000 {
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO0>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -900,6 +901,7 @@ gpio1: gpio@ff230000 {
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 32 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -911,6 +913,7 @@ gpio2: gpio@ff240000 {
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 64 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -922,6 +925,7 @@ gpio3: gpio@ff250000 {
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 96 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
@@ -933,6 +937,7 @@ gpio4: gpio@ff260000 {
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru PCLK_GPIO4>;
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 128 32>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
