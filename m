Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D70DC197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 23:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omIeX2GXl3YzqWPvEWdhBXrWlD8kB4t4Pik0aFtG80c=; b=d0sw4ItOIOqfB+
	oD/i/9waFmM1lqxbDec3i9QRi0ggGxDvXU+4O2vVrJBKs+FivWGSKy6/tH9qnvGxBkp7eAa7+2KXE
	RTxJK1l+fVtl9UPSeooYOtaTeChYknD6FHAMj0lxnTJyzeS3Pj08fYXKV+gnXIctkCSpsOIXPogZp
	S4isbEB5J4WSxF1+SMdB9NoojRQJRWATOZjAHNc4/gil1P40Ts6b2zpn5bg2IMBQPN7LgZY71Qkyo
	q4b4TF/RSD8yS3DAVkZrg8Ph7Kll1cY4EeTtx9VwPgLw/LdgvXOIV5VNqxp0Z/8T9D+3dT7oWOkDQ
	mTKkDDi87z1JBVeFJyMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGz-00F1jL-34;
	Mon, 20 Nov 2023 23:01:46 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGv-00F1hh-1N
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 23:01:42 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-5869914484fso2844545eaf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 15:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521299; x=1701126099; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UZ2BzLEBr4XMnl4GQ3wvndvKgsZ+xuw+7Bt9mxs0HE=;
        b=ZpmFbkV48pS1OXY19aJzmiXH0rew/vKdzw2aUS1OY1vJrrSiptbAir2JDxMXDpoNLJ
         08z93jGW/VakgQeUpXCChzx8lFjWsqww7ADqROS36s0ofcNXlbbr5HeqM6aqasuy6C0V
         ++MNPU+WQATgDE8dmLp85ylsghRlu5kq/UjS6HJFcn5aLD7ZF94h0UM/oO5kiKM5AUzT
         KkEHpegw8mJE8BlOKCO43rXxwkS0JZ1zEuvNItvUm1vXKmHGWPWCHNBireyh1+eHNSYJ
         h/ZEhwLbgLvAffGFLE204KpT8KNO3MIgWW5qlhb+Q9ZjT2W0jXy4BXTE1U1tW22sJo0d
         Rc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521299; x=1701126099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UZ2BzLEBr4XMnl4GQ3wvndvKgsZ+xuw+7Bt9mxs0HE=;
        b=d3MSWvowLjJwVOr/5s6/u1/ulTC7cLAVCHhXTPcA7FGnSKwzq6/GHx9gkqGa0kvuhw
         SMB4oOeuMavF/9q7VAmI6HwHL7f+IbMF0myEgk51zUnNBsya3jfDfPD/fV1litchPqob
         HF4kPgHv6T/bOd3FgL0AlripVL03whwzuHvxSdzKfVvfwEA3BfY/XHqxG4ahaMA2OJCP
         iGtuKpZrkAd8iQXFiB6w03gaQb24oE3FDe1QJdw+WIDZTVUJ6Y8WFQU1nHObH51aiNJh
         /eaQnlHj7+ug2o4OjEf94Z5xxxSie7iS+wE80ixVG2Cn95lFhiPRx0Ps1K+qrvbzBY7k
         FJjg==
X-Gm-Message-State: AOJu0YzBRAuzhS7YarBwTy3Jl+A52ncYDhrnt3hqKUjLt0QEgWDgLd/2
	xpBWsy4TS5N+2MxN14Qkmaw=
X-Google-Smtp-Source: AGHT+IGGBSauwh38pSiGG2+LljhqtfZuwtpVXX5eCCddIt444/FxQnmfcrUz2xYTi+OLo2TjvFXINQ==
X-Received: by 2002:a05:6820:613:b0:587:992d:48a with SMTP id e19-20020a056820061300b00587992d048amr9796217oow.1.1700521299289;
        Mon, 20 Nov 2023 15:01:39 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Anbernic RG351V
Date: Mon, 20 Nov 2023 17:01:31 -0600
Message-Id: <20231120230131.57705-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_150141_496372_6CFCE9C9 
X-CRM114-Status: GOOD (  13.30  )
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

Add support for the Anbernic RG351V, which is a handheld gaming console
from Anbernic with an RK3326 SoC, a 640x480 LCD display, a single
analog joystick with several face buttons, two USB C ports, and
internal WiFi over USB. All hardware has been tested as working
except for the battery, which will require further modification to the
mainline rk817 battery driver before it can be used (the device was
built without a shunt resistor, and as such the battery cannot
measure current; only voltage).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3326-anbernic-rg351v.dts   | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index a18f33bf0c0e..0ac27cf782d7 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351m.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts
new file mode 100644
index 000000000000..c2f9b56ca5f9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include "rk3326-anbernic-rg351m.dtsi"
+
+/ {
+	model = "Anbernic RG351V";
+	compatible = "anbernic,rg351v", "rockchip,rk3326";
+
+	gpio_keys_vol: gpio-keys-vol {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		button-vol-down {
+			label = "VOLUMEDOWN";
+			linux,code = <KEY_VOLUMEDOWN>;
+			gpios = <&gpio2 RK_PA1 GPIO_ACTIVE_LOW>;
+		};
+
+		button-vol-up {
+			label = "VOLUMEUP";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&gpio2 RK_PA0 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&internal_display {
+	compatible = "anbernic,rg351v-panel", "newvision,nv3051d";
+	vdd-supply = <&vcc_lcd>;
+};
+
+&io_domains {
+	vccio1-supply = <&vccio_sd>;
+};
+
+&vcc_sd {
+	regulator-max-microvolt = <3000000>;
+	regulator-min-microvolt = <1800000>;
+};
+
+&vccio_sd {
+	regulator-max-microvolt = <1800000>;
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
