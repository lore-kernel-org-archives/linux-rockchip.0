Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A7CC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A6C164ED7
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A6C164ED7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ns7GLxmLs1hLWG/K7KQZXsN6NUCUiIfhla1pYBPd/vw=; b=AnI7z7KESXJEebtYXgMenTo4j6
	fa0qM5H0h+og0aa8YY+ZMNMPvj95yMNf+6Jc96H6NRFkzgSqIrtzEYlJzeTelnFZ9m/YqFyvO16MK
	Np2Lyh68xZRNoDh/UXEgd1qhH8rqGXNt+mS5suvkJr6BDOaeSwb1UUKPXMBrBHhpAyw2bw4d8lCsd
	Kx46a2hHW5zwnGNenfnTKr7GlDk8yA1ZEJqckQrQab1AmereaLKG49q9SfoyaNd3EyzrY87Nlj6Y8
	Uqt7IIwoJqmw0zt9L02zfoGStfHnQrBjcq3egtEEODGUGdLax3lfZZbZb1nY24jeL0082wqm/Ukvw
	Au05dZZA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Ycs-00057A-Cg; Tue, 09 Feb 2021 19:24:42 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcJ-0004rm-5y; Tue, 09 Feb 2021 19:24:11 +0000
Received: by mail-ed1-x52e.google.com with SMTP id s26so19602229edt.10;
 Tue, 09 Feb 2021 11:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QE1vhiNECc3E9Z0FtimepS69tVAk52/C7Hu/jBioBnQ=;
 b=iuQAOPFi3wriY1+QWL/1sJA0cWtIG50nJzZXxBC7Tkm0ibcXXgMmTcpq74JQcNInqo
 URe+dYP9oXG+mozJzLLbxjDOSCiy8zrT++/vRPAwilSneuqqQSQk+1xvr3kd16vf1DKE
 PWaiUpw092xpAVokfTL4qrKyLwqMiuxrxQDKaNfCC2kHDMQhSibM39tGqkS7O1AI6w+U
 JLQ9l69es2ObakYL01TQV1ToJLdf+g0g1LvqDPW4UqmtqrwVD4r4RJA0t1PLgXqVGPOA
 TMzmyYa8P9iN06y1ES+VSENwLrG7Jm7QjX31sKv2B81KNY2EZFTuvDd7w2zHBPxAeszN
 OyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QE1vhiNECc3E9Z0FtimepS69tVAk52/C7Hu/jBioBnQ=;
 b=PK/ErS8MIN6th8hmEtp/hDlX2ospGPtMTuZfqlZ0gJGqkw97xhbV/AhXpwaUOlUHiY
 LKaG2eEhhE+N+viSeOk8wSrr8JtM8rYqK8NyM01f5gVDhUDYShZW67Sr3AsxPRS1Xgfn
 9pijArTcBhuYalQ5iN5HdQJklpsapm1rXpte5O0XhaGhW0zBPvaQD0QuLJnhJ/kFYglE
 ol6kelQ50ueS0qp2KVyaq02bdbNdz0jIkbVzhuLVHfR4KlOJN6084lUPY7z5W7MVELB0
 aSZOw17XJjA4K/l/rlG7hH5bbEAAfObV4pmzbnXeaGj1ctvjBeNntsmuA2eSlLPNmEqj
 8OTg==
X-Gm-Message-State: AOAM533axflBwUoH0VXBj89PE9xTexpRHg6uo0QaMFsu4KVbtvZMhiii
 bNbKQHCxR7YGyF+RsUOiLVw=
X-Google-Smtp-Source: ABdhPJxwCYKEQZ4ND/Nf7Hj4paZ1niOmWCNeh/ovmCCE1BbJ/Jb6Asm5SqRNU1HIvBxeR1JfzwGpRA==
X-Received: by 2002:aa7:cd62:: with SMTP id ca2mr3829237edb.94.1612898641723; 
 Tue, 09 Feb 2021 11:24:01 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.24.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:24:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 4/8] arm64: dts: rockchip: restyle rk3399 usbdrd3_0 node
Date: Tue,  9 Feb 2021 20:23:46 +0100
Message-Id: <20210209192350.7130-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142407_505084_CD2E0D94 
X-CRM114-Status: GOOD (  13.23  )
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
