Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 403D3C43219
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 22:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqdjayBQsmDCHWaPLcreDMCoXUFRXQ+wIqKrBL9CJuU=; b=t+4Ogd7wzuHdYr
	EtaQvoA+nl2M0WZKYVIKyuNlh4ke8Z3ftZhnTmLssKcwicsHXqqzpyUo3mW0BLRjS5uuNJoliRqiR
	Mj7wpwwkhQwakqsdTbl0P8S5XrSwzG1a4GBNA7beQXaXc+P2EUlx/1v/e0Nhxn8nFF2nw7Y58WXGU
	fWDw2ue3RbKx5XSiO6i9SdHnfIcmEV9mWSrj5GGQg35OD7M9jDJ65F2m4bCuvYeF7g+RspsDvV/wk
	qjWhUVmDwY16HB+4jL/f3eT6djn1oV5uijjiep2fzlnWUsGApyrgzhcDEEgqCq7M4fFHzqUq8RYXi
	HUf71WzTtX7XVAwPlAew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmwA-000Acv-5y; Thu, 17 Nov 2022 22:00:46 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovmvn-000AIP-4M; Thu, 17 Nov 2022 22:00:26 +0000
Received: by mail-lf1-x12f.google.com with SMTP id g7so5114439lfv.5;
        Thu, 17 Nov 2022 14:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQRlvK77hsvedjqbbgPjARmdvtiGduxanVRX+q1kiBQ=;
        b=fHP1kl1yM/VTKBFLmy/3ASQg8Q5561DGSp/lxTGjpivW3kYEBJZy1xb0vO+OiYceLo
         OLW+hZ3BOf5+ucl3BN2P3PCMRRRV1M1f4Ca7d6m2cIL+cpeh4FXEaV8pWn6CQWfKUHCL
         VFfc9zDjSQdBoUIvNr3eIxj+Frb2OEAPSEUT3xDt+2bzYp9FslYX4GdP5oEiVayT44f9
         qZgZ/LrY5o2/pUWHj4jUSqkkKupQYqHgVrGpQzIhYNFZwzJ4dfugpDh6dm0gWHN/Ie8c
         KP/GPYmjR0iLl4OXf/yeZPqbhGTio0wCNz6G4tRJqfz3/sOtmCZAcjA1tDqR+c3/eqxN
         X+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eQRlvK77hsvedjqbbgPjARmdvtiGduxanVRX+q1kiBQ=;
        b=NBVVRHLv6SHt8+na8Kd/0pOME1bZ8tA/7E7El7Dad/3TM1Pv/sZuVqdw23Bbixc+Mv
         mub1ZEmZWzZyKz6cXggC5sxUMOjDc0TRuHvNi7rsqUN4Db9gyZPVLxYFheFzNf5tf0VP
         at+QlFJfu62SrX2zEjLT/JeXJnZnWRsww4F4BlBVB/19o/h9Km1VTDpPtlaT6d/6EhFL
         Np310FlCuMDj/p0XsXBFxxnPnS7wxZdO2SZ8H4k7oqSH6WqLr/WM4l6YtCh0kNB5vXsY
         AM2eDhIu0UPMduyqUAu6N+llXEy4l1xPYNfXlAz8ljgbvVKhqdiTXzxpw72XbgQxs6oT
         IG8g==
X-Gm-Message-State: ANoB5pnxwHVvIW8To+ubO79ydFn66YulAth4D8W+wnlIL22ZO/i//t3N
	6HBxEIQxDqE7ZoZ2eV241XfX/DEU1BHH/w==
X-Google-Smtp-Source: AA0mqf7T8odImdw+v5OcY4vqRzJJEdUEeu1hbDqGL1SRBcLnBSP/pZJn73vBcjO261JeFV4NblM+Hg==
X-Received: by 2002:a19:2d5e:0:b0:4b4:a14a:c958 with SMTP id t30-20020a192d5e000000b004b4a14ac958mr1555505lft.579.1668722410350;
        Thu, 17 Nov 2022 14:00:10 -0800 (PST)
Received: from localhost.localdomain (79.191.9.185.ipv4.supernova.orange.pl. [79.191.9.185])
        by smtp.gmail.com with ESMTPSA id q29-20020ac25a1d000000b00497aa190523sm342985lfn.248.2022.11.17.14.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 14:00:10 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/5] arm64: dts: rockchip: Add Anbernic RG351M
Date: Thu, 17 Nov 2022 22:59:54 +0100
Message-Id: <20221117215954.4114202-6-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117215954.4114202-1-maccraft123mc@gmail.com>
References: <20221117215954.4114202-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_140023_263328_C37A64D4 
X-CRM114-Status: GOOD (  16.64  )
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
Due to missing shunt resistor and lack of a workaroun in rk817_charger
driver rk817_charger is not enabled in dts.

There's also an LED on GPIO 77(I *guess* PB5 on &gpio2),
that is controlled in a weird way:

- It is set to red by setting output value to 1
- Set to green by setting output value to 0
- Set to yellow by setting gpio direction to input

I have no idea how to describe that in DTS, without adding a custom
driver, for now it's just left out.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3326-anbernic-rg351m.dts   | 33 +++++++++++++++++++
 2 files changed, 34 insertions(+)
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
index 000000000000..61b31688b469
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
@@ -0,0 +1,33 @@
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
+/delete-node/ &rk817_charger;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
