Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED721C9830D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 08:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n60idyfHp4UjYuo2NwuKXsRu3UVZ9Yw7QzXtYWgCGog=; b=iWB2ZORvhhlpXB
	co3RsY4YmZ2XpRpGsBnaWd3r4x5TOx1TAN9SCdWOEDIJ4Pmwv2XFOUq3mNm7zC1SmIxgCpD+1JOWJ
	DHql9ojVzZxd2V1erxc+pl9PL++Oc29p8gELWCT9dfRUCxOPbw9M7ikQPb/4cirmQDu/0/Z+Ocn49
	AaOFkQKXLDbpHWC9MYINuT3YsygW0E1GPI4lmg1W6V1t3cj9OewmURBxb3180U4noH20bDVM/Y+HC
	VtjUy0XzPa3snVyxnks7S2yYhNzTkr1bcGckDewBCurOsfMD/UrGpfuiY2ek5atwDcTh19RetyOTy
	KUGGs0YoxUVRaAlmS2yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0tr-0000000CsfU-1Ret;
	Fri, 25 Sep 2026 08:03:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA0tj-0000000CscT-39as
	for linux-rockchip@bombadil.infradead.org;
	Fri, 25 Sep 2026 08:03:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=U46+/TQQC41hUZlX1Jqyf2quyZyNvdapr8jATlMb4/s=; b=Msiz3PxIvkNqz519WK+ChirucO
	SaybGfc5l255tyLxFfujxyILLIXP68LvqKTSOO744gSWQtp1CVqmasL5x7F8C2q+gveI1TH5yd6xz
	GLcH40jxm+g9Z3Kwi3bV9mW2nUR0k52zyUXOYeKlg/Tw9fVxWSDOZWusidUcBniPTLfSCIhwmu9o0
	6m6AG0Y4Utpx+7729Mp4Qn+dslKPjZpQ1CF4n4R2+N7H1fmQ6i2S208K9KugpgZJu6kt0OL2f912B
	mjEeGZRHJd1dMRW9FIzN6B39inXMvrFxOnAIYqh+Ivzx57tRwTh6O1MAH1KqsejXmPleRCDv/LwEK
	jZNZ3j/g==;
Received: from mail-ej2-x0f.google.com ([2a00:1450:4864:34::f])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xA0tg-0000000Giba-1NU3
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Sep 2026 08:03:10 +0000
Received: by mail-ej2-x0f.google.com with SMTP id a640c23a62f3a-c2af3a4f193so8764066b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2026 01:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790323386; x=1790928186; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U46+/TQQC41hUZlX1Jqyf2quyZyNvdapr8jATlMb4/s=;
        b=uLK5dmeEnhBlDvqohCPl/YT5ajsqYLIAzHdHFzvPsvgHwS1kljnsnYUA5gQbKoZtGK
         UsMHIcZu/VNxz3VqfP5VL61BKQKPuQXSsQK4weknfV5SNUv2yh9iMmaXPpw1fy1JTW2a
         3xkkvQPCeDQDlWiKJmle30TjmB1HScgHLv0HygNyeS6n9OJHO1ipnwDTGRzfhF03eWvw
         wE53KlGY/rosP79cp3+DNda5zJQFshGK4cBzQK9MtwPNLAIb37K3PgmJSyY6hSdn7pUk
         cVL2JkjJs2jU9bnoXGbu7rIrVPVUSo4kEWLS1IXvbRycSgTNNZoJraq4jMpxU/mb7ona
         nIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790323386; x=1790928186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=U46+/TQQC41hUZlX1Jqyf2quyZyNvdapr8jATlMb4/s=;
        b=sWkSEeqPufEMEAIYeywcLSwmNmkP2Cm7AJQMkOlctXKWNOKRLytwIbcvevDsZMtLSv
         3WPUDL+x5j6hAmOqMjrlQzi3WsrOTVFoFfHtiG9xsO5ktavv2h6dh8V7dFZ468YnhMuo
         bfBF6hvUwm+IbNs+pAsZWk5zyfXwlYm+n2YD+6rgrmZNdlz7Sbq+Dz1+1EeT5AWvahzj
         PFOtJBOXCg+bmSiCPxy6DcShL4ZuUlbQ8QQtD/CXLHGdyfS8DPaW+xCoBIxj5wFq4uId
         SGD+nAVWjLd1/m34HJ+Jjziukk31NIEOBmHEUKg2Er2fSXTEXfqUAxyv0fL2ZS8/0z7P
         z7ag==
X-Forwarded-Encrypted: i=1; AKwUvBwGFbLkT9oguxvXZALSGCNMmMTPvvzHCs57tEdkVY4Ki+n8SmMSJM8fsQ0eMsg0cxDCguDPjUgBI6NqyJtJVQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nkd4jtptpqkcUAjA+lbQHSErTQsQxpmcPdI0UNy9pbWQnKWuDu
	to7Py6dhERZqWw/zcuOY2Q4BQit/oMZVT8oifblPZc4D9t777GRirSFeqm7N4c3matc=
