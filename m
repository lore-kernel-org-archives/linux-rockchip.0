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
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE526C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3757664FC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3757664FC9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eEIll1HnRIk/UDDJVOBq1rqS+aNNXo4uZAu9pUjTBuM=; b=MihwO5mPyTs3jUrzJjEw3johxg
	RxrGpZj2fPJtFnILq6KV1Jtc6klbYChHg0jynPgK7EohcjhlOgdpRgnHHPkLKLeOViFjRfLsCjjGk
	p0SFnciZ/Jg0J8/lDiJ1kImjFlU4I9jaZzxtvvQkJvdpaiUl6+qkaD+o7bstngg7xYnL3BXYKLq1U
	rm45mSZBu4PiCUfBcUOV//xX9TrwGFBBld1/gk2B3UnLOUAVAwYNvRpbMEdvxQSwVNHjneaBCY0zD
	szRCytXNWtD9FhNeLs6tfv37LW7D7Lu3Q8KDZ5DFkgHFzhwVWrTrq9VofHslOLTUOV2thVBGlohcP
	M+coNNXw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTr-0007fI-Qj; Fri, 05 Feb 2021 11:40:55 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTX-0007XU-9n; Fri, 05 Feb 2021 11:40:38 +0000
Received: by mail-ed1-x52f.google.com with SMTP id y8so8467570ede.6;
 Fri, 05 Feb 2021 03:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/a0aAjzQjJH2QwSKfKzXVA6KoKVTm9tiHyx2LD5lv90=;
 b=tm9hFX8vgw/IO+XjEZZ8DEo9Z5slqcHZ6qme3dcewXEvUtMDDE+HSVor4YhcY8V07E
 GjLMq87hcsYqeOgVOi4QXuc4pg3BMCRH6fYPL5duQybCD7wwhc6O35TiFbCcPiV2pM7K
 ckpDyf9dy0PdD89/np2En/2ap1GpOze7hwAPqCVyAbfCVe+hzcVR/jy0r5D2C5wZMFsX
 P2JYXAwvzGzBY9Zf0wG6ia4KlGc5lZsSdYThXMPo0xb7zyJacC/gjAej6QIeJ5yEXtOg
 XYn49bpHQLY3Y4G4GpYyxNWjpMvMVNx2iHW5MFuoJuNb4OS+lbdPmNGDctDnWXKACCP3
 xw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/a0aAjzQjJH2QwSKfKzXVA6KoKVTm9tiHyx2LD5lv90=;
 b=FMI+Ume4OPhRYTcKlXdpf0vWmTzVyjWwogB5XoMgNICw3JaNBnpXunq5UF6YBy2fIG
 D6VUNZjtIvZk6l+56P/bhXQHATtXhjQbc732alBWlbDpZss2V9guBjXJyOowIB2iKdZo
 rFs8cEEr9l6tk8GO5NKLIbUOZC0CiUMtPWkFJpr4rAMkDHqqB/doHBNyJjVHoCav0tkW
 eVn6SXQoP4DE+YNMwc5y67mZzFTLjEEpCynbAmxB2UKVua9qVB8wKgAiZu8C6jXPBnbL
 WKxiYnCMilapf5rt1GrXVinaZoRB7I8BXJo2Ihk568uOXVYV2igfsi9p/kLa9bWSm/VJ
 fllg==
X-Gm-Message-State: AOAM531+7C3QsgcHj5e8JU+0GJvsczN3WmUN4a80077dqE5jg1EDaMaX
 MDARhNsiwi8DN9RO+DLB1/Y=
X-Google-Smtp-Source: ABdhPJz33cwjCvo3G5o+o9k+4HITu41zGsVt1XxToZkwHKyHWXHzfO/wEnL43vfsFv80SduvaUgfKg==
X-Received: by 2002:a05:6402:17aa:: with SMTP id
 j10mr3163826edy.184.1612525233800; 
 Fri, 05 Feb 2021 03:40:33 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:33 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 4/8] arm64: dts: rockchip: restyle rk3399 usbdrd3_1 node
Date: Fri,  5 Feb 2021 12:40:07 +0100
Message-Id: <20210205114011.10381-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064035_396546_3D11F438 
X-CRM114-Status: GOOD (  13.03  )
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
index 90a6ea1d7..1e835a682 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -712,10 +712,6 @@
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
index 4660416c8..2f12e4a7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -517,12 +517,8 @@
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
index 20c3ef9fc..e22995c8e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -168,7 +168,7 @@
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
index 564b56810..be5b1c7e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -822,12 +822,8 @@
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
index cfde6cc64..a63806b30 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -417,37 +417,26 @@
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
