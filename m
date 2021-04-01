Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15478C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:39:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BA0B610F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:39:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BA0B610F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xWjvIf83g60sRcXOUWfiAwLa3ySLnl4UU9li6POnnxA=; b=hN4Phn5kjiDJkvWU+sUSc2US1M
	PI5oAXe5CyHctk4fIhyE/5cK6UlTJRZkZr6rtpwsQiZRFI+/gjHdKyBKD7+lg0bKDG1S1YTObbqzf
	7u/0G6CEJl2OgzSbRojhaDWBizrD7lpZzF0CYSYervbXgks8dwiF0odOvehMSkfsMQF7qYcJHTluU
	hREBbWbm4j55BeK0lpeadLQNEBVu33kpQA3qdtCLWg5ItDGwEf9OE/MYLTmIqcpyZ+QAz5NJSdhyb
	JGntrxeZkto+gCal2TFLsMYUkSogd0rhz7O64nTOS0G7DrThDJEP8SVE+wo2WpjesDofCIcmAbhx6
	Z/daKsOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lS51k-00B5xW-Kd; Thu, 01 Apr 2021 21:38:56 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lS4zx-00B5c5-1r; Thu, 01 Apr 2021 21:37:15 +0000
Received: by mail-ed1-x52e.google.com with SMTP id o19so3544070edc.3;
 Thu, 01 Apr 2021 14:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L+MlXzK/gX+Ev+HLGvN+yRa0MaXPdgFFgZ11XTZeSGQ=;
 b=k6ZxQMiZAIjzu8wlAu1zuwmEi6+ORAELwN6phiSqlyU1ZNJeGTKL2RdGzrz/vSsJ5V
 lZqJANyQ7vQykNymrongprID3w0nxH16parxUT3scUskm2njS5zQlqL2MM0dxvUL7wLg
 GYXUPmh3YQMJHIGAPRWWR0+tkCnpFUpRRPwqSUfcxYrl+gJz0c16XS8qCwWk7ihGO8fV
 wlrjqYYpb61F8dJyx2naAJMhu07nj0MDxgEge0mSJpfzfBKYlxcHaJaC4DQxB8OGE4V1
 oSyG67FmWUKQ4USd1c6cco/Zn2CEqltwa5YoLM4a9kCaer8luThib1FOSD4DoH7g612Q
 Hc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L+MlXzK/gX+Ev+HLGvN+yRa0MaXPdgFFgZ11XTZeSGQ=;
 b=U8Magl/7dfhrif3jlEI4l7FvZVerXYu4cBl42ASPoncmDsfHSkTkFGnWZ4lHVPSp8+
 t1NUVIB6LNl8FaBJZtvezhyKWacumTuyB9/d76pIXkekBAoVgk4DCcIuhrFZB8H9ABmL
 18smzd12QVixIpsipM9tuxeEBVv0pOHD4I+Eg2QAXUNvZ5311QymQi0eQ9PllbKlRlwp
 dYp/M0kVprS7Nb993dMwBf3bOjWmzYcqZMmYOtjAjoehpOAe3fjW4pm4OQ9clZUG4U3P
 15ioqRR8xsQbMjxgAcKnMPZO7B8qgCUahNCanvAYnMFP+bMyzOsHq/O08+8GNxRaCPIH
 1Wvg==
X-Gm-Message-State: AOAM533tjDGm1rSXRKjM7y0ikhA1xYRHOGNC9Z0u93kWK+YWxsjejGRc
 zifY94sGDjxQ+LVThJTtYtw=
X-Google-Smtp-Source: ABdhPJwVfZwfBTZFklQwPm91xnGt7An+SCmAyWUrpzvkGUWpoHLLnwv1wEiCr686b+92zzHVU03v8w==
X-Received: by 2002:aa7:c850:: with SMTP id g16mr11986100edt.324.1617313024470; 
 Thu, 01 Apr 2021 14:37:04 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f9sm4237006edq.43.2021.04.01.14.37.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Apr 2021 14:37:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, gregkh@linuxfoundation.org, balbi@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v6 4/4] arm64: dts: rockchip: restyle rk3399 usbdrd3_1 node
