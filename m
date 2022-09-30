Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 785DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZInpjdXvDiOCQCBkE5DPcIfahaReOllIM+3yPwiVHnA=; b=gQR/SBLpbZVcyb
	RnyfvUm7e/8Tl3GM5/7caSdbX12DqHhAyfPjzfFW4J6MLdc0eKfTqkE4Eqio8pGapl/sC2I0/hKL7
	6um1vgvGg9BIEUNqbZXEICGT12LDqZl17xdn2UpAeIA5NbuOENGMpaX/1GRqsQtGgpIsgSUkqhAXV
	SYDbADWTojGSKvJVub8PFx4KLfIyfNbMREuhAZWytZ0aZUpd7PBfhp7U0MdajRinwTzpGeVYGjf4M
	5VmOyM46cYlmj+pRTqJvSldGYjoVtjpXrN8bi6W7REMaVFUsVFsq+S+qNxMMGayhJ7iL1q1dIN7Fd
	w0bbXix9jeSgh5VI60rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8NZ-007Eiy-Nl; Fri, 30 Sep 2022 05:16:05 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kj-007CxZ-2L; Fri, 30 Sep 2022 05:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=G/DCuas0MLgTm0P57BFgZrTVZlNe0W+v2z9cQz8Xx8I=; b=Gzu1RgYPzscghwaBKykzNVbZI/
	dU5cBOzRq9yZJ4ddEHK3Gw9V9NNGw9N37xtJOFPeilJjeMRCtxA89cpqr9dS2ccoFqeOnW8xjYmWq
	G+uuCKstAHHjLFGWGU/3Sh+6ILyuZLa0gAVCHY5+cEyLKR8uQOtmx8nNCjorGkpairbObyjBaDc7e
	cYoZDn5FA8loUNV7EDmr8FyuV6UwkQ/G+LqbeGRAxJaD1lIUK1Z8Ok2gMqU9asf2yGvnkA/SfkUr1
	1m39FfssCjIk7U8c9J3NaTegHR9z/qrWPPctUQUgbtm+Oghi2jbEvj5yZw+ofLll5gmtV3I7eOcvo
	GJZw9tlA==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kg-00Djg8-LL; Fri, 30 Sep 2022 07:13:06 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kf-001dwS-34;
	Fri, 30 Sep 2022 07:13:05 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH v3 13/13] arm64: dts: rockchip: Add IR receiver node to ODROID-M1
Date: Fri, 30 Sep 2022 07:12:46 +0200
Message-Id: <20220930051246.391614-14-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221309_129209_7C65616F 
X-CRM114-Status: GOOD (  10.06  )
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

Add the infrared receiver and its associated pinctrl entry. Note that
there is an external pullup to VCC3V3_SYS.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 2f685c606bb9..59ecf868dbd0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -49,6 +49,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_receiver_pin>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -519,6 +526,13 @@ fspi_dual_io_pins: fspi-dual-io-pins {
 		};
 	};
 
+	ir-receiver {
+		ir_receiver_pin: ir-receiver-pin {
+			/* external pullup to VCC3V3_SYS */
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		led_power_pin: led-power-pin {
 			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
