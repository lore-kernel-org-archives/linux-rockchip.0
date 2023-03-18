Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88ED3C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 08:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uY3U70doT0Sr0rN32eTrSzwLUhalDGygG4XVNNeiwW8=; b=OhBAZFbkF5+kQr
	plo87iR9KZpDEPtdtwYVYGCY45uic2uMsIam9kmEOLnd5BUO68uS8nVyPqK7t6oznGlsz3a9+HAlz
	Mqxej6U+JtLVS26QFMRq0auHuFJ5IsO6qOaSKFI4RmoGd/Tz/st84eO+ej0GXDc1jPMzmzYMqBi4W
	5GiwPcyg53vgLDE/SYepEAtEN6ZSKlEpeNmtdhCCBtkBcSL0QKehHCigIrR59S5xuO4EuJ+Kqboq3
	Q2jVZQwx5+aA3cj5uxLLXC2Si0i0s6pQtCRFIUrKcBTSCyCOCL7+GEsHktfJT6kMYhFX5CuUQPP7w
	tZ2Wln7VH9idbaHVogyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4y-004SEA-1p;
	Sat, 18 Mar 2023 08:38:20 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4Z-004S2p-2d;
	Sat, 18 Mar 2023 08:37:57 +0000
Received: by mail-io1-xd34.google.com with SMTP id h83so3318285iof.8;
        Sat, 18 Mar 2023 01:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoijDRMgUGYwTQk51CaDMUDN+KxP0US29mL2A3xBvU=;
        b=XTd+RyshUmyQzK+GnEwmpUB715Q/+3GD23ggNEgdM5AKgUpdjYarNFzxu9QoNs6kzo
         c5SK6Z6HppnvKdG+F/p9r8mnwjwrG+cYW5WCCzZlpE/JXOhG3hTIJpoIkxSInNAwFDrz
         qDcat2SpDionvPdmU8bs5kCZ6toWpdy2RpG2OQzIj8AQQ2mPqZAxVTpHlxM6HEJ0VeCo
         U37Rzqd+NIRKwU1xKTrpavEfatzJ3G3M/79vIFsRLEmzuOFd3Vm1ZY2ypeliN9Wqb0K1
         rUi33j62o5uVD3rklysBoByRHWpvkTLzr6n6cOScqkdOaZBMkq0lk6p2inVfSxDZHpbI
         dxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wNoijDRMgUGYwTQk51CaDMUDN+KxP0US29mL2A3xBvU=;
        b=HrlXUyDlHM3uilQsf0wnPSpecJFN7WmkOjVofQSKqLqlTh0dVRRCHtg9ILqcAkApRo
         ZsFq0v/aOGdB+ZpfbchEIp+UBrSc6UMmFSCxSo/Jwp9/K1y9YveQUKkhTuEryuiSKyOs
         s8U9uJ0sD9Wudsonhu4HC4lhXB+XCUm1Oygzzc3HUvSDZM1Ow1VsBW67qBr9SaiY8Qe2
         EfhEEsmeQWANVFubHeb2K8EoG6mB2PC60pSSW6cJx16QbDBf9iJs94q3vfq2NvZB7bu7
         mhqDKEd5468HaHjqXIABTG9iKIloQGZuodXrbNnrXQoXRHAl3D9PZB+/mF8N6K+4Fwm2
         fn+w==
X-Gm-Message-State: AO0yUKVT51DoJOi30lgE0477H8Tqgakyuy7RdCSjned/Mb/UwRGmp/gO
	QIJvYTrempD4/cwzuegyzHQ=
X-Google-Smtp-Source: AK7set/F1NtDVyHhOFJmWG7a1TB0Kfgk5Zwx3vOBh5pVh+W0ztTzXaMExGrUCfnxshiOj0n9goy+6g==
X-Received: by 2002:a6b:7e4d:0:b0:74c:97ee:4e56 with SMTP id k13-20020a6b7e4d000000b0074c97ee4e56mr958857ioq.3.1679128674694;
        Sat, 18 Mar 2023 01:37:54 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id h8-20020a6b7a08000000b00746041ecbf9sm1174834iom.39.2023.03.18.01.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:37:54 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
Date: Sat, 18 Mar 2023 16:37:44 +0800
Message-Id: <20230318083745.6181-5-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230318083745.6181-1-cnsztl@gmail.com>
References: <20230318083745.6181-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_013755_848968_F43C522D 
X-CRM114-Status: GOOD (  12.82  )
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

- Changed phy-mode to rgmii.

- Fixed pull type in pinctrl for gmac0.

- Removed duplicate properties in mdio node.
  These properties are defined in the gmac0 node already.

Fixes: c6629b9a6738 ("arm64: dts: rockchip: Add FriendlyElec Nanopi R5S")

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index e9adf5e66529..2a1118f15c29 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -57,7 +57,7 @@ &gmac0 {
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy0>;
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
 		     &gmac0_tx_bus2
@@ -79,9 +79,6 @@ rgmii_phy0: ethernet-phy@1 {
 		reg = <1>;
 		pinctrl-0 = <&eth_phy0_reset_pin>;
 		pinctrl-names = "default";
-		reset-assert-us = <10000>;
-		reset-deassert-us = <50000>;
-		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -115,7 +112,7 @@ &pcie3x2 {
 &pinctrl {
 	gmac0 {
 		eth_phy0_reset_pin: eth-phy0-reset-pin {
-			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
