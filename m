Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EBC2D10BF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ22LHvU39DoTNQrJtSdbDyrdBhvEwmWtIyEoxpDyJY=; b=BeKxLjvKyWbPr/
	txKtmm2Ks246orLp/GgK9tLyRcN0hMxVxsmkqR1f+wNooCwpRK9Wqu++/YXCkC6zfA6Zl0ezFDhHL
	gexCbqbVmpOqQsOJsXCTz8dI4466HeqLo9EjyY87BC4YXQhwAzRlLXdJO+yxK4HxXXZ1OGhghOs+T
	FmHlv9/0sZMCCQ2hefDcO6Zb/bmNL+aPZICAzyR6UCF27Lam0ptKPDNINlWqyEH1uFSg2BSAFTxHg
	wzLPAtZK6QMReNEe7LF6xBadOX/X6f+g3nprN1G5QKV0Xwoalc8HoJDEsjyy2RShmbaQCudMZiSaZ
	XjR3Hlpd8Z/8ahCZAsRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deP-00000006L99-1fTp;
	Sat, 26 Oct 2024 10:04:05 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deK-00000006L59-2Q1o
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:04:03 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7181285c7c4so1632410a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937039; x=1730541839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YGdPlaVwtS18r1hz8w1fww+e5P3V5ikUprg2WMPABa8=;
        b=K7mCCs5yxMZEHx3+39KpiWyI0u/2Y490hYjeTgcJyQEgQq2cLsRaiXgq6wcXE8iY03
         shayW8zbw9TxCayqqJn8cl+DAqK8tpWfv8sD+lMSXNvLjStZJM+fjz3cswrq0qqCOtS0
         2bm9vtR8SIBGuKmRVEyJWkxC/DHYN/KGTwPV4GMPwTXbnOJzrxNCYtEBC1vzVN/nGlz4
         dGqg46lDGMw9QzuWmRG8IhPtlFUvDrpbTvkCIgLBC5xvjBLJW0JZcVxFheGNEhDRGe8n
         DDGDOIA1/sZ3ZfyNc3o21+KYlUdbZkq2SQN3sNti7ZcXTOQBFOR5vEIC37056R69d0Yx
         E+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937039; x=1730541839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YGdPlaVwtS18r1hz8w1fww+e5P3V5ikUprg2WMPABa8=;
        b=hdc3dSxi7ESZtdEuSeUkSfLTbuetbwLS83YpQvl94pvMgK/VdXJFJb9RdGqYIAdyi7
         6DBjKR05HElwrMayUBFNP5tkS2DvIHgivtHf9QCVnUIvyp/zvkJ514kP318W8Iaox/HN
         x3J/fkmQVYlNhFZ7pB6XecuPA7DwFOYvWk1OZVPekSS98eu95TP9NQnYYUX6EpO2NgIK
         HCX0crSyuuqwrAy1lIs3F1E1jP9MnWTFbuE/9qqlxOs6GM4llQSCBXlKsVgNkqEJzAMN
         IcayFqc60uM9xo+mi0zMs261ty0YyZE1xGqHLN9IGYGO40MK3K6kbMCz1xp8pePu/DaZ
         UmKg==
X-Forwarded-Encrypted: i=1; AJvYcCVuX3ueS4kCrfilp1ohYgC5dzaoCuKykTJslzkbcGNbk6tXJqkdryafHUIoIx3/ZLy1yrjj0A8ogyGVLKvUJg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJwPUAO/0NWRNjbP6S3/KTC4od+9125V/TNoncAEPOmSxP+J29
	aJjztelfoRrdPNcwtlVcu3MZ8I6qSv4kyTHTBBn1wgtP0rl/pIZ+
X-Google-Smtp-Source: AGHT+IEsQseylVP2uUC4xzaO32bOYkp/tRkK9ISGnubEZXvPAEib8HR7oKW8DyeacvXcFyOHOKbQUA==
X-Received: by 2002:a05:6830:638a:b0:718:4e3:1b27 with SMTP id 46e09a7af769-7186829ac56mr2033737a34.8.1729937039317;
        Sat, 26 Oct 2024 03:03:59 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:58 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 15/15] arm64: dts: rockchip: Enable HDMI0 on opi5max
Date: Sat, 26 Oct 2024 04:48:31 -0500
Message-ID: <20241026100310.52679-16-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030401_037435_18BE73A0 
X-CRM114-Status: UNSURE (   9.47  )
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

Add the necessary DT changes to enable HDMI0 on Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index b98514ea62d1..d31b13f99fdc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -6,6 +6,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588.dtsi"
 
 / {
@@ -86,6 +87,17 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pwm-leds {
 		compatible = "pwm-leds";
 
@@ -242,6 +254,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -838,3 +870,18 @@ &usb_host1_xhci {
 	dr_mode = "host";
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
