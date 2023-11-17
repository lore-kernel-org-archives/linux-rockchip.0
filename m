Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BAC6C5AE5C
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 20:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xlwpDw97cpFgVHuMH16Jpc6U6MrWEPHms/kNf89N+8=; b=pUW9Wi3qGxXoK7
	xMWXHmYFkUkPvlSw5II1ih40C9WjaQ4ouX/hQJPthF/sBc/iZsOSEi3mwhfG82rkQvJr9RfcfZ71m
	s7BpTKPe7XsRQag/bb7NQ/hnbDC7KKCGgjrT06qb+M8ZQaq8wmXal7kSKeGFnav9VKBBdo/ZqNN00
	JaCMYxxrvCxQoscXc5mXc/UoLkQPWtrnvyZvcRWsV4Wpb9IU4CDyRILRn26PxUtP2zpoVrAIXQi+3
	tQxDtXXcOi36ALJhrO5e/JagJj3c2l7WlFIksoBCkQ9Ggd1DdNj+j0L+tOQ93UYm34pqal+JHf0HS
	NEDMGNcMn8Nzxt+zllGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PV-007Enb-2F;
	Fri, 17 Nov 2023 20:25:53 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PR-007Ej0-2Y
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 20:25:51 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1f03db0a410so1261909fac.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Nov 2023 12:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252744; x=1700857544; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=QTRzPydMtvOiBR+BO0Lhj2Xrhb34kkRMfD/D+YQRS2LW/WO11L908qNMFOy3VxpD6I
         KY1/EUebLmY94DRGsvxVWjE5Z8aB6FEWsEmZL39neDOB+SzNrvsz8/IM2QwS/rjJXhTZ
         dvErnRWyWGmirsDnME6gFYiQJlGIqVMPrFCyz5oj1ziZs4ldYGkWwztvVyMt908vYJWM
         b7oq41OBEljj8vmBIFFwk0Mlqpdah4zHuVQ7VYA2NS3ZNKDJqjrb7QORxVl20643qAHi
         2SjTaRwGHknVGPrbs7tbZRNINSH5p2hLmukBdgU3de8/GwL91jB5na3BnFuhl4SbwDmR
         1hFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252744; x=1700857544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fn0jnV8watcY8qyeukKxGsG/nXZh1+98BwjcKTbh6rk=;
        b=TFxd94242eiA/ZLiIudAM1S8Ldb8C0cwVkh3HMmjF4mYEHrFdz45E4abS/D7pCh9yu
         DE3lM+KHK/0m7olFez01XH8e4hZ1JI6Ou/W15aePZeb/Z6nPpHdvT0/DkioFlB9WydTY
         wHSh21CiZJRwuNY6Cxhihd4DqKhtqsNBe6BWn1EFibBIh16n54n1wU6uNtIgIRB2Gron
         dPymgslvlGSDnkHiYKOsVrfxU27zCH8aewueBMuzeS+MbjL8Qc1a2EntqkNTC59Uf+xr
         fRaix/i51zWehI7k3UnhU/aFAhyTwqeyBx1dTI5Slro511JhGGvL73RUOwjZaTOc3MBH
         zeeA==
X-Gm-Message-State: AOJu0YxrOPP5sDFiNixd9hSqFFjkyGulscKCm71mlC4FLH4wjl1cLrwP
	kcmjOmdYqCLrB9UK/AUZJh7zn/dZRP4=
X-Google-Smtp-Source: AGHT+IG/WiIIxATDLVZjBpAsRyrTJfq/2AtdbHUrOBdWEejgEZ06vPYVj78BAeiC1A59NcitExnJXw==
X-Received: by 2002:a05:6870:64aa:b0:1f5:acc6:3a5c with SMTP id cz42-20020a05687064aa00b001f5acc63a5cmr323436oab.44.1700252744646;
        Fri, 17 Nov 2023 12:25:44 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:44 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 6/6] arm64: dts: rockchip: Add Powkiddy RK2023
Date: Fri, 17 Nov 2023 14:25:36 -0600
Message-Id: <20231117202536.1387815-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_122549_828787_02558992 
X-CRM114-Status: GOOD (  13.12  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023. The Powkiddy RK2023 is a handheld
gaming device with a 3.5 inch screen powered by the Rockchip RK3566
SoC. The device looks physically different from the Powkiddy RGB30,
but is functionally identical except for the panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a18f33bf0c0e..f969618da352 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
new file mode 100644
index 000000000000..ba32d0793dca
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3566-powkiddy-rk2023.dtsi"
+
+/ {
+	model = "RK2023";
+	compatible = "powkiddy,rk2023", "rockchip,rk3566";
+};
+
+&cru {
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>,
+			  <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>,
+			  <200000000>, <115200000>;
+};
+
+&dsi0 {
+	panel: panel@0 {
+		compatible = "powkiddy,rk2023-panel", "newvision,nv3051d";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
