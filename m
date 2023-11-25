Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 408EBC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGZPsryf4EvyWAGhcv1sLcm+vKuLN1eIecqlVOf2TuQ=; b=SoY8qF3oiiHWjg
	dpD1pj2vmy2m01U+dceTO5miG6GYrp2/cg+FQz+1Jb+lL3gGE7lsNmFkIfip8Uhwj+6MbM3kfZJKd
	FsiywrEVWzcejf8C+WttNFtaqE6Unx3VSEdE4PBK5qGwGzh9Cq6Swv8DQdVsldiN3ot/5gSITuEtn
	BG2pXQhBX1W1Eml6rKGmX8wTDlPYOl3mIlm1qJXrUjfYfLlf4d1Vt0ey4stV+6oeg5kNd3vCpwPpR
	Ws/PdwMlW5sC8GOoJlPeJDRg4WT6kRfypa13sNJSP/kwWjk9o1xnBqiOMfU3Lh5kZ5ShdZIFPf1B4
	eLYc21bCH9yVNsruxNNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyr-009ftL-3A;
	Sat, 25 Nov 2023 19:06:17 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyQ-009fax-3C
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:05:52 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6b1d1099a84so2773192b3a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939150; x=1701543950; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+r9JkMSXMkIhlM1pZxLOCkmDOSmodf2EcKndLoszrIA=;
        b=hAETnfVz03i5hINod4tDcvg6ch3TGE/3aM/eEfKwj0WGVFMDhVn1uDuEvhHeQuCC+i
         HJTHX67pSqSOchYujzEtGZ+lkrF5qhIsFZz/i98Hsr3PtOrUKf4TYUmV4fU6RxDYkzC7
         Uo0fyakGcz6SvZI8jA7BWB/VAP4RNsxlyDdNWZih99TDZwHECUbAAOAKxMoh+2kwjFJD
         dplqM4FiESjBMAZDjE7ArQT+z43RJ2kyRTcZQGv1HkGVR7Y0utrLnelxLvvQyB+uuMBN
         r/pCWikHKAx0bBzHHkY1ZswGXMF9NX9XobbwlRRgNPuOVnEOJsKb10U4h9CqO+5Hfqxy
         /YyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939150; x=1701543950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+r9JkMSXMkIhlM1pZxLOCkmDOSmodf2EcKndLoszrIA=;
        b=f5giHC6A+6eMJqURaBddjgOjcPn0QNpzM5+Yn4/supNzrHNi032jnsHDPHwEwsVaFe
         NCttfwrIS3EU5ncqrYyjWHGQLSBAAO4yFXk03SOIF9FWoV5OBxeWboKDDDcKJCpmqwQX
         +aDMQbXXOsaAbydiq1DMDSf/cO8qp6vw/AIs5H85mi+vDllkgQFP6N3thQJ8Z6NCXAYr
         QBkTFWKK1790aFJMg0nojzPK2bFdJV7hd3YXNgn1CrUKM020BXJv5/OvKDz0VykHGr8A
         of1ZKymgx538Fccf0JCauDyXAY+CCw798B7LRdxQVAZiAwDAtJ+krXlPRK0dJeelRPoX
         vGng==
X-Gm-Message-State: AOJu0Yxfv+r6I556JakrGsoepZ2aX6vMuu2j9gac9gMB35Gs4wepxR1V
	tLfHfZyVVuunMd+RZnhVh0Iyeg==
X-Google-Smtp-Source: AGHT+IHZPnt9ap5ezpFrwM0Ask4IRkYU42Nc0A3PbHPDF29b74vh0H4K6wsQqLMEl/GgpJkdDWBxnw==
X-Received: by 2002:a05:6a21:192:b0:18b:5b7e:6b9 with SMTP id le18-20020a056a21019200b0018b5b7e06b9mr10703956pzb.2.1700939150220;
        Sat, 25 Nov 2023 11:05:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:49 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 07/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
Date: Sun, 26 Nov 2023 00:35:19 +0530
Message-Id: <20231125190522.87607-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110551_053655_C7BC7D4F 
X-CRM114-Status: GOOD (  11.03  )
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

Edgeble NCM6A-IO board has M.2 M-Key via PCI3x4.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- suffix '-regulator'
- use proper node name

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7e838d76fa73..088a10fe042c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -22,6 +22,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc_3v3_s3>;
 	};
+
+	vcc3v3_pcie3x4: vcc3v3-pcie3x4-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>; /* PCIE30x4_PWREN_H */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie3x4_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie3x4";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -57,6 +70,19 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+/* M-Key */
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3x4_rst>;
+	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie3x4>;
+	status = "okay";
+};
+
 &pinctrl {
 	pcie2 {
 		pcie2_0_rst: pcie2-0-rst {
@@ -64,6 +90,16 @@ pcie2_0_rst: pcie2-0-rst {
 		};
 	};
 
+	pcie3 {
+		pcie3x4_rst: pcie3x4-rst {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie3x4_vcc3v3_en: pcie3x4-vcc3v3-en {
+			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
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
