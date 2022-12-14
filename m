Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10735C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U7d5D9TjjQkDyySGGwPtvLx+8+/dlZ6KpzZXNkYPawM=; b=GGxJPweqT5T2Cv
	rkEgowDxVbh8RwykU7X1IlOGEELNUNEY2HZ+sRmDo27rBT8890Q/asiGOidEJdHjCUdbZ3DbFyHKH
	BnFLnFV0HAq7GuMrtSaAXUtW5F4OU3Csm7PRsnj9j8wAAXYyzimrCAy20WvLYO+tz1nEi6awWjGAP
	xxKVBziUdEiAvh7dwA73qRN62gMPDiwGgVL7QZJdtY0vFs0eY81bM1VDteUJ/EJjuBbij+mEhc9pE
	qEfoFdTIXiQMhBIOKy0sIQ2WxDldl99wR2gFyXcZyXO+hxPAWWekyG1D9gCghY3y1W2GYrfDy8Emw
	wSkt9k2AnhoYcuSR42hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5U5w-000NPX-75; Wed, 14 Dec 2022 15:54:56 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5U5l-000NHF-0n; Wed, 14 Dec 2022 15:54:46 +0000
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout1.routing.net (Postfix) with ESMTP id DAB7F408C9;
	Wed, 14 Dec 2022 15:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1671033280;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JHabEsGCzp6neX/91Eo3uw+27IBRIbG6zMdrZJN0FiY=;
	b=wXm+8GGyrvLBhaGhEDeCW6DxdJ6kTm/b8lyMIfsgtV4T7PCUwuYIz9B4lp1tSz5R1BKjjP
	tDDEWrZL0i2AoA0YZ27h39JKnOP+itg829Cw7lYgICnkX+tPUv9qgx7MM6FAxMINaMK7Mv
	3qblT7wEZIQh3xcW5LvUnnMMYaVcFAs=
Received: from frank-G5.. (fttx-pool-80.245.72.136.bambit.de [80.245.72.136])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id A85471226E7;
	Wed, 14 Dec 2022 15:54:39 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Alex Riabchenko <d3adme4t@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add IR receiver to BPI-R2Pro
Date: Wed, 14 Dec 2022 16:54:33 +0100
Message-Id: <20221214155433.112257-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_075445_247252_C5406952 
X-CRM114-Status: UNSURE (   8.97  )
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

From: Alex Riabchenko <d3adme4t@gmail.com>

Add the infrared receiver and its associated pinctrl entry.

Based on Aurelien Jarno's patchset:
https://lore.kernel.org/lkml/20220930051246.391614-14-aurelien@aurel32.net/

Signed-off-by: Alex Riabchenko <d3adme4t@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 5701c96d31b1..6473756a69bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -66,6 +66,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_receiver_pin>;
+	};
+
 	vcc3v3_sys: vcc3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
@@ -655,6 +662,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	ir-receiver {
+		ir_receiver_pin: ir-receiver-pin {
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		minipcie_enable_h: minipcie-enable-h {
 			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
