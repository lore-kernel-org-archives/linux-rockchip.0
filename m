Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD96C4707B
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jan 2024 22:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m9oZ5tT2e+sXVhfEOKq3LIyQLg2hkSICMdpzjrm2a1c=; b=taN/bqNzC4CBQz
	lC/jvUB9JvuRGDggzjpa8il2g2q+VZ10SvobJJ0V8nXqsOdXux1r19LeVbFdE5iqHnBQABDXKbJq3
	GWxnjGcH71f/UaMIGKH3UPUxVsfzWsR3sY9O7Y4KhRWm3qwd9TpqpGMH31e4/x6acb2jXXGuvXJC7
	C8Z8jFSl0avs5+LCE5LWAuz67rQ39CYXgJKXpRHRIoMf3S0YMW9ja7jBeVkR9MFoA91LusmWKFUhU
	ESibl4MMu1tw0+E/YD1mIezVfGQ9dI2JOFdgm9unJ/nEXc6lhdAieoc0f7ds+hF/U9zJbpqNZ1QCr
	dlPXCepv35dFeqRc9kIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMbmE-003fiA-16;
	Sun, 07 Jan 2024 22:37:54 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMbm9-003fhP-1O;
	Sun, 07 Jan 2024 22:37:51 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3376b6d81f2so127311f8f.1;
        Sun, 07 Jan 2024 14:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704667066; x=1705271866; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GhaiKiBvANWo59JD4b18pZUXdSPTrn5nNQAUnRnqMg0=;
        b=Qu8xJvNRT2bzLTVhSVPsS+XAFXFlJb+Kt0/6fnFUi23pCNEwBaKDiCI+wtBeiuyZuf
         xFGrTnbVLj5+N9JKD+PXVdwatxxWrrBrTqyUBrS6MToyh2cW7Vy3wSGTJc1fIOhqLhLX
         69QC9mLQARHT16OOCt8uDXO+uyIYuu/S5H8Q1bZ4M/rt0KFLW6riJeffNTOsH3AtMBAi
         3tPXVRx9Me7TLvJ09lB6uidiUFW2IO5fglY6+d+QHku27GlVfAhPV1/+oQpNsiCw90uj
         FmwEtFnt6Z9v2eWe5FcfImXmP+cEYaq7qUoEi88RSgLbN4bQqqSzcqwgvou84w/TBDf3
         lnOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704667066; x=1705271866;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GhaiKiBvANWo59JD4b18pZUXdSPTrn5nNQAUnRnqMg0=;
        b=FmN7GDV1P/XmHtBOYmKe7x9vJanpgsD5pYwUq+az9EwyqLXV2vcEi22JiintBknMy9
         2bYHXAFx4cjSDlFDL64SQFv7C/5pEBrI0gnXCK3Qf/fL6slCQP48PVy1JmHuufy1R6R+
         grUNiGDpV8cRAGrsW3HhJ+zWEx2RQKF4a8+/GTQ9vKAv0b5/lsGCk+KJ8T3XBHOUpM4W
         HXpepPkaT8xhOqNPljhcGRtdxIgb4S5Piu953+rgL7JHSTgfL6nDpDqgrGjwbqt20n3l
         lXEdRFTKjY5fJW3g6+sXgP75X62A1WV6L2qNYhH6LfuoqgepICF2UmruG6cyjpmP1vnr
         f+sQ==
X-Gm-Message-State: AOJu0YwXPUsZvISzWpPFDUZ8yluoEafvvZkWFGySX6tTS2idpnj1PXMe
	M3cQ/1R2jt56Ys/LZgLbi2g=
X-Google-Smtp-Source: AGHT+IHbtTpDJCVHnLbP/mEAXIOl9+IjqLvn0kJzSyWzNt3xLzqfU/7qQMWukM0+J+LsEXRlMUSnmQ==
X-Received: by 2002:a5d:40c4:0:b0:337:476f:995c with SMTP id b4-20020a5d40c4000000b00337476f995cmr1052171wrq.120.1704667065877;
        Sun, 07 Jan 2024 14:37:45 -0800 (PST)
Received: from apple.sigmaris.info ([2a02:8010:6606:0:88c3:ea4a:8702:aa3b])
        by smtp.gmail.com with ESMTPSA id t3-20020a0560001a4300b003374555d88esm6216095wry.56.2024.01.07.14.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jan 2024 14:37:45 -0800 (PST)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: John Clark <inindev@gmail.com>,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: enable NanoPC-T6 MiniPCIe power
Date: Sun,  7 Jan 2024 22:37:14 +0000
Message-Id: <20240107223714.8158-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240107_143749_488924_FA5564EB 
X-CRM114-Status: GOOD (  10.62  )
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

The NanoPC-T6 has a Mini PCIe slot intended to be used for a 4G or LTE
modem. This slot has no PCIe functionality, only its USB 2.0 pins are
wired to the SoC, and its USIM pins are wired to a SIM card slot on the
board. Define the 3.3v supply for the slot so it can be used.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
I've based the names directly on the schematic [1] (page 29) which uses
VDD_4G_3.3V and 4G_LTE_PWREN for the supply and enable signal respectively.
This means the enable pinctrl label needs an initial underscore. I'm OK with
changing that if it's considered ugly or there's a better suggested name.

[1]: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPC-T6_2301_SCH.PDF

 .../boot/dts/rockchip/rk3588-nanopc-t6.dts      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index d7722772ecd8..d91af387f7c4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -159,6 +159,18 @@ vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vdd_4g_3v3: vdd-4g-3v3-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&_4g_lte_pwren>;
+		regulator-name = "vdd_4g_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -504,6 +516,10 @@ pcie_m2_1_pwren: pcie-m21-pwren {
 	};
 
 	usb {
+		_4g_lte_pwren: 4g-lte-pwren {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		typec5v_pwren: typec5v-pwren {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -884,6 +900,7 @@ &uart2 {
 };
 
 &u2phy2_host {
+	phy-supply = <&vdd_4g_3v3>;
 	status = "okay";
 };
 
-- 
2.39.3 (Apple Git-145)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
