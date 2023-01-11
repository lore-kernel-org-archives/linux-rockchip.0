Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F572C54EBC
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 16:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuHCQ3IuiWHzDrlb6nI7z8SoV5kuH/fECBNrQLqgCvY=; b=jMpmUIS5RyuVvH
	UBOtSBUevRXWX2ax6d92vurS/Lyw8UJ9cN6iQaCHWf+tB21Hu20BZVx+u0uDRazgagR+rzEQAulHh
	2P5XO8epKgGmgT9XkoEABe4EWObyXuwX5ArE2BZ9a0JrKme+wGalmKPXNLjdwXCMdaJ0sPRBmsX4f
	uZozJSZnVC3s/r4CrjFKUneSFOEM70TUSTcEY7aD8v9VNfcU5ADBjhe0g8TNHjKeYAAKqBSxbvDqO
	S8nG242wP/3TduEIClwFh0+ByBdbmGSX9DX74WE9CigTGONUPbhwkjnLOOBxpG+TgS4nQqV3p56Rn
	ch20t0VUjnngzaJw1LeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFdzf-00CAgq-P0; Wed, 11 Jan 2023 16:30:27 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFdzd-00CAeq-Ec
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 16:30:26 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1322d768ba7so16066564fac.5
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 08:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=SjSbc+Xs9ZcPjnknCiABDEoiIRumT6I0WptiNwWfobOKYHTaF17ad4nDAHZCrxuGVA
         exBH6yRi5H9HBvoUq/tfMEJDylXHIoLLNvY6De/tYYJ7t/jncT6zT5PZS8MEe/V/vsmX
         9TbS1tjdkZD4ssvgqO4d+x6+gbY+aZrS5iid4guRsPqZyWuLBlOSbQfxvmRwxtsgMrHC
         o4MFNYveH6B3wxXEGw7LiGjY2srxsK4v4rCMAoNfQikOTUzZN1oTjoknj8JQpjdmGlSR
         r2qyuJ26IJyOmiQqCQKlexuX8hNhvDBRwCUbXJPET8ZmzJWF+g3KVCa80+NCdBDtX0H8
         dLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xn0RWIp29/DDAGotFO+F2cDyIEYDf7WQu136TlHaqBY=;
        b=1Fnl82iFyOh7LyVCSCaJ/3+YHDnZT7CaDGm4PN0YS61T62zRjz8MrcHq9zMa8G/fS1
         m+w7cnHhzsPpjEOW0mPSPecDsn/usmaXI0q3bdR85DK/7GkqgseQ4bjVN5DbTmJ7mpwl
         ht4EHJ4YsoUT3zZENWgBnQtgMOTJQi1g+tQ3lC6l0J+fEIFvlhXc7zjWCuH2+PR+Ebc7
         6Q6i4XB2vdttjOevlPww9nXGlnNJhQbm4P3XNchi2kBrR1mKstn+ykYVVykiUYxvn7+1
         HppD965mtlI1sS1BDFi9e5QlqG4ZV1VN1hsWcS+E+YgTDQUPTsRc7VDqRTMe6L1DfO4k
         zSIA==
X-Gm-Message-State: AFqh2koa9Mn7NqTGc+GvzsPEkFQHKWj0xfsaU6xdLZ5xVHUCyY6WY+Ea
	1khtOAn0VitHAsxoV4Uoplo=
X-Google-Smtp-Source: AMrXdXuvIuYdcAd/gLBHkHi97cgaOZBAg1ouS9I3UigzwXVMu3aQnqPUcC45UAlIW5SLVa5ImBSavA==
X-Received: by 2002:a05:6870:e298:b0:15b:9fdc:6c2 with SMTP id v24-20020a056870e29800b0015b9fdc06c2mr1094089oad.1.1673454624537;
        Wed, 11 Jan 2023 08:30:24 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870738d00b0013ae39d0575sm7629003oam.15.2023.01.11.08.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 08:30:24 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH v9 4/4] arm64: dts: rockchip: add display to RG503
Date: Wed, 11 Jan 2023 10:30:12 -0600
Message-Id: <20230111163012.310945-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111163012.310945-1-macroalpha82@gmail.com>
References: <20230111163012.310945-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_083025_517783_AFDEC4CD 
X-CRM114-Status: GOOD (  10.14  )
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
