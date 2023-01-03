Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03C9C3DA7D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 19:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuHCQ3IuiWHzDrlb6nI7z8SoV5kuH/fECBNrQLqgCvY=; b=U+iPim0JDMqOYX
	haftQf4R9rhSu2zGflL3ohEmHviJOR6Iru3JxoBPkQZVa/9H9k/DLpPbhjNWR6zig+DzFzMLZzgtX
	euEdU2W/bBWFTKVI4SJSrGwBp3csWubxT6pzL31PAA8Ki0iUIMzD+/JiWXtgzFZOQBQL5VzL4U5MY
	c5T9IPYUxd90//dkbFOAEo9DVMysQwOcYI15DYSGG19B+YFhzd7+N7CBTwM6p/0LofPvAzCMEOirk
	SpfW85NECLRRXFMe8TN409NhRHgxdc76Fj93aeunnUUkvfqsHrefvpwJ4qy/SMAyjoaWld6hmU0Sj
	cCsp4GwZd3rEckG0ayGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmpu-004Ko7-Ik; Tue, 03 Jan 2023 19:20:34 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmd4-004DfE-Ik
	for linux-rockchip@lists.infradead.org; Tue, 03 Jan 2023 19:07:20 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-142b72a728fso37845694fac.9
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jan 2023 11:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=dK8bSBvRLVbLCUgba0M1OefdxQvl+dAxePXW5kUBUYHcP2QQqqb+rjmrX7dy7oWCHr
         9KBiIWdkFBnqwhDgbDh+HR/SyMnBJDtHaBpvyV9oHafspDNOW3D/QlgfkkwdrvLj/Dl/
         JM4ZbL8RgWzGcLtpDwQGAHq9pyLpuEdkH77ITp0/mWv+ER9WPHLrWExRv6x0nCCgl+mP
         lHNKm10FofhSa7dM4pWmGyQ+uvDfOwECvQHiqzc6DGnNp+5ndP1q34RlYe26ArBp0Du+
         5oI5tcSy8rJgNr+VoluWjXmQpJqV4lktR0zoiVZQ/iqX2EESwZzJn7JI1l7Is3VIFmyC
         k4Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=gL/DP2TA8Whxsh4qeEHGSgtudhf9msuUsyvJShiNlRgv7x0/jn2Fzkddg7uB6Tgrfy
         qXZf4o1NW6hU7PA6YJKcfvPT1VBGaa2nXhZY6J5Ey8xpRYqY1KJyjCPHQ7rqMv87g5ue
         3TB/vYzAt0g52pLifDsWeasOyG70UvJNzeXdx/nKAoDjrqmeQ1TNhnXb26B4bG8eJojv
         LOP6ZOnALgX1SaYgMtUMxWsBZynt1Wh6SV8oWEHQ2ZmDlDYWXSABzCeq5UXTolcaiY3c
         OZ3WEXurr+1ud3H0smOkAoJnCdPirls6v5slhAqvmbJ8/B/8ZCkfmrd8R/tEhVCiLYCp
         c8gw==
X-Gm-Message-State: AFqh2koqSlQYMWGVSgm8a6ja5m1qCy7n9AWVZg0m4xbZdStIlgtFeZw/
	+TevV9KQWtjzqWM/9sDaoHQ=
X-Google-Smtp-Source: AMrXdXuKQ6CPrX+gmKrUhuvhXwp8wkIJVzqHeG7mhdtqg0BEUuNEdDKOHzQdIWLTkw3ZDbYYpk1/Gw==
X-Received: by 2002:a05:6870:6a8b:b0:150:e30e:4832 with SMTP id mv11-20020a0568706a8b00b00150e30e4832mr1032902oab.44.1672772835087;
        Tue, 03 Jan 2023 11:07:15 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:14 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V7 4/4] arm64: dts: rockchip: add display to RG503
Date: Tue,  3 Jan 2023 13:07:07 -0600
Message-Id: <20230103190707.104595-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103190707.104595-1-macroalpha82@gmail.com>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_110718_931200_69D70083 
X-CRM114-Status: GOOD (  10.56  )
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

Add Samsung AMS495QA01 panel to RG503.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index 5dafcc86296b..b4b2df821cba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -47,6 +47,21 @@ gpio_spi: spi {
 		mosi-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <0>;
+
+		panel@0 {
+			compatible = "samsung,ams495qa01";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&lcd_reset>;
+			reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc_3v3>;
+
+			port {
+				mipi_in_panel: endpoint {
+					remote-endpoint = <&mipi_out_panel>;
+				};
+			};
+		};
 	};
 
 	/* Channels reversed for both headphones and speakers. */
@@ -94,6 +109,32 @@ &cru {
 	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
 };
 
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+};
+
 &gpio_keys_control {
 	button-a {
 		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
@@ -146,6 +187,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 		};
 	};
 
+	gpio-lcd {
+		lcd_reset: lcd-reset {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	gpio-spi {
 		spi_pins: spi-pins {
 			rockchip,pins =
@@ -164,3 +212,10 @@ rk817_charger: charger {
 		rockchip,sleep-filter-current-microamp = <100000>;
 	};
 };
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
