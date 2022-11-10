Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A568CC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 16:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8OSHIOCT7lMqNdNe+uzJarDkHA0Jhc0PH8fLNIUXwk=; b=gvr6B+Molb2m47
	ECPMA9P3vSxLhaW+gdV7rCm/FaNLCUu3kY/ngyWhuzHRTedTGQSvu4yVM2DLsnrlDKzYt+30UpqSE
	i8bGdd5AdFqHOY9dsQd8H31BH5xY49wiNQjIn1NksRtpY8K98mW1GK8byQ9r7NAfBXPmdGkxJBkx5
	mDF+G/Sq3eMrV20nnHbgrjSrbCjG1aks6rn3FmuLYrwHp+LjDtZhiFGfltSX8EeOmZ+o3MpCldTc+
	6NPygy4M2B1L7RCl0G4oc6AVE85ZPo7nXP6/RlClTnMbFV6KFG8KfI9LJBmfKgdDkC5+mAHoAmQ0b
	R6BeQN5e2Iy8256iotKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAbJ-007ErZ-BB; Thu, 10 Nov 2022 16:40:25 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAa4-007DyN-RQ; Thu, 10 Nov 2022 16:39:10 +0000
Received: by mail-wm1-x335.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso3836314wme.5;
        Thu, 10 Nov 2022 08:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CEuLsZijDHIURQmlzbVFcv2ePl7fzXP5XewpwaGNPfE=;
        b=q8Ednjpo9n4TB285iTt/y7Cr9qrUvZrfph6i5UnrSFU1JBMkI8ZZ62kTmvTdzGCA5o
         KUnQLtCliqx1pKKF/IFta57PlH5bqgf7Ci41DxCYvxDbQIsAe48epCExiISbbCpPhYtN
         nTMaYpeDKaXFrKT+kcaU4iGUh1u8XZ6lfyRB7T32aN/cNvQ2307zKg84gZ6EmzXBop9X
         9JuD0VxRA+TrU2/3/9LrU4Fj5+77VoYPUfKqSEXRuE9kM/nJOR3JyIK/apsir0rVrEJ0
         Nia7yc1wdO0G7Hc2rV9Y7kOooFVjKYxtCEwnRp4ImCPkbZSf0/9OKE/QFkRWM1Eez4qS
         qTnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CEuLsZijDHIURQmlzbVFcv2ePl7fzXP5XewpwaGNPfE=;
        b=OTq8fgk/JyC9WV6vHhoacgMfXkpPRUlflKEMoe1ZpjK0qDF9O9wS0O6uL2Txw69JXY
         eVZ6BCDoOO4Yb9iEcpbA3v48gBf92NDdVXf2TlAysRglr/58tOWSw9svIpHCIaLlzTh5
         SFADB0O+2R4tuqjTR8Jb/UQ5jNIBdlgRoyoZVWmdBs5LokSVUfDaUtsSo9Tj5mrgDnMd
         BiurVEnbB60njwJEf66WC3Itj1RzJqmSo0HOmDqtl6YOHn2jUBbk9oDVPj0ZvfFY8r+R
         4+jY+megwfhc+iLZXG7gtraD0evSbiMpUe2q58JgiZT+0FD+j1fmA8h6YcK3WOPDc6Ow
         gyIA==
X-Gm-Message-State: ACrzQf2lGvo3ehIvSJGtyRu+SnLQfPnRSfPfNsFZZXA684ptzb1lNTXo
	dpDMmjv01HA0ESaMn/nQcVk=
X-Google-Smtp-Source: AMsMyM4vbGUsEHG0NKAE1xRIufXiEPYkN4XR+5oplPtvpQud17nl4IG9F6CmaQ8t+Feh+F01nsHssw==
X-Received: by 2002:a05:600c:21c9:b0:3cf:7833:2940 with SMTP id x9-20020a05600c21c900b003cf78332940mr36973681wmj.35.1668098346718;
        Thu, 10 Nov 2022 08:39:06 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id f24-20020a1cc918000000b003b4935f04a4sm128730wmb.5.2022.11.10.08.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 08:39:06 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: Enable PCIe 2 on SOQuartz CM4IO
Date: Thu, 10 Nov 2022 17:38:45 +0100
Message-Id: <20221110163845.42309-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
References: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_083908_938255_C989534D 
X-CRM114-Status: GOOD (  12.02  )
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

This patch enables the PCIe2 on the CM4IO board when paired with
a SOQuartz CM4 System-on-Module board. combphy2 also needs to be
enabled in this case to make the PHY work for this.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi    | 12 ++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index e00568a6be5c..4cf60be267ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -30,6 +30,11 @@ vcc_5v: vcc-5v-regulator {
 	};
 };
 
+/* phy for pcie */
+&combphy2 {
+	status = "okay";
+};
+
 &gmac1 {
 	status = "okay";
 };
@@ -105,6 +110,11 @@ &led_work {
 	status = "okay";
 };
 
+&pcie2x1 {
+	vpcie3v3-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &rgmii_phy1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 1b975822effa..294354e95336 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -487,6 +487,12 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -512,6 +518,12 @@ diy_led_enable_h: diy-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
