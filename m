Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E91C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 917A564DB2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 917A564DB2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ns7GLxmLs1hLWG/K7KQZXsN6NUCUiIfhla1pYBPd/vw=; b=BV6OojfdU3mdmCnk8f5eKDOnuv
	aL8NiIT4ka9mcR5duaelMUIy0LV/U5ZNYqik14DeDLUbVylmnqK3o9tMaZ9JSgVWWVkLUa0kucGeg
	6yF50NUOdkOI3jk1WzmT8XzRVqiYT6779FLhf5DLUMk0059Ul5u045ENc8F0L1Z3IGbOWyuuA38qF
	c3bAo0jsaueHPndYm3tcDaL24ZHrRQ0LB/Ht3oWT8pvv1bqvyPSERNkoOKXAWXVGw+vrJMFaglWOb
	Lp6KCQfoV1hLYtuDMQoKtrM5jxvFn1NdFoi4WPxh6WMIvAeFYhX9vAn4ybrUh33DSFed1CD4VeYjN
	Z2jnUbWg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTe-0007as-K0; Fri, 05 Feb 2021 11:40:42 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTW-0007XE-G6; Fri, 05 Feb 2021 11:40:35 +0000
Received: by mail-ej1-x635.google.com with SMTP id i8so11434087ejc.7;
 Fri, 05 Feb 2021 03:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QE1vhiNECc3E9Z0FtimepS69tVAk52/C7Hu/jBioBnQ=;
 b=CfaW4E5Ovj+rbk50rHTtlAk4uCM6wqJJZ2fva+RZ4RC8+Y0youUDv9qvJSDwduCij/
 uCzc29QABw0GYr19ojIS3Vz88GDo64I2uMP9K9EfQLc0+Frd7c5vtUtKD8M5ikHPPcX2
 Nvn0jKfvpC4Viyci/M12X8iMc6CJK7/eYZDhDdWaxl5pttCOjM7QXrJOvI5HvRQhOjeI
 21l00M6EWE0c8B4bib76hAT5DUFky6YmpBKLEd0IP/O77t5lzrdAX4i3fKxrlG11lNcN
 QX1y4OuiJwvt13HUNd512BpuOKcPRxj6LqYzz181xVSIh6r2AGeQ3z0Ip/oZsHG4RJun
 v/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QE1vhiNECc3E9Z0FtimepS69tVAk52/C7Hu/jBioBnQ=;
 b=MCjzY8GHkP+WBye9NyEskVfym/o4Wz6wmV60BO5WrhIyKglvrb9a7JmPZOIehzK49z
 I59iWLBZpBbky1znQmwciUjFKBGmm5odB/0XeU4XqFM9/WLOd+b0r+215HWhTZb3iYlV
 5hO0/6k5c8GnGjc8mAaGZvqvjseMqXuzP/MFjHY+xOOF45+5mTcgUZMGKesjWv/9xlg9
 PQAdlQgfz++twOToo9tP2hnGWWte0Nu6rPhdosZK/F1EWMGwo0BSSZmXfR8TWePBKVI/
 /jWRX5DHFXdxHKdIblF2v8f73OU4WMp8TnAooR+97BeYq1PmoT0vPnu866vhWiKNkfKq
 cqLA==
X-Gm-Message-State: AOAM530KcewTCdHNLrGL71gQdJaW7CBYTtyDBRph/Yg5twTit0DihGw9
 Rsua/5Zb35hT6MFDLvd5FDQ=
X-Google-Smtp-Source: ABdhPJyM6yXuWlowynO8xpiihwju5MQ1QX4j4i7hr2IL5KErKG6gKLzs+61wLoFaIIyZT0nD73jdLg==
X-Received: by 2002:a17:906:d937:: with SMTP id
 rn23mr3604705ejb.57.1612525232784; 
 Fri, 05 Feb 2021 03:40:32 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:32 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 3/8] arm64: dts: rockchip: restyle rk3399 usbdrd3_0 node
