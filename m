Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C52AC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72EB361353
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 72EB361353
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eG2BLHswHwdQGVuXyu4jpjxHM1pFnJ6K4pWLAlLmg3w=; b=QDa3lNf5PjFZgZ1rCXYn//MNHz
	5RjxRqVTJTaE0bSrFFeVONbJC3Z4wglK+/OJLaJ887HT041FwZs2S43Y9GabPT5WE236tZwWlV4R7
	/5W4FT/cBJcHs127lT6n8++7VFY3VVwnARB6swbHcBXfkJE4Ynmt8RIk2/TKptj3HCwCQjgxNsK01
	sca+uDRXNE5jeL2Ysg5C4BiuFmEdfgj/wu4hzFYrCJVT8o+GxFiZ6jcES60dHx7z6g+pIROFfBfR7
	gsl3xIJGXtwQpLp9s4amEhAZMX9pAcIkPHWtJWhUGOfyNtoT5Cwn3+dQI//m1dKAHVmAKnLC7RYFo
	tjPwdwzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgnuk-002iZu-KW; Wed, 12 May 2021 12:24:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuG-002iTU-QM; Wed, 12 May 2021 12:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3fkGNgTzar9ObGlEMhUqMPhSTHb0gzcUEjoNSk/LcQs=; b=ZzDHv1avm8b52EQ6xgywaFUDqd
 HCigPnhTgkes1ZyBDxxRFr/W3Xe/AazknPJ6ksTCJ01HVBHKKKmW2p9lMUZj80+awf7dPkEhbTH56
 VgnNqGYyeVBvz1fJ9bHtKDslbrEbGZi5/VP/RFVWPcxmrjx1xF1ZmfsKv9VffL3HRrEs2nJuDGeVC
 3hc86eclGYi56BhDwrLZyBQYj1nAk96So5fnp6V3uSfC1m6WD+Ws4OIcf5qcxuM5jJercooAGnYb0
 ZSFhfBujyzeQ9bneYtS+bIIIR0SMHUmx8D1/LHUjfcl15heZZKcCxonvyS/qpCzjUAUQDbZE3ntnV
 cQ2XB9lw==;
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuE-00AL9p-0N; Wed, 12 May 2021 12:24:03 +0000
Received: by mail-ed1-x536.google.com with SMTP id v5so15745840edc.8;
 Wed, 12 May 2021 05:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3fkGNgTzar9ObGlEMhUqMPhSTHb0gzcUEjoNSk/LcQs=;
 b=UneCKWhZjaHZPU1dTnKbSbQjfmEE0eRmjGlIyJ4C+XqoSMKXUAvhqArpa+ys7/yoXw
 Xx8dvJBAug+0lRL0uVdjndTv30c1yVTjeMhVVUnhfhBmgQmp36l4m9N2VUMqF0FAQb3X
 1E2DKIIpYjDv1pwGOITuA4GYfBap52ElON7ux2bFezwIZFz/+3ui4Ok8d0joDywhnxew
 0ZYvBHIxFDoBQdFKc5bQzDrRI7uSXsG+rocJnugSm1NQKyB4MdaqLcWnrLorpV5Xs1lE
 /Xyjbb4G5nzks2fvRYtCef6pkTRAydNSYWYEkmV1ZpQQhL3j3VPdYIzi5keGa5O9bhum
 q5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3fkGNgTzar9ObGlEMhUqMPhSTHb0gzcUEjoNSk/LcQs=;
 b=e99IKjSt2l+DIJQ2LK+2IpOK7ee6mJRBkpEjW3q1VvY6p4ZUep7d7LFEIiRMomkwbN
 GLQBGeY0c/sEDqqZGquRlM94OdWq40Ak2fkZcnImkQ2WtaC5ZZjnlD3bbAv3bc+68vLy
 XxSo7VGrQcc0IWkkEWKtvP2LLSxG/hSFElUGHiQzJUAbGJhXxt1PZtmJkPKX+hIt935U
 DtB8NdwxqE33sa0Dj61GQpET4EF1udNAFKzlqEqTp0M8HOOXUfeYmwxe1+kvvTtXE3bd
 VI7M7LQVooMAz0phe76CChBJLHpwrKjAfFGPcl/fF1g+QKrbX50a6Mp5FPWNsm7CLb52
 cnoA==
X-Gm-Message-State: AOAM532pNnBdYGKp3T/r64eXdbUzM58+FgMAiUZ7CYFaH4Qmm4HCljjV
 2TpL/3qHJsFJAzgJiolpKJs=
X-Google-Smtp-Source: ABdhPJw48ciP8ei3rziBvI5AZPg+p+PfN26lbFAtiePNl5R+V0WyuVmfGwv09i2fVzzX3LVwl5G49w==
X-Received: by 2002:a05:6402:204c:: with SMTP id
 bc12mr42558805edb.35.1620822240902; 
 Wed, 12 May 2021 05:24:00 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g17sm21459665edv.47.2021.05.12.05.23.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 May 2021 05:24:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, kishon@ti.com,
 vkoul@kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/4] ARM: dts: rockchip: move and restyle grf nodes
 rk3066/rk3188
