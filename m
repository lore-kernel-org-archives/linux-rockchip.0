Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D895C0755A
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QK7LXJZI5MLhiUItPR/5GP5fguGBYFD5YyTlTdsDTY=; b=rrN/o4wfwVU3Hr
	kRbhQqISnVIczBDubg71FepX8lMojx7lecrm9R2WJlnV3apwmt0D7A2GnK7A7zNO7g92kwuolUBaH
	JPRHXWJ+phB0zJnfTfSt+bSjH93I7knQqjmzOSqd22bYrbmUY1i9YBCVuaI80dEbRksnnarLag0xp
	chIOkXLi+Pjef4+P9fP/aBfX6FaLq7zbz1DjSFywhCmDMZXcNC6g0Oyqul3H+/QttigKAA9jekwhs
	0/p+8lnB7IFpwzmmDeH8TUyrUscXqgfFy/2eZHrZG4gVXf7tMiqUQi1VRz3ZJFf0iAO7nCJanAag3
	4aAX0KFRMKJnwrtLtjhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tqP-009MsB-0v;
	Sat, 25 Nov 2023 14:41:17 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpu-009MWw-1L
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:48 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-285636785ddso2045238a91.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923244; x=1701528044; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IUgKD0qz4V3/XXhXUCXdndZjhXDkH98hRGDGFOanDcc=;
        b=hf8ZJnqTQatRQZfbIevz7ypVUWyQNmpSBBoflwKRakhrXzNfny546TG27DREA8KPOT
         4c2vxMmcqru+7k/dxWHSRCTfkt7LXYLqaGsGIvNMtVC4D8OBaKLFyF8/QiWvKYIuOFIu
         lg8jOc73jXgsJ5Ot1/b/gVR/AhFl+NY6+MkggnNCxmxZQXALN1XEijtsk5q9YWeT6tbj
         8bTHodhD8C7rxwO4F2IczcuAbf9HQ+8qfBNy97Gv6Lt/wSw8iISgbbZeX3yfjKa68G6l
         2RYwhiy4yAtgWVRwzWmJNw1Lh/t4Um/SSBUR32ZymQEkdytDX/gDmqx66V+oVPr8155R
         pvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923244; x=1701528044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUgKD0qz4V3/XXhXUCXdndZjhXDkH98hRGDGFOanDcc=;
        b=lVekHrA5xb0si96sLNnYOI81bkaiD9FqzkyHsltQsZfSyiAO7i/MoezrE+t/eKU43O
         1JADitJycnXLTEoBbC7Z/vZw7BP39bxwmHKweZfd4rDjvLQBsCQ4Yqymouw6kfN4UN3u
         /LwX2yIeRksgEtSMbU/+wM+l0iWTiHRkKlM35Y1iGSLrVXdyZFu7dKD+PgsJnUEtMx1T
         8TI3TUkeGXUtFYivwNeCnlj3cCqJjGeznhrWXj2yAt/N4KOh1u36et3fNmFI9bkp6mlH
         7sLAHl1pZp64kl7944+dXxmkGwmPAQaEtNtDjP+pnfl5agw/LZv0CVm+RhLt6Ntxhi6A
         EQ/Q==
X-Gm-Message-State: AOJu0YxRV4gYtCC41gCKHXbVSO/PnCTAl85NhBxIXXYrTfKS9+Bpm2dO
	WoHz5xH3632ZLasoaG4E/4MOMg==
X-Google-Smtp-Source: AGHT+IGAgxm743znNlj8wApEJKbIGlJxeIn8bL/GrrcKdJGwx2Ocie85VdA72i+sp0r75E8L2/GQbw==
X-Received: by 2002:a17:90b:4a09:b0:280:8356:10b2 with SMTP id kk9-20020a17090b4a0900b00280835610b2mr5927050pjb.5.1700923244578;
        Sat, 25 Nov 2023 06:40:44 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:44 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 06/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
Date: Sat, 25 Nov 2023 20:10:08 +0530
Message-Id: <20231125144012.58668-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064046_453111_50CFDF18 
X-CRM114-Status: GOOD (  10.86  )
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

Edgeble NCM6A-IO board has 2.5Gbps Ethernet via PCI2_0.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 845f90c302ca..7e838d76fa73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	aliases {
 		serial2 = &uart2;
@@ -11,12 +13,25 @@ aliases {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
+
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &combphy0_ps {
 	status = "okay";
 };
 
+&combphy1_ps {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -33,7 +48,22 @@ hym8563: rtc@51 {
 	};
 };
 
+/* ETH */
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>; /* PCIE20_1_PERST_L */
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	status = "okay";
+};
+
 &pinctrl {
+	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