Date: Thu,  1 Apr 2021 23:36:52 +0200
Message-Id: <20210401213652.14676-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210401213652.14676-1-jbx6244@gmail.com>
References: <20210401213652.14676-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_223713_233302_99889B16 
X-CRM114-Status: GOOD (  12.89  )
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

For rk3399 dwc3 usb the wrapper node for only clocks makes no sense,
so restyle the rk3399 usbdrd3_1 node before more new SoC types are
added with the same IP.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V3:
  remove aclk_usb3_rksoc_axi_perf
  remove aclk_usb3
---
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  6 +---
 .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  6 +---
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |  6 +---
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  4 ---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |  6 +---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 37 ++++++++--------------
 17 files changed, 26 insertions(+), 93 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index 95110d065..4392780db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -157,7 +157,7 @@
 	dr_mode = "host";
 };
 
-&usbdrd_dwc3_1 {
+&usbdrd3_1 {
 	dr_mode = "host";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 4017b0e8c..28e5895de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -778,12 +778,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 1384dabbd..c996c688d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -351,13 +351,9 @@ ap_i2c_tp: &i2c5 {
 };
 
 &usbdrd3_1 {
-	status = "okay";
+	dr_mode = "host";
 	extcon = <&usbc_extcon1>;
-};
-
-&usbdrd_dwc3_1 {
 	status = "okay";
-	dr_mode = "host";
 };
 
 &pinctrl {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index daf14f732..397050703 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -736,12 +736,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index d028285fb..30e6e3e41 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -802,12 +802,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 1c0b48a71..a7092fda3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -616,12 +616,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 01c15c833..6605d0bcb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -711,10 +711,6 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
 	dr_mode = "host";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 7b633622c..fdc027ff3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -859,12 +859,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index f00e11075..80ac8ab6a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -1091,10 +1091,6 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
 	dr_mode = "host";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 6ae9032d8..542980344 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -466,12 +466,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &usb_host1_ehci {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 4d30c1b32..f15f85162 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -793,12 +793,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 69c067dd1..f07f49f45 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -673,12 +673,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index df4119441..bb110c456 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -143,7 +143,7 @@
 	dr_mode = "otg";
 };
 
-&usbdrd_dwc3_1 {
+&usbdrd3_1 {
 	dr_mode = "host";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 3920dcbd1..b5f23661e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -639,10 +639,6 @@
 	status = "okay";
 };
 
-&usbdrd_dwc3_1 {
-	status = "okay";
-};
-
 &vopb {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index f119fc41f..a8e5d9e02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -835,12 +835,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 2e76f178e..fe9d4b2f8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -619,12 +619,8 @@
 };
 
 &usbdrd3_1 {
-	status = "okay";
-};
-
-&usbdrd_dwc3_1 {
-	status = "okay";
 	dr_mode = "host";
+	status = "okay";
 };
 
 &vopb {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index deac8f8e5..497df16cc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -388,37 +388,26 @@
 	};
 
 	usbdrd3_1: usb@fe900000 {
-		compatible = "rockchip,rk3399-dwc3";
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
+		reg = <0x0 0xfe900000 0x0 0x100000>;
+		interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
 			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
 			      "bus_clk", "grf_clk";
+		dr_mode = "otg";
+		phys = <&u2phy1_otg>, <&tcphy1_usb3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3399_PD_USB3>;
 		resets = <&cru SRST_A_USB3_OTG1>;
 		reset-names = "usb3-otg";
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis_enblslpm_quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis_u2_susphy_quirk;
 		status = "disabled";
-
-		usbdrd_dwc3_1: usb@fe900000 {
-			compatible = "snps,dwc3";
-			reg = <0x0 0xfe900000 0x0 0x100000>;
-			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
-			clocks = <&cru SCLK_USB3OTG1_REF>, <&cru ACLK_USB3OTG1>,
-				 <&cru SCLK_USB3OTG1_SUSPEND>;
-			clock-names = "ref", "bus_early", "suspend";
-			dr_mode = "otg";
-			phys = <&u2phy1_otg>, <&tcphy1_usb3>;
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
 
 	cdn_dp: dp@fec00000 {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
