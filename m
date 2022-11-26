Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D861C43217
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Nov 2022 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vvtHr1bs34VERXc9cX+xDT+Lky/kU/9CvOYSFBRnX8=; b=EkypBFA4vp0VGc
	joajtvulR4AM0DzTCFIWQ7boFvMbyitu35cKUt5XXCs9744qGbzptUv68pFdjOQINlWg1tm9/YQ29
	8rtat1+LiaoQLlkPXbhC4po+OPmJSwFqATvdJeEIqb5EtDw9vFf6rW83FkMz5J33hKmnY+2/ckUJe
	MxsZhIkiNzkXX+Ew/ZwfnPk2DGwAmzRCw2sE6a/wcqz0ni5UB2/RnQ4Li+o3SgsPnIeyxaYMyEGX8
	DsxtLmTroXBLrxaI4ie6ZKJROJHmyaIOq+i+wan7Ka9p2QQxpqSLBaIqKyvRWWzADTb+Y1Xxg26Y7
	qJRC/FKLnBJ2/ri3RHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyjmJ-003JRn-Pg; Sat, 26 Nov 2022 01:14:47 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyjmG-003JNf-U7
	for linux-rockchip@lists.infradead.org; Sat, 26 Nov 2022 01:14:46 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-13bd19c3b68so6917109fac.7
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Nov 2022 17:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0OGJAFsRUCLM8lAVAlbmOQOAA7z9k3YOv8Et6vjKSo=;
        b=KkYRpLUZmImQCq+JwM2pkNCa7RxHl+Nvcaw64J1mD7rLD/OhseHHds3HMVbGtV1KWt
         HwISZLiL4w5C9lTDBfNZS+NkkJ47JeKklrLqHY+3ueeoajgOQUn2KOpAdCrBmxP0CTkX
         X9HzE/GFC1FWl4z0z3PybuoiIOUUa1SGGbYFydAwK8aEqjipylQbYHXjGyW+9aiMl70B
         QE2qoErAFb4NEtnZBeJ1yVF3SAM2syKh513MTXaGx7hPuCykm4Mz5BmduSI+jwioPUqF
         JrM/O8Ssud12SFGZxAPVt1mftaatA+aOrNI8abAfv/8HaVVYwrpIIbC+CVY/ycYm6UQ1
         O43A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0OGJAFsRUCLM8lAVAlbmOQOAA7z9k3YOv8Et6vjKSo=;
        b=JS+AWeKiqVT5NorE8WC/ksG7h0PWRY1gzqeP7CetnZ5r9XhwCZiboEMIhHn7JhNJm1
         edwTlsXyqNWlr/egseV88FI05IYeNAYe3XPcXHcvEiNeLyt536qX9fjg5QGGzV445FS8
         4KuvW/I6RrtX306wx5e1uIZFSHb4uTi+Wyuy0oohCFM5eQ7lYpyyzdiWC8D8yyEJir3K
         rIEk/ZDbvunobUMMScbsN/+Rt7YfFRIhs4XzXwNsDvENSWbrKnXkW8m0mpHTuHyHFkiH
         J88fTTm4azep1hk/+6qDQAOckqxPdCYVJ/lv82aDzp2GSLyr8S0DhvCuoDcgmmGV3uaO
         rXHw==
X-Gm-Message-State: ANoB5pkfQ9J5GMeJ+Yolmu3fTpNBPWB1nUXEELjdZ9a1q5pYtcmBFX6E
	EJsVmfruMB5Ogckbp0iYy8E=
X-Google-Smtp-Source: AA0mqf5WdIBmTGqZHIUVwen1A5dWNkeRCtzv7u2N2XMG5/NeTFMQl6E4HwypsYa4iORQC6gdNlctXQ==
X-Received: by 2002:a05:6870:b527:b0:143:7736:806b with SMTP id v39-20020a056870b52700b001437736806bmr3001798oap.222.1669425279820;
        Fri, 25 Nov 2022 17:14:39 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s191-20020acaa9c8000000b003546fada8f6sm2066177oie.12.2022.11.25.17.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 17:14:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: add panel to Anbernic RG353 series
Date: Fri, 25 Nov 2022 19:14:32 -0600
Message-Id: <20221126011432.22891-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221126011432.22891-1-macroalpha82@gmail.com>
References: <20221126011432.22891-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_171444_987811_CEA976DE 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

Add support for the newly mainlined panel to the RG353 series of
devices.

https://lore.kernel.org/dri-devel/CACRpkdatn3SFaSDwj33QVvx_B-020TaTDoPz3p_9K=EiT7A_7w@mail.gmail.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
index 65a80d1f6d91..17450aa283b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
@@ -20,6 +20,48 @@ &cru {
 	assigned-clock-rates = <1200000000>, <200000000>, <241500000>;
 };
 
+&dsi_dphy0 {
+	status = "okay";
+};
+
+&dsi0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	ports {
+		dsi0_in: port@0 {
+			reg = <0>;
+			dsi0_in_vp1: endpoint {
+				remote-endpoint = <&vp1_out_dsi0>;
+			};
+		};
+
+		dsi0_out: port@1 {
+			reg = <1>;
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		compatible = "anbernic,rg353p-panel", "newvision,nv3051d";
+		reg = <0>;
+		backlight = <&backlight>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_rst>;
+		reset-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_LOW>;
+		vdd-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
 &gpio_keys_control {
 	button-a {
 		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
@@ -55,6 +97,22 @@ power-monitor@62 {
 	};
 };
 
+&pinctrl {
+	gpio-lcd {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &pwm4 {
 	status = "okay";
 };
+
+&vp1 {
+	vp1_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp1>;
+	};
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
