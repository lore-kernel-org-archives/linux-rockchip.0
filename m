Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED97C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLbYSxmBZ6yNB3AwohqxcP5OLnIqC7lGGre3Vv0PuD8=; b=nAkIEee+7F37yc
	yWSDhQ4g+oWWbj6xWBQnvhQ4B59u0c1P0bRl/G792+SeUQfQdrRRsUwFjI7zrRv+l5hZ6DLvSGZEu
	WmXijAc/b7Rpoxkt/1zHtK+jqqILjXJCj55Pdmvz8RU9xOaait8paBWMYbLd3x8SDHFZwdWX5NeMr
	rjQHtp+5w33dSCgwRfNZuPy6vGT5+37kUwesL8s18wInuBUg5j5LdXbth85ylfKzKMhgyO0i3N0kB
	/QhmA9ZfwOWpde0RKIAFIIEZXto7SfgszYePdUTXq2L2T7znZAwiwhYl/UDYjmZ1uYBzb6FTFu814
	iL1u99ZYiR7lPxbvWyGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tqP-009Msj-2a;
	Sat, 25 Nov 2023 14:41:17 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tpx-009MYj-1S
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:50 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6cbbfdf72ecso2732578b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923247; x=1701528047; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QKEDWMfBPp1WAclH7oSu3khFfXytAopfnUhO9Vj98KA=;
        b=Hlqshvq0QN4rK+KAz/EDmbihitKx9mi8SlnrhrcQo83KOQkw92YP6dbS3PkqX8SJpH
         zpwTccD0TmbhuecczPq88+wBINkO72eZFYy9M3WrSTDA3FU2GhihSrciBs/EgedLtCba
         d9WOaxE9dnqRd60fxFHmHH068YIo5NC9YKM8NMQhgZQZHGaSouEE4xuFMPh20OGQRaQ/
         y2kYuQYt86liz/S7wK0eDjYA5psVGsS41Lv7IU8f8fhEJ7H7usDChRRsy+/WJI+0DYT4
         +HkNCr4yDoAZFxVHO8I8KGh1c3hiyFittco9bH9pPjotJ/GPVhyQti1A5Jl2DIV6irt/
         BSGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923247; x=1701528047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QKEDWMfBPp1WAclH7oSu3khFfXytAopfnUhO9Vj98KA=;
        b=mf00UmuwCESnfWWU+cVsBEmcW8dXTGsTh/BfJ6xrHmVTw/SXuRGiBDWl4EyhTXtUaX
         4B96lyFuZV2yRH1dZ1DtH/oCoRQjAsDs/ux0htk7lO2FTIvaf9l1LgqJj8kRqhyu/kon
         5Hu0Y7jTnGdIQRqEy7iD+RXSQ7IuaSmHEohNbYuoXwt6WJXZ2iKnUd3U6xaLRwIVQY5X
         +vNQ32i0Bh+RHZ1x+uTqwE6FSocjbVWmAY3Sk6S16JC9fJejTO2IZBNqJkposJCWwsNe
         9EwA1z6chwP1MPOEaxuTFIsaW9hj59knqBxa3QiDpE+lWB+DI//AH00wjh2ZCRpoUdfD
         2g2A==
X-Gm-Message-State: AOJu0Yyax3XB+mWdAEHdRjcTP7WpYIzr/wg42WjB8Jc2EEoCms2QOUzu
	kYpK5MzsPGhUzgfAkxPB+k0isw==
X-Google-Smtp-Source: AGHT+IGeeISP31BsUmkQkCAVk/InoGbPydT1uclXvkkvD0g3FlWYJgcjv+QInsfQgcakeAIoBzq10w==
X-Received: by 2002:a05:6a21:33a4:b0:18c:726:920a with SMTP id yy36-20020a056a2133a400b0018c0726920amr6245375pzb.26.1700923247749;
        Sat, 25 Nov 2023 06:40:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:47 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 07/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
Date: Sat, 25 Nov 2023 20:10:09 +0530
Message-Id: <20231125144012.58668-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064049_493781_1CA4E385 
X-CRM114-Status: GOOD (  10.74  )
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
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7e838d76fa73..03a81f1dedf9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -22,6 +22,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc_3v3_s3>;
 	};
+
+	vcc3v3_pcie3x4: vcc3v3-pcie30 {
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