Date: Fri,  5 Feb 2021 12:40:06 +0100
Message-Id: <20210205114011.10381-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064034_586422_B1F4A2C2 
X-CRM114-Status: GOOD (  13.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

For rk3399 dwc3 usb the wrapper node for only clocks makes no sense,
so restyle the rk3399 usbdrd3_0 node before more new SoC types are
added with the same IP.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V3:
  remove aclk_usb3_rksoc_axi_perf
  remove aclk_usb3
---
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  6 +---
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |  6 +---
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  4 ---
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 37 ++++++++--------------
 .../boot/dts/rockchip/rk3399pro-vmarc-som.dtsi     |  4 ---
 18 files changed, 24 insertions(+), 95 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 1ce85a581..95110d065 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -153,7 +153,7 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3_0 {
+&usbdrd3_0 {
 	dr_mode = "host";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 6db18808b..4017b0e8c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -773,12 +773,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "otg";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 32dcaf210..e42783cb7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -618,13 +618,9 @@ ap_i2c_audio: &i2c8 {
 };
 
 &usbdrd3_0 {
-	status = "okay";
+	dr_mode = "host";
 	extcon = <&usbc_extcon0>;
-};
-
-&usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "host";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 341d074ed..daf14f732 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -731,12 +731,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 635afdd99..d028285fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -797,12 +797,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "otg";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 1fa80ac15..1c0b48a71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -611,12 +611,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "otg";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 76a8b40a9..90a6ea1d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -715,10 +715,6 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3_0 {
-	status = "okay";
-};
-
 &usbdrd_dwc3_1 {
 	dr_mode = "host";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index ad7c4d008..7b633622c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -854,12 +854,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 219b7507a..f00e11075 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -1086,10 +1086,6 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
 	dr_mode = "host";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index a8d363568..35780506c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -223,10 +223,6 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
 	dr_mode = "otg";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 20309076d..4d30c1b32 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -792,10 +792,6 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3_0 {
-	status = "okay";
-};
-
 &usbdrd3_1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index fb7599f07..69c067dd1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -668,12 +668,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index b20774081..20c3ef9fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -164,7 +164,7 @@
 	};
 };
 
-&usbdrd_dwc3_0 {
+&usbdrd3_0 {
 	dr_mode = "otg";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 5e3ac589b..3920dcbd1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -635,10 +635,6 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3_0 {
-	status = "okay";
-};
-
 &usbdrd3_1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 580972459..564b56810 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -817,12 +817,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 701a567d7..2e76f178e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -614,12 +614,8 @@
 };
 
 &usbdrd3_0 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_0 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &usbdrd3_1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index b125cac89..cfde6cc64 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -394,37 +394,26 @@
 	};
 
 	usbdrd3_0: usb@fe800000 {
-		compatible = "rockchip,rk3399-dwc3";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
+		reg = <0x0 0xfe800000 0x0 0x100000>;
+		interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
 			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
 			      "bus_clk", "grf_clk";
+		dr_mode = "otg";
+		phys = <&u2phy0_otg>, <&tcphy0_usb3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3399_PD_USB3>;
 		resets = <&cru SRST_A_USB3_OTG0>;
 		reset-names = "usb3-otg";
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis_enblslpm_quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis_u2_susphy_quirk;
 		status = "disabled";
-
-		usbdrd_dwc3_0: usb@fe800000 {
-			compatible = "snps,dwc3";
-			reg = <0x0 0xfe800000 0x0 0x100000>;
-			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
-			clocks = <&cru SCLK_USB3OTG0_REF>, <&cru ACLK_USB3OTG0>,
-				 <&cru SCLK_USB3OTG0_SUSPEND>;
-			clock-names = "ref", "bus_early", "suspend";
-			dr_mode = "otg";
-			phys = <&u2phy0_otg>, <&tcphy0_usb3>;
-			phy-names = "usb2-phy", "usb3-phy";
-			phy_type = "utmi_wide";
-			snps,dis_enblslpm_quirk;
-			snps,dis-u2-freeclk-exists-quirk;
-			snps,dis_u2_susphy_quirk;
-			snps,dis-del-phy-power-chg-quirk;
-			snps,dis-tx-ipgap-linecheck-quirk;
-			power-domains = <&power RK3399_PD_USB3>;
-			status = "disabled";
-		};
 	};
 
 	usbdrd3_1: usb@fe900000 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 7257494d2..810fb7880 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -454,10 +454,6 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3_0 {
-	status = "okay";
-};
-
 &vbus_host {
 	enable-active-high;
 	gpio = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>; /* USB1_EN_OC# */
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