X-Gm-Gg: AYBFou3vWu7le5zuFuT60qY5trNjsuU+za13VIUbt1drrTvMTxHH4BRAf+LkJHA+kFn
	/5POuBnIDW0WY/4SBy/cteclisqQfJ9QEoBdmKxCppti2vWx7llw6/YUSoQtU+wk/Ud0xIwv2ag
	uGbomQ2nfNBv7ywDr+OsZVN0H0BC6P/UPso1NJ7dW2fVYi8ckNGlYEAQoqMuQcYiGwuzTge86LV
	dJqzyOxutueWhXb7wk33wloePvB/756rnRIfJxZHCwiAbSDzxfpfC442ma1796GQBcnPTElqbyU
	6szEYrjKZbx3eXNNKBDuzfsywTeQte9hprYYqePAFu/iq7unL3+2J1VlZUlyhOstorjdK0YfsB1
	mkL1sg+bGXU3IeRiLsTW555WaLdms69fIk44Kl8/+z56p+NblmyojR7CfcExb3jQmPRGRhoLR+4
	veNYxejTDvs8rH8oCKX9/0S/8hxnswVfjGvdiR19UJrDSUjaw0V+QD49R/GLGv1JhLMs9y7fc6f
	b8/IgVaIMYwywnfa64iy+tA2aGi2/j5oGpZt6fcwkGyF/c=
X-Received: by 2002:a17:907:c08c:b0:c29:3aef:f2e2 with SMTP id a640c23a62f3a-c2ac25f2abemr418331766b.40.1790323386232;
        Fri, 25 Sep 2026 01:03:06 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757b9c1sm76976966b.33.2026.09.25.01.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 01:03:05 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add WWAN overlay for Radxa ROCK 3B
Date: Fri, 25 Sep 2026 10:02:58 +0200
Message-ID: <20260925080258.46489-3-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260925080258.46489-1-adam@wermuth.pl>
References: <20260925080258.46489-1-adam@wermuth.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_090308_669078_2161B9C7 
X-CRM114-Status: GOOD (  16.18  )
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

The M.2 B-key slot on the ROCK 3B is intended for 4G/5G modules and
is not always populated. Add a device tree overlay which enables the
slot when a module is fitted:

 - The USB 2.0 data lines of the slot are routed to USB2_HOST3, served
   by usb_host1_ehci/ohci through the host port of usb2phy1. The slot
   has no VBUS, so no supply is attached to the PHY port.
 - GPIO0_C6 (4G_PWREN_H) enables the 3.3V supply of the slot, which is
   generated from vcc5v0_sys by a dedicated buck converter.
 - GPIO0_D6 (4G_RESET) drives RESET# and GPIO1_B0 (4G_DISABLE) drives
   W_DISABLE1# of the slot. Both are hogged in their inactive state.

Tested with a SIMCom SIM7600G-H module.

Signed-off-by: Adam Wermuth <adam@wermuth.pl>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  5 ++
 .../dts/rockchip/rk3568-rock-3b-wwan.dtso     | 65 +++++++++++++++++++
 2 files changed, 70 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b-wwan.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index b677914cd3f1..8a1f24ccaa32 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -165,6 +165,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b-wwan.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
@@ -300,6 +301,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts433-pcb-12-10.dtb
 rk3568-qnap-ts433-pcb-12-10-dtbs := rk3568-qnap-ts433.dtb \
 	rk3568-qnap-ts433-pcb-12-10.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b-wwan.dtb
+rk3568-rock-3b-wwan-dtbs := rk3568-rock-3b.dtb \
+	rk3568-rock-3b-wwan.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
 rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
 	rk3568-wolfvision-pf5-display-vz.dtbo \
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b-wwan.dtso b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b-wwan.dtso
new file mode 100644
index 000000000000..73a19408d61c
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b-wwan.dtso
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device tree overlay for a WWAN module in the M.2 B-key slot
+ * of the Radxa ROCK 3B.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	vcc3v3_wwan: regulator-3v3-vcc-wwan {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wwan_pwren_h>;
+		regulator-name = "vcc3v3_wwan";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&gpio0 {
+	wwan-reset-hog {
+		gpio-hog;
+		gpios = <RK_PD6 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "wwan-reset";
+	};
+};
+
+&gpio1 {
+	wwan-disable-hog {
+		gpio-hog;
+		gpios = <RK_PB0 GPIO_ACTIVE_LOW>;
+		output-low;
+		line-name = "wwan-w-disable";
+	};
+};
+
+&pinctrl {
+	wwan {
+		wwan_pwren_h: wwan-pwren-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
