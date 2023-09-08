Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97223EE801D
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Sep 2023 16:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oShMI4mLGQoJxMv9whrapRjXPKW/a81b+ug9qVLtLfg=; b=PH0iCyP4VEGAdQ
	dNPP5qmTYN3kBdfHoGcNStosF22UgwJUJSRec8ufejah0HxQsxcCnIufiYiw61U3OKkcZTLE+b2lU
	Q06UjWdx9A6A5q818bvqG/WsKBjpBIDhppAi+RWrUzL1ku/fcXgy2p+DxGSsmiE6V0asw5kLha9RM
	j/4rHpd3cRSBtFRIsdW1rtsJ9Xo0LBsbVJXWs3OLIe3QURgAiujx+DxIOE0CNVuLQrpkod42aSvCY
	Eu97EUVgr0+8bHYZ7cyV5+mF46KjqOjUsQxZNnwxaSXeI33CgqwpFgvIOtaIUYHzvuhru99L/L0CX
	vtEbPkJK8bIHvXSeLTLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYe-00E6Ew-2X;
	Fri, 08 Sep 2023 16:42:12 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYb-00E6DB-2I
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Sep 2023 16:42:11 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6bcac140aaaso1678393a34.2
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Sep 2023 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191326; x=1694796126; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6IXreXlyeceU3AH7Yf5LWKhoPgVW8gHUfj1oR637g0=;
        b=IuQMRkmzk9vr+A+fwONL8fF2Ud3nZ8nz/Ltcgpwvo9qKA5fuD3/QtAv4h7ZZ/DlieX
         n7IM/N8HQSXh+3saGaYQueKhcTiNjnJbfhFfKU+OtSmN3YvlYsxX01lL+QoTTo9qGoF2
         lR7hnv/jtFUZafPLEH/5UmM4Ivi2XG7fAdIZj1Ff+GlpJeypZOmY6+aV/0oMkYTR6FEV
         vqv5vmAYiuNt/9bRUSNjiH2bhL5Ew/NKT/MAQpQguwqPmNegFaQLFpGGvmIO/ewb+US6
         l24q4p9jkqebANd4RawT8MHIXGYErJTVwe3Hss2upb9fbipyvcLui3+IcgYxSjzSBhZp
         Yrtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191326; x=1694796126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6IXreXlyeceU3AH7Yf5LWKhoPgVW8gHUfj1oR637g0=;
        b=E7FVqqkM8rm4EzwpWLWt6cmznedtPDmqFo1G6QLU+C94eV1dViFqaWPK8Ys+faMOqx
         wzNviL8h2M51fa0eACLZuxaH2cDzzXx/MYJ/dN/0d1JsB7i3QHjcmcEL30uxnzpuqn3w
         dbrvQCqgTrUdYisN+gilrML82S10N86ZbQrT8HgF/PPgGpBYNNZ0SGy/nT79uWpX0yMA
         Sqa4INnY0BUItV9UC0jaVlmVM4+owDltRN6BsZSR00H57viX3ahMy9onn+vv2RbOHucl
         EU+L+u5qVe3WhYGspF+dyVTe9qzgZVYk66vMHeV/wHPLEPZFTBgPyPxEHyUNwRQ2KcbI
         jOdA==
X-Gm-Message-State: AOJu0Yw1SMg8icsUz+1WN+m3urBBXIHnBhm9pc5ydTsQS+AL9C/ziabT
	U69IuUTPfXu4WrnGJZ3ZxHw=
X-Google-Smtp-Source: AGHT+IEyiJGlVUrfYNhf0bUCf9ra7RfpOB5794VOAFNK99G6Th7EXQq01Ve/4kXKoHw2cfGWmQ923g==
X-Received: by 2002:a9d:6a11:0:b0:6bc:88da:af44 with SMTP id g17-20020a9d6a11000000b006bc88daaf44mr3280303otn.6.1694191326042;
        Fri, 08 Sep 2023 09:42:06 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to rk3588s-indiedroid-nova
Date: Fri,  8 Sep 2023 11:41:56 -0500
Message-Id: <20230908164156.2846-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908164156.2846-1-macroalpha82@gmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_094209_747500_DF92F9FE 
X-CRM114-Status: GOOD (  13.59  )
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

Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
found on the device. The buttons are documented as "boot" and
"recovery". The boot button is used by the bootloader to boot into USB
recovery mode. The recovery button use is currently unknown.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 1e2336d3065b..4c2d662d9c97 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
@@ -11,6 +12,34 @@ / {
 	model = "Indiedroid Nova";
 	compatible = "indiedroid,nova", "rockchip,rk3588s";
 
+	adc_keys0 {
+		compatible = "adc-keys";
+		io-channel-names = "buttons";
+		io-channels = <&saradc 0>;
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-boot {
+			label = "boot";
+			linux,code = <KEY_PROG1>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	adc_keys1 {
+		compatible = "adc-keys";
+		io-channel-names = "buttons";
+		io-channels = <&saradc 1>;
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "recovery";
+			linux,code = <KEY_PROG2>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
@@ -410,6 +439,11 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
 /* HS400 modes seemed to cause io errors. */
 &sdhci {
 	bus-width = <8>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
