Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC215C47DDF
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 12:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w863Z5R73bxpOydnOrk8HPDGbdYtzYh/YW8kxH7l8Ws=; b=iBKXLe1jZDLCyJ
	tXBMDbfPAOzPUc8qgybRcEuCO3oP9/W6e/3yuEH5FeLHgUUGO53Jie605VT8dNrekbPQ3XiqMZQ6G
	hGn9WX1zjNjNwQZeblWsvWcRQDt0CR/Ze526pTIiRF6kLpxjKiZfOgBKW9/iWkNg+p9/wsTUkGRIL
	CcW2SokHwUtE8JPthKg2+Qsyub3bqDG+hTa9Jk8pKQlRDcMVvCJDq1jzKQwEk+MbEQMiQKjBBHOcV
	hIKy5YynPQOT6YtdHAIcSWo4RHjQyAJPzPe3M3mk9FAuTgdTwgmk/MjJjWEieBjgj8XLntxfzuhOh
	MNetYAlwh+2b6T5ULPGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVWR9-00000007oT9-2M7S;
	Thu, 01 Feb 2024 12:44:59 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVWR6-00000007oQE-2QxW
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Feb 2024 12:44:58 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40f033c2e30so8122435e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Feb 2024 04:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706791486; x=1707396286; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6IHYNEjrz+fMnkN7rBKRPCSWZe0v/T0N15MdaE6oBBg=;
        b=OikGP/azZMXrBty+T7KqTLBUuQssd+T2hV23nv4d6+rT9lxwJ8O9oYTxOuSvGFuHlW
         eUJ4KpAClJkVSm75B10Oz4z3PGP/24XdU6h5uFf91ya304ffkPn7WeTkP22VFk6ei+EN
         O7W/1c6e1PoyOF60NIPMS18OBIb/kAn8ckeYRDWL1DGHjGnzKbiRtKJvGc/A7ncjuPPJ
         40pyoPN0eFUNARL736rZuRSbFzW82Uu2Ieae45o7Yrj+FF3gmohv0xY65AHR9KXgwXHO
         dTY+HoE5R6veq/Ku4Rxv8UkJgwvyijcdxTpt/fySd6SwjCkTigLbO1Fi0mb+KISVI+Fb
         Zxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706791486; x=1707396286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IHYNEjrz+fMnkN7rBKRPCSWZe0v/T0N15MdaE6oBBg=;
        b=kcuuJrGTlxOUGYfjoxVB8/6p7skgZ/8tQdnE+abS3FKOyiC3Fa8Bv9/rfEUv3SnfPW
         HzzZRYuF8bDQUXlfcDEZGYMW7F4jET4rkerg7gZxXKC6c0oHEl7IA9ycBOQO0sZzhW70
         S1fZJHRuVU7qJX8Sck8RwdQaYYIPaHZX/P5+nZARu3uHWB0jIETEgjqukbi/nMhJQZL+
         IBwD89RQDMBAPrFcs0ORpxXK4os9eIpvT4YaLOwqMmMxjRUGM1foeWS+Jxz8RlK2NEvD
         5SGOThR80Mz7fTpHEmIah2tvVyVwsHQI9Jlv334zDr85QykuJ0tWbNc0ayPv+wBx0Ztn
         ZySg==
X-Gm-Message-State: AOJu0YyBrPundPdGfBbBlnLIioCKTtl+WM0ELPWn8oe/gCIUD7gJYSvu
	UqKEIlSRpHIr34nWC1FcZ5RreB3yBmuiiH0hdAioUR6bhaQEleOoK1BlL1YA
X-Google-Smtp-Source: AGHT+IH9YbsjSMfEN7/ZxTFY71wHCViMJcRPseJso13x5uspbJi9rylCpTSQtwzo5cDG75EvN3c24g==
X-Received: by 2002:a05:600c:4f4d:b0:40f:b65c:6127 with SMTP id m13-20020a05600c4f4d00b0040fb65c6127mr2881416wmq.35.1706791486133;
        Thu, 01 Feb 2024 04:44:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXlasx3CmtE47ZwaWveo1MK/khSiwuxBliYYlFYx+i+SBYU4+x+KwjTVjMkDXRdGNuESyYhHgDgYGk6JOefzcidpECDxibfwcgQJP6LgYCgIXc9EUXy6txcDe9ROJQRbRJC0F31qDOqxEtpdgkewY9lwB5i88X6kN4=
Received: from localhost.localdomain (2a02-8388-180a-cd80-ae73-baa1-6de4-2169.cable.dynamic.v6.surfer.at. [2a02:8388:180a:cd80:ae73:baa1:6de4:2169])
        by smtp.gmail.com with ESMTPSA id p23-20020a05600c1d9700b0040e9d507424sm4483028wms.5.2024.02.01.04.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 04:44:45 -0800 (PST)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	jakob.unterwurzacher@theobroma-systems.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
Date: Thu,  1 Feb 2024 13:44:27 +0100
Message-ID: <20240201124427.279986-1-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_044456_628401_96CBF5E8 
X-CRM114-Status: GOOD (  12.59  )
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

Ringneck v1.4 can contain (placement option) an on-board ATtiny
microcontroller instead of an STM32. In normal operation, this
is transparent to the software, as both microcontrollers emulate
the same ICs (amc6821 and isl1208).

For flashing the ATtiny, the SWITCH_REG1 regulator of the board's PMIC is
used to enable the ATtiny UPDI debug interface. If the STM32 is placed, or if
we are running on an older Ringneck revision, SWITCH_REG1 is not connected
and has no effect.

Add attiny-updi-gate-regulator so userspace can control it via sysfs:

  echo enabled > /sys/devices/platform/attiny-updi-gate-regulator/state

Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index dec29a75d361..1f7f4b2ea66a 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -15,6 +15,12 @@ aliases {
 		rtc1 = &rk809;
 	};
 
+	/* allows userspace to control the gate of the ATtiny UPDI pass FET via sysfs */
+	attiny-updi-gate-regulator {
+		compatible = "regulator-output";
+		vout-supply = <&vg_attiny_updi>;
+	};
+
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		pinctrl-0 = <&emmc_reset>;
@@ -146,6 +152,7 @@ rk809: pmic@20 {
 		vcc5-supply = <&vcc_3v3>;
 		vcc6-supply = <&vcc_3v3>;
 		vcc7-supply = <&vcc_3v3>;
+		vcc8-supply = <&vcc5v0_sys>;
 		vcc9-supply = <&vcc5v0_sys>;
 
 		regulators {
@@ -290,6 +297,11 @@ regulator-state-mem {
 					regulator-suspend-microvolt = <1800000>;
 				};
 			};
+
+			/* supplies the gate of the ATtiny UPDI pass FET */
+			vg_attiny_updi: SWITCH_REG1 {
+				regulator-name = "vg_attiny_updi";
+			};
 		};
 	};
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
