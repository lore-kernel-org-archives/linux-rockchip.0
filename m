Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E5BC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b0aRxSZs2nAluMihoc+LY077Jh7Nl98jZ4XFhHxOBIo=; b=YdVhBYufMJq8hI
	XjJdLSy+pBJrNf0OJN8tbCFbKUL44ECUBX0MmhiQi7lB5edePmiYfbLPCRPj0qEdPVdCxTe0iotzw
	ZBj6VXOxjC8YXS5S15Gs9Ehy8ad5/DuBip/MFhnutrE7qBC2naD2e53BLcLCRVSf0VeKqjYcJ+vo6
	h8B5zUAArAPCLlfbXtgEsNCNoSwRkcyRAjEs52QpcF42jUrEWREGn5VKEinCdTRg+Q5KO2zq7V10i
	xJFlxhjtUoZXN77yydnEVoowkPa339mkH7CpMnnOgMGh5JIfCpAvqvud0NjaotF8EuuCe/HxYWza6
	j75gW0GgBL/kaH5C926w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwdZ-003f29-PD; Fri, 04 Nov 2022 13:21:33 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwcw-003eTJ-KR; Fri, 04 Nov 2022 13:20:56 +0000
Received: by mail-ed1-x529.google.com with SMTP id l11so7577092edb.4;
        Fri, 04 Nov 2022 06:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dP1/LeWO2rgQAmt/otdfS5SnJhxrOZOiNoIWrCNJXMU=;
        b=lcfa20+igICiX0A0N6G4uK4uT9pri0UHw+ivJcw+xQfdxkD5iMF8YoLTWWMucPsbbD
         CTzeAmWiy3CAR47anj/p7UWjW+hIur/ukMv8lbTGwXjyVY6dUICE5l6qoObAaaP74xIJ
         yk4a9IlTaGLgF4ZL+OljWr6krNtLYlCqVOv+8lFYBCLQ1ENTsEaD6IsOn8c8S+V4oLPD
         ApL3XfLzNMjU0hGeIeDZswEyajpdM5G0a5UbfyUwSGIEUkSsLwTq2kKS41uDQ6+3/Qzn
         +0IiMPyFEQNXsUZ2mUuMroZcIVpPjKX0vsFgwk5On1lURlP1JmiLS5uSQkQByS6giMTZ
         vcjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dP1/LeWO2rgQAmt/otdfS5SnJhxrOZOiNoIWrCNJXMU=;
        b=UtVLUGdEICdp3QFn7iKmTGtnkW0B5cNIx7iur6eDxmVFsND6R6blRr9YEb0H+8R/65
         X2ACamp1qdTvVIuEKbdFo4I3g+cZvXZWZpCk3o4kMpvC9SyUc3YO+5FKQVS6bZvcz2YO
         m3g0MHWM7C5ThbY1+wHs0P8iNIJSFfA1Fr+L9lazMALy2OGXuj2WsWWidjUSaHx+dNev
         bI665YKjgUITTVOvd//2NqfyaBGMoTCDGoZrXsHcCFEqMMGofyalHvAgVeH3Z556XY/u
         QSq8TWMQBQGZk6DmIflDMr52RLQi6wr9WAmOfHvjh2P9cOgm5Brzh9KX75Pt70qV/exV
         F+8w==
X-Gm-Message-State: ACrzQf2UZ4LVRngWKIXKQRpH9fA8WKtEUTBqyakPfkStPFpHZck33wMg
	OFoqoQhaltyfKjrkSAgdp/E=
X-Google-Smtp-Source: AMsMyM54wgBTSU+Qfu+C5bG7uNtf+zJ1pX0BoM7yU+i1L3hL2R9Ag4LuIpMite6RW4j8cMg+o39E3w==
X-Received: by 2002:a05:6402:360d:b0:459:5f40:5b0a with SMTP id el13-20020a056402360d00b004595f405b0amr34831347edb.168.1667568050512;
        Fri, 04 Nov 2022 06:20:50 -0700 (PDT)
Received: from localhost (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id gg33-20020a17090689a100b00731582babcasm1820082ejc.71.2022.11.04.06.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:20:49 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: rockchip: Remove unknown regulator-init-microvolt property
Date: Fri,  4 Nov 2022 14:20:46 +0100
Message-Id: <20221104132046.1555932-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_062054_771723_850E6CEC 
X-CRM114-Status: GOOD (  11.21  )
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

From: Thierry Reding <treding@nvidia.com>

The regulator-init-microvolt is not defined anywhere and not used by any
driver, so remove it from existing device trees.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts          | 1 -
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi        | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 ---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 3 ---
 13 files changed, 29 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 7ea48167747c..9232357f4fec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -106,7 +106,6 @@ vdd_core: vdd-core {
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
-		regulator-init-microvolt = <1015000>;
 		regulator-settling-time-up-us = <250>;
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index a71f249ed384..e9810d2f0407 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -105,7 +105,6 @@ vdd_core: vdd-core {
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
-		regulator-init-microvolt = <1015000>;
 		regulator-settling-time-up-us = <250>;
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index b6e082f1f6d9..7c5f441a2219 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -375,7 +375,6 @@ regulator-state-mem {
 			vcc_sdio: LDO_REG4 {
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <3000000>;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-name = "vcc_sdio";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 41262a69d33e..a71973b16075 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -356,7 +356,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_logic";
@@ -371,7 +370,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_gpu";
@@ -533,7 +531,6 @@ vdd_cpu: regulator@40 {
 		regulator-boot-on;
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1390000>;
-		regulator-init-microvolt = <900000>;
 		regulator-name = "vdd_cpu";
 		regulator-ramp-delay = <2300>;
 		vin-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 8d61f824c12d..d899087bf0b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -264,7 +264,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-always-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 
@@ -278,7 +277,6 @@ vdd_gpu_npu: DCDC_REG2 {
 				regulator-name = "vdd_gpu_npu";
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 25a8c781f4e7..854d02b46e6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -366,7 +366,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_logic";
@@ -381,7 +380,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_gpu";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 77b179cd20e7..fc38b30d3722 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -277,7 +277,6 @@ vdd_log: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
@@ -292,7 +291,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 61c7a3ad7387..45807d7e22eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -250,7 +250,6 @@ vdd_log: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
@@ -263,7 +262,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 5bcd4be32964..e23e2293d10a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -192,7 +192,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-state-mem {
@@ -207,7 +206,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 					regulator-state-mem {
@@ -230,7 +228,6 @@ vdd_npu: DCDC_REG4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_npu";
 				regulator-state-mem {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 26d7fda275ed..a70b89e39dd6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -301,7 +301,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -315,7 +314,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -339,7 +337,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 674792567fa6..19f8fc369b13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -293,7 +293,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -307,7 +306,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -331,7 +329,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 59ecf868dbd0..a337f547caf5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -291,7 +291,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -305,7 +304,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -329,7 +327,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index ea74ba32fbbd..482c892567de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -340,7 +340,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -354,7 +353,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -378,7 +376,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