Date: Wed, 12 May 2021 14:23:45 +0200
Message-Id: <20210512122346.9463-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210512122346.9463-1-jbx6244@gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_052402_076882_54104CCE 
X-CRM114-Status: GOOD (  14.50  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With grf.txt converted to YAML a lot of compatibles
did not have 'simple-mfd' added in the old binding.
That implies that if you have child nodes they need
to be documented.
Make the new layout fit for rk3066/rk3188,
move and restyle the grf nodes.
Remove rockchip,grf from usbphy node.
Add "#phy-cells", because it is a required property
by phy-provider.yaml
With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip rk3xxx.dtsi file only uses "syscon"
for the grf registers. Add "syscon", "simple-mfd"
compatible for rk3066/rk3188 to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Changed compatibles:
"rockchip,rk3066-grf", "syscon", "simple-mfd"
"rockchip,rk3188-grf", "syscon", "simple-mfd"

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 53 +++++++++++++++++++++++-------------------
 arch/arm/boot/dts/rk3188.dtsi  | 53 +++++++++++++++++++++++-------------------
 arch/arm/boot/dts/rk3xxx.dtsi  |  2 +-
 3 files changed, 59 insertions(+), 49 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 8e087c34b..30dcf557e 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -266,30 +266,6 @@
 		status = "disabled";
 	};
 
-	usbphy: phy {
-		compatible = "rockchip,rk3066a-usb-phy", "rockchip,rk3288-usb-phy";
-		rockchip,grf = <&grf>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		status = "disabled";
-
-		usbphy0: usb-phy@17c {
-			#phy-cells = <0>;
-			reg = <0x17c>;
-			clocks = <&cru SCLK_OTGPHY0>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-
-		usbphy1: usb-phy@188 {
-			#phy-cells = <0>;
-			reg = <0x188>;
-			clocks = <&cru SCLK_OTGPHY1>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-	};
-
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3066a-pinctrl";
 		rockchip,grf = <&grf>;
@@ -702,6 +678,35 @@
 	power-domains = <&power RK3066_PD_GPU>;
 };
 
+&grf {
+	compatible = "rockchip,rk3066-grf", "syscon", "simple-mfd";
+
+	usbphy: usbphy {
+		compatible = "rockchip,rk3066a-usb-phy",
+			     "rockchip,rk3288-usb-phy";
+		#phy-cells = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		usbphy0: usb-phy@17c {
+			reg = <0x17c>;
+			clocks = <&cru SCLK_OTGPHY0>;
+			clock-names = "phyclk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+		};
+
+		usbphy1: usb-phy@188 {
+			reg = <0x188>;
+			clocks = <&cru SCLK_OTGPHY1>;
+			clock-names = "phyclk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+		};
+	};
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_xfer>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index f438170b4..41a912acb 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -214,30 +214,6 @@
 		};
 	};
 
-	usbphy: phy {
-		compatible = "rockchip,rk3188-usb-phy", "rockchip,rk3288-usb-phy";
-		rockchip,grf = <&grf>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		status = "disabled";
-
-		usbphy0: usb-phy@10c {
-			#phy-cells = <0>;
-			reg = <0x10c>;
-			clocks = <&cru SCLK_OTGPHY0>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-
-		usbphy1: usb-phy@11c {
-			#phy-cells = <0>;
-			reg = <0x11c>;
-			clocks = <&cru SCLK_OTGPHY1>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-		};
-	};
-
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3188-pinctrl";
 		rockchip,grf = <&grf>;
@@ -637,6 +613,35 @@
 	interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
 };
 
+&grf{
+	compatible = "rockchip,rk3188-grf", "syscon", "simple-mfd";
+
+	usbphy: usbphy {
+		compatible = "rockchip,rk3188-usb-phy",
+			     "rockchip,rk3288-usb-phy";
+		#phy-cells = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		usbphy0: usb-phy@10c {
+			reg = <0x10c>;
+			clocks = <&cru SCLK_OTGPHY0>;
+			clock-names = "phyclk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+		};
+
+		usbphy1: usb-phy@11c {
+			reg = <0x11c>;
+			clocks = <&cru SCLK_OTGPHY1>;
+			clock-names = "phyclk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+		};
+	};
+};
+
 &gpu {
 	compatible = "rockchip,rk3188-mali", "arm,mali-400";
 	interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 755c946f1..d473552e8 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -256,7 +256,7 @@
 	};
 
 	grf: grf@20008000 {
-		compatible = "syscon";
+		compatible = "syscon", "simple-mfd";
 		reg = <0x20008000 0x200>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
