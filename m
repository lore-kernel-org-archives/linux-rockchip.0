Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FE61C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E4382610FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E4382610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oI+5KcbZ9Ga3+HkMqwTG+0dD34dnjTHXrm5DpWP6Vs=; b=Ng6Rrw+oxuL0w6
	e9HJFK6ERsaQEAnfnYH7UUsGJ1LPeG+KpyI3xYub2nZkCUMHTMfeI1XzfT+lbEkYGsFItF5EjzlNv
	Hp2GjsX8DK4YOgf9pzR8mvAyGsgCitz92T3qpO10LdjRGDF2Y3JFgTMeLHgTm07GES0bMWz0wLLtK
	N3BpY41jpe7Ffj9bBROMXBFL2YVlqZlCZcozuMppz5B2oj9OyEdFGAy2ZJOQjWk2D7ES5QYGYH/1g
	HZzw/Dw50pr8qdN9+kY0aU/M0opSlaL7izHAfNJLNc35OW06gGTnUsaXd6nSvdERojklNlpA59zCH
	ucAuhLcwz/L87nn4grBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyczX-00EimA-5z; Wed, 30 Jun 2021 16:23:11 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczS-00EijL-9z
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:07 +0000
Received: by mail-ej1-x62c.google.com with SMTP id yy20so5198648ejb.6
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qb31qJPJtjC0rrZe6j0S5jUekYCbHifByYeNvwuYLXg=;
 b=LPhbhylFfG9DFLDZJzo/qOO9QUGbvidLtHLtBCy9DqFih2LkQGzoI0KmRapL6fOWPX
 e+UgLugcg6hVSALSP645A61B4Ax4crHXMCvUAiZT5ehLh6rLdee6uftkKJUQlzH1bbY6
 9jNuQDOdoYqHlYjguTsNonhT9XbWr4HqMulDGeoW2r+W2XvsxXEJG5z4bNDQfk6k/yoy
 b4HJnXcVASK8kOOK1sMWEQ3KsWX8M8b7XjzlRKp86HcgOP1ERIx0RXCRGnkkeHteQOtI
 1s19aY3AzOMuWgrUMvXZzJLvjCLvRjjFRzExsAn1si43CdkZeL50gCANm/2sBHML0lwR
 Rttw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qb31qJPJtjC0rrZe6j0S5jUekYCbHifByYeNvwuYLXg=;
 b=UOXJW2OvqCDpk4E5gVferAEWqgDTdcZ+6aLU/nFMmE+uZwJA6eeqBsSw9JhtcUdAWx
 w/pA3ecg0rSW/PEVDkLzjRpFFllJl5MTqxMmArCJJk87zF1Hpsd5dL2JfVxvHu0Y6LgH
 zmW9w1Ajqx1dzBsmUh+m41kKrv34gyb8+Tl9ZDX96avLBk9wWzSQJLTp3x8EhzwU6n/h
 PJG36WOl94Y8Nzdve3AnL/1sX6m/LbMK4K9EzZxCmFnSEc+oaiFcvle6QNchDZ9jG0YH
 5sVOqRF/yP5b2D0wTVY6ILG1+VEZ72KekDyL7KibNq5Ddf2Gu4QxNnSyPe0S3muI3Wyr
 Xeiw==
X-Gm-Message-State: AOAM531DyXPV/bmunzLDcnW8vaTlw0xY7m41m3T1CoHwRJTFI5Y0ZQOe
 Lt5IUVB+mw5mxWA/Kqg+suo=
X-Google-Smtp-Source: ABdhPJzSfGVJR1GPuvhSe/a9rNVcMbc02vZVC39FksP76lhTg619VwjDY5TQoGqa25Ap3GwFTfsnKQ==
X-Received: by 2002:a17:907:1b22:: with SMTP id
 mp34mr36293066ejc.408.1625070182872; 
 Wed, 30 Jun 2021 09:23:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.23.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 2/6] arm: dts: rockchip: remove usb_host0_xhci node
 from rk3328-u-boot.dtsi
Date: Wed, 30 Jun 2021 18:22:47 +0200
Message-Id: <20210630162251.7378-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
References: <20210630162251.7378-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092306_387994_77E436A3 
X-CRM114-Status: GOOD (  11.85  )
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

The rk3328.dtsi file was updated with a usbdrd3 node.
Remove the usb_host0_xhci node from rk3328-u-boot.dtsi,
because it's deprecated now the driver is removed.
Add usbdrd3 as place holder in existing dtsi files.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/rk3328-evb-u-boot.dtsi       |  2 +-
 arch/arm/dts/rk3328-roc-cc-u-boot.dtsi    |  2 +-
 arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi |  2 +-
 arch/arm/dts/rk3328-rock64-u-boot.dtsi    |  2 +-
 arch/arm/dts/rk3328-u-boot.dtsi           | 11 -----------
 5 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/arch/arm/dts/rk3328-evb-u-boot.dtsi b/arch/arm/dts/rk3328-evb-u-boot.dtsi
index 4bfa0c2330..bab0187f01 100644
--- a/arch/arm/dts/rk3328-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-evb-u-boot.dtsi
@@ -45,7 +45,7 @@
 	status = "broken";
 };
 
-&usb_host0_xhci {
+&usbdrd3 {
 	vbus-supply = <&vcc5v0_host_xhci>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi b/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi
index 20a62134a0..4d59e35788 100644
--- a/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-roc-cc-u-boot.dtsi
@@ -48,7 +48,7 @@
 	u-boot,dm-spl;
 };
 
-&usb_host0_xhci {
+&usbdrd3 {
 	vbus-supply = <&vcc_host1_5v>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi b/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
index 0b1a42c49f..028919d9b3 100644
--- a/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
@@ -45,7 +45,7 @@
 	u-boot,dm-spl;
 };
 
-&usb_host0_xhci {
+&usbdrd3 {
 	vbus-supply = <&vcc5v0_host_xhci>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3328-rock64-u-boot.dtsi b/arch/arm/dts/rk3328-rock64-u-boot.dtsi
index 3c3b1370e3..37ecc6a753 100644
--- a/arch/arm/dts/rk3328-rock64-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-rock64-u-boot.dtsi
@@ -48,7 +48,7 @@
 	u-boot,dm-spl;
 };
 
-&usb_host0_xhci {
+&usbdrd3 {
 	vbus-supply = <&vcc_host_5v>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3328-u-boot.dtsi b/arch/arm/dts/rk3328-u-boot.dtsi
index 1633558264..1d7bf19192 100644
--- a/arch/arm/dts/rk3328-u-boot.dtsi
+++ b/arch/arm/dts/rk3328-u-boot.dtsi
@@ -24,17 +24,6 @@
 		       0x0 0xff720000 0x0 0x1000
 		       0x0 0xff798000 0x0 0x1000>;
 	};
-
-	usb_host0_xhci: usb@ff600000 {
-		compatible = "rockchip,rk3328-xhci";
-		reg = <0x0 0xff600000 0x0 0x100000>;
-		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
-		snps,dis-enblslpm-quirk;
-		snps,phyif-utmi-bits = <16>;
-		snps,dis-u2-freeclk-exists-quirk;
-		snps,dis-u2-susphy-quirk;
-		status = "disabled";
-	};
 };
 
 &cru {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
