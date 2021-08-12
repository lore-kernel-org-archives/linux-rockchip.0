Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87078C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:46:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A4266103E
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:46:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3A4266103E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Te7s78S6NBSrpUJXlAqw5Yu20mPJtToi1PYpz4Pzc8=; b=YiZCLRTFovh4j7
	lHE+IUz+3EJ4M6m+oYV6jiKYMsb938JtjUTUJdGIHUldUUJkFmBWo+r2psiLBXW28JCcj6Aw6KWWc
	BiJt3P2IN3uFqtY3j43QmC5cBSp2WB4o9Acs6IuuB9O2PbMNCN/fLb6vcmQkMKgwzLMjKkse8LIav
	DXLUt6Fm0B9Iz19703vWTjBFuyruVBi1fYAgpOx9kAlRnHWt4IpbQAx7JCrb15ejHMAsgTyh/+o0A
	NphCZ/jZHXnsRId038uaVgWaylnT/x9lTBuNXEWg6HHHJzhlkpRD7bYi/YRTei3AYtqvfkYFVexoz
	O9qsFjIVMsRE4mHuxH+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHbD-00BDik-B4; Thu, 12 Aug 2021 20:46:47 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWg-00BBST-9G; Thu, 12 Aug 2021 20:42:07 +0000
Received: by mail-qk1-x72c.google.com with SMTP id c130so8236747qkg.7;
 Thu, 12 Aug 2021 13:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vSamTyccptzOdkOr+v7GJn23T5SHRt0Wd7iQnG52jY=;
 b=WsddWCX2bH0za7uq6RXsMB/yT5Y5kXw5Dfi4StrzwM6j9+0IbgfdtWevLRetgVsmcq
 FY9rZ8rN7XopwA3C2iMrRvd2jmPgW4oMLutiEKRAntdFlcfMA/c1lxG04WyoA7LKTg7l
 JydE/tfQVnOAaC6f5uAKubOjH/kQYZUOHPgmanqwU0A/VBdRoloHkxJhutB6Npl+6/79
 zkQVpKT/QllZZzFCvA2S+DG2b/klg3GgsSxrvHQf6pd6lrqIGEQeer1L0sikZv4Fba/l
 enEfwf/qF4NpYUxz2D0hDf3N7elMXpKuKG3D1Jw24k7VBZsX24xzKjbg49QUNj4IQBEH
 jzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vSamTyccptzOdkOr+v7GJn23T5SHRt0Wd7iQnG52jY=;
 b=LbxiHnjFqGa+Lvppex6OKdjdGdf4kaDJypjOwE0YSyOTVzWHUFTeJyuTZhaX9Ye/Zd
 btamJcYFPcLZJiHg5w7J1/zr8TXxMxnyttqRLOy2siY3PYctLTvboxwoIwvii8haVSiP
 9nTJ6T/RYpxxij8477WMu7kkd+ehCHP4JED9EklLNp3UoLEGPwQeQv80dXzDj50c2vl5
 UALxE4iKOlc+6Ut5ztDWUcIfg1KYzwrSu8KBcHHnxOuwhJ8jX6af2E4d953FJjO4aSo4
 R6hFHFwKBIGMZ0DP7kcAcJhfdAENdTK9kRVIs7DUI4QECRZal+4DJf/OZ2gFztqZKh3z
 ekzA==
X-Gm-Message-State: AOAM532V2Jmd4Whbbj3QACAFG6D/lJv385WOppyQ5wzpRq6UQRjptWVO
 xToio6oxD4UCscHlLUtn8xg=
X-Google-Smtp-Source: ABdhPJw/1/MKI/+YdMlNsbB9IH09a4UY8r9lfrOqTmOPC3J4ZFt6cYVEJKpp1D5Peg1nmERqRT4y+g==
X-Received: by 2002:a05:620a:cea:: with SMTP id
 c10mr6698474qkj.238.1628800925058; 
 Thu, 12 Aug 2021 13:42:05 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.42.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:42:04 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: rockchip: add Quartz64-A usb2 support
Date: Thu, 12 Aug 2021 16:41:16 -0400
Message-Id: <20210812204116.2303617-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134206_384457_00D49D7D 
X-CRM114-Status: GOOD (  12.91  )
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

Add the nodes and regulators to enable usb2 support on the Quartz64
Model A.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a3cdb6c2bec6..53ea5c13076b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -75,6 +75,22 @@ vcc5v0_usb: vcc5v0_usb {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	/* all four ports are controlled by one gpio
+	 * the host ports are sourced from vcc5v0_usb
+	 * the otg port is sourced from vcc5v0_midu
+	 */
+	vcc5v0_usb20_host: vcc5v0_usb20_host {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb20_host";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb20_host_en>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
 	vcc3v3_sd: vcc3v3_sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
@@ -367,6 +383,12 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
+	usb2 {
+		vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vcc_sd {
 		vcc_sd_h: vcc-sd-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -424,3 +446,33 @@ bluetooth {
 &uart2 {
 	status = "okay";
 };
+
+&u2phy1_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
