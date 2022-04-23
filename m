Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 204D6C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 15:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hkkv6L+97glSXUXC6M8vqacaL3xwi3PtRxES3zgmKjg=; b=hgKDhxku4ZKQYH
	fElqD5bW6IEVvtt0MqzFPNh9QPJKETK26CbO75QU+s80rmxX+IvdT35/jfvyw1Kbe983YQqUNwQkt
	YHWGbydM0Dop8EUK22aJxJ5yUfM9PZInIT2sxmuvOG53GL28dwTdd28Poa6Wt1Ilw3cSOfmXOlmzj
	GU3Pg1sTj+OboD7eGqsh+862D55eTX7cAJEJS9D0UwwsIGDzMroWW9f0Br+ivtHNLDTZ4TbUB8+4O
	ZlDSrF0g2oRIyRwOiLiD0sp4ReVTgW08JPPxTs1xE8q3qFwvfHU2Omsh5gzw/21JsKYXCMxPnX4yw
	36iXSr76EmY7G9GH35sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niHdb-004X2y-PV; Sat, 23 Apr 2022 15:25:31 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niHcL-004WJZ-5z; Sat, 23 Apr 2022 15:24:15 +0000
Received: by mail-qt1-x829.google.com with SMTP id f14so7569379qtq.1;
 Sat, 23 Apr 2022 08:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DB27knfDqQc7OD0leI6JmLLgT8Ml329OWNhxU2Af7WI=;
 b=V8Ya5SEin/5zgbYymNln3A+hUT/anyCJ1fnyD17zBLO17TQ74WliCoBmaeGiCG4OXO
 8F3JWIHBR5EvaNlpP62NmBJqNTvnC8ke21pI39iJRqZMdNqaoFVGLfsJXBGt0q1galOl
 0FpPTXf4fCwgWjgx0vpmMBSREtgn4o4OFLwHKklq/eq43A1eF9MU8Ssh52jRbp3tPMbs
 KL0nLbjUuM/AzfqyVRtdAjGbeiTyQZKm6z6AUeZeV82wuw40IOGY0YM73AFQHJKamgua
 b45Z3yNhEtB7ObbJ+T1HpaT0UxBszaHaNhx+/iQC8/7EWVi7eFj/V7phkzF1j8ZfUkMA
 0iJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DB27knfDqQc7OD0leI6JmLLgT8Ml329OWNhxU2Af7WI=;
 b=QYsRKE7wLOl0gc59FSGtrUxh/4hz8qJtbL1b9Z1OAl6vQsdoDv31uQQXA8ujFxLfNU
 szoMAPnvKKpAjefFUlNDL0+YKbosu8j3rlSghFygdtYE58ZcZa7jRJRhj8aFYy8TOhi7
 LH0Mu+EFxKmfTyNYw+ctgDWv5ghFJNSO96AkYWEd/K556oLu4VZjr2Z3wpb0aPRKUnXN
 aVSeKiNKSoURHbD0gSTkbmgbG9r9+QNvRM/JSfewVCwKlo4Dee4jh0MwZ6BjXUH+KQLu
 DMW54+H7WybyqUIPn1mu0V18qsQT+hwsJr5gDYYdupK5QN5yWk3g1UWWE5zkI5GPhM5u
 hXrg==
X-Gm-Message-State: AOAM532W2SE3bNShbS77oNmqUyjeOgegVxaNoSJY0OWgLn+OjRL1dj8p
 THXo6xXxmLiJSPIUxQU89NQ=
X-Google-Smtp-Source: ABdhPJybRjaMCkQ7fMxW5I3iMYatbJOQ+l0qY41y/qN0g1LtLCGvGnPRdyP5lvab9ohjC4EXH6prwA==
X-Received: by 2002:ac8:4d51:0:b0:2f1:ec64:cf90 with SMTP id
 x17-20020ac84d51000000b002f1ec64cf90mr6789779qtv.53.1650727451831; 
 Sat, 23 Apr 2022 08:24:11 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 y6-20020a05622a004600b002f33ba280cbsm3184165qtw.8.2022.04.23.08.24.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:24:11 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/5] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Sat, 23 Apr 2022 11:24:03 -0400
Message-Id: <20220423152403.1681222-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220423152403.1681222-1-pgwipeout@gmail.com>
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_082413_281808_8F96ABEA 
X-CRM114-Status: GOOD (  10.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the nodes to enable the pcie controller on the quartz64 model a
board.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..8b0537744a60 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -125,6 +125,18 @@ vbus: vbus {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc3v3_pcie_p: vcc3v3_pcie_p {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;
+		regulator-name = "vcc3v3_pcie_p";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
 	vcc5v0_usb: vcc5v0_usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
@@ -187,6 +199,10 @@ vcc_wl: vcc_wl {
 	};
 };
 
+&combphy2 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -495,6 +511,14 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie_p>;
+	status = "okay";
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -520,6 +544,16 @@ diy_led_enable_h: diy-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
