Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B33C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8GUozJ5VqsFFXwyK72qwixo6E+cOnA8iyRloiQOh7g=; b=PMFyJsIUzr6lQ8
	n/pkEjp1Y49knrbZMF5wEPZDrfQWhaV2DjbzHwnw6yC/r0uAqP3oWLWpYSl6Ensd4gtIwqZreu+F8
	wnec+f2srXdeo0wCgnFcCM4qQq0JO8Ujl3zsq8mStTrLHe4fHcScTUGuhKdR39sz1VMDSzCDK/Rq7
	Z8zlmG2wKg6dt8zgiMMHLZrvIxsm7TH336eyVRadHGWypQkMKEZaPo/Tlqqwq1rjhRqz4JNgPFgII
	E++dl1VIDki83oYp+UFZRPNqBVTHCy4niK5gNWWtVKKqEZWNOeSxQM6jo3TZ/YXG7wdJJMuJXO9cz
	rT/gqveMZ/XMxlgvavXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrN3-0061sA-CH; Sat, 12 Nov 2022 14:20:33 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrLe-0060hZ-Os; Sat, 12 Nov 2022 14:19:12 +0000
Received: by mail-ed1-x52a.google.com with SMTP id l11so11300655edb.4;
        Sat, 12 Nov 2022 06:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cr+7dkLsIQWkssfwSwIW2QDjIIkEwPc25TwB+Qcm5uo=;
        b=UKsD0x/5BTuv9I4BmyFff3ZscFituJT8FVzMy4P+x8g7Wf2MoY84kUTPR8DxMkOuL1
         H559lXZ7bzcyr8wmsTE3pMtmipu5Yfk/QjpFTk3QH97fzoy63E3zJoVwM0f8TpxVnTPm
         Lpi63S8/Sz0jTdVKe0WrNrJWPZvq8IDjRI033hdCCTizDmJv08AFv9gvk9AcdkObd+3u
         cHNLeRzoW2CFo8Y11wEeY5KzeknnkpeOHTgMUL3YRR7skwQIL5ac/zBMR6/eQ1iGhgGM
         AP431ZJAhlQeMETgUt95VLv99uuTOtfVllNTBl+HMuk6MEWro6Edy+vJx31PpwjRXq4Z
         JVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cr+7dkLsIQWkssfwSwIW2QDjIIkEwPc25TwB+Qcm5uo=;
        b=Z0UNmOEjU+ZnNowQN4aJArBXPvAnPKvpVgt0Vo+XxmmZ+l7fuVtENB2ak4CKutveyV
         sZ02OQ40OuGzRDIz2GDpEThQH2lzZfjGE3M+capyMyBeZLE8L0xoK/ISQskeyOVg+gQm
         2I/WtNTMVf9g6uvJClvVmpJ3IiQuL4HitxbUjMqbO5jk4+MlQJXQoKQEf9W/jMjPL3rN
         cxFhZv7lSw8iu+GHDGfOWLSd6tNHcFyPMFmr8y4DgFR0snQ6hG40GvloHBBpZmd/RAvQ
         PZnFQBsstg6pUGdqag99B6Z5m0NJuWVUXTdrlZSTlggfkx2T+S7CZdxbqzRjx1PSQKmz
         fWrg==
X-Gm-Message-State: ANoB5pkDwIZwfpGR+fSyn0af+f6YLIM56wClc0oQABaDS127JyCwZ0oP
	SlogHMkQQh/1PHoGNvcgzXk=
X-Google-Smtp-Source: AA0mqf4AoYvIvRXjdP+4QwIcYyifLsaVVmZlBcKGdBmBxZa/s6+zu4hpBWycYBZO2fiqpwcFBdHIcQ==
X-Received: by 2002:aa7:d793:0:b0:460:d1f6:2917 with SMTP id s19-20020aa7d793000000b00460d1f62917mr5591021edq.207.1668262745128;
        Sat, 12 Nov 2022 06:19:05 -0800 (PST)
Received: from localhost.localdomain (83.31.120.236.ipv4.supernova.orange.pl. [83.31.120.236])
        by smtp.gmail.com with ESMTPSA id g21-20020a50ee15000000b004677b1b1a70sm1050148eds.61.2022.11.12.06.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:19:04 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: rockchip: Add Anbernic RG351M
Date: Sat, 12 Nov 2022 15:18:41 +0100
Message-Id: <20221112141840.516224-6-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112141840.516224-1-maccraft123mc@gmail.com>
References: <20221112141840.516224-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_061909_403559_3FCC8825 
X-CRM114-Status: GOOD (  16.86  )
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

This device is a clone of Odroid Go Advance, with added PWM motor, internal
gamepad connected on USB instead of just having it be on GPIO + ADC, and
missing battery shunt resistor.

There's also an LED on GPIO 77(I *guess* PB5 on &gpio2), that is controlled in a weird way:

- It is set to red by setting output value to 1
- Set to green by setting output value to 0
- Set to yellow by setting gpio direction to input

I have no idea how to describe that in DTS, without adding a custom
driver, for now it's just left out.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3326-anbernic-rg351m.dts   | 54 +++++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 142c83d2e5aa..b379516c15eb 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -7,6 +7,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351m.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
new file mode 100644
index 000000000000..7f4726d4130e
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Hardkernel Co., Ltd
+ * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
+ * Copyright (c) 2022 Maya Matuszczyk <maccraft123mc@gmail.com>
+ */
+
+/dts-v1/;
+#include "rk3326-odroid-go.dtsi"
+
+/ {
+	model = "Anbernic RG351M";
+	compatible = "anbernic,rg351m", "rockchip,rk3326";
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3450000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <100000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4046950 100>, <4001920 95>, <3967900 90>, <3919950 85>,
+					<3888450 80>, <3861850 75>, <3831540 70>, <3799130 65>,
+					<3768190 60>, <3745650 55>, <3726610 50>, <3711630 45>,
+					<3696720 40>, <3685660 35>, <3674950 30>, <3663050 25>,
+					<3649470 20>, <3635260 15>, <3616920 10>, <3592440 5>,
+					<3574170 0>;
+	};
+
+	vibrator {
+		compatible = "pwm-vibrator";
+		pwms = <&pwm0 0 1000000 0>;
+		pwm-names = "enable";
+	};
+};
+
+/delete-node/ &builtin_gamepad;
+/delete-node/ &vcc_host; /* conflicts with pwm vibration motor */
+
+&internal_display {
+	compatible = "elida,kd35t133";
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&rk817_charger {
+	monitored-battery = <&battery>;
+};
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
