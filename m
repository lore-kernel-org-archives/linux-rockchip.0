Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D53C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:31:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62F1B60F9D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:31:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 62F1B60F9D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Te7s78S6NBSrpUJXlAqw5Yu20mPJtToi1PYpz4Pzc8=; b=npieNOASnbbJ/J
	NVpEjPfvCZHysGb0rOnLxgHr9RM9ahqCHBCIZF41/Rl+4tAFGC3FBd7XVkxMjZzkcY75aypjLGA9c
	87hLVcMLj2mIh1J2sWcqeaOfRPDu3FEf7/GEytNo3GeZEV+eBNyiQ+QPr5wsDt0LZJz7mBFfIOHVL
	GgMsoFo65f6Wc9SuirDdCQizag7Q3iKd8R8F4YXC1nQlUtnhChIKvKAGItQEpg09yU8r16zap+WR1
	qRVRKas3OfpnTYFzCCAHB+FRSxQ6cKTZgcBQRwOOxHkHu5MREl96IGVwBemln0OmyvJhn6E05FAoU
	hFaFU2VZifg5z76EhMlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iiJ-000esX-13; Wed, 28 Jul 2021 12:31:07 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idm-000chy-0S; Wed, 28 Jul 2021 12:26:27 +0000
Received: by mail-qt1-x831.google.com with SMTP id m11so1161450qtx.7;
 Wed, 28 Jul 2021 05:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vSamTyccptzOdkOr+v7GJn23T5SHRt0Wd7iQnG52jY=;
 b=NXvdypyXEa4o9r6QNCKGCY4jqgUM7FwQyguNMcp5lkIjpGB+WdZ7BFx1c/u3pIKVql
 xZ7WfbEzGHcLBeot5u0VCUkU5Xiz8M48dtv0Y8s72CnAs0Bbk4XmyyTY7d1TYUwCG9y7
 jM9H8cynwnhtPLV5Iwk43QGh3VhSprSNKbi9f0CnLGJWoqplCV+PE4jm9VtYBqFWvA/l
 s/tveoUnL3gPAMnQUmt8k2Ym8/EJDJuHj9g45pxqRNQB6kqhYQ53F/WXTIHiTXbKQ4cF
 nwBhsYqwwxjTEhok3iIavyRoN1cXChF43DJ32V98m+qcUfsCT6RMv88RILDJT/uYiH8Z
 DXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vSamTyccptzOdkOr+v7GJn23T5SHRt0Wd7iQnG52jY=;
 b=KZLl8HrXRl+3WBHaHcFEYSDktFvIHBkRYaT0HdgmFxkBKcUHpdIs/ipJMjwWLms3An
 vZOja9s5r0rFabkjgm4wX8IZ/OSh4HaDHzNYkLUFlAk/ZwYHKq3VEuvcNIjF0X7fTNzp
 x6feaxC9PF8URAW+AYYGl3y6gqAAljP08+UUhVIwFatbKA2wss0+tqVQTtTgCWJuFu5X
 tPpurvflAuU5LwWdBHsvnBaJfJsK18jaNNCkJtLO6FPI0TJiKOXFMuLf5KNnlOCOasc4
 I00GIIlwJDzkqfeWAqMTgbbNrwns/lBItuyifzwASEEbcWhqu0CCpxqnpgBjFFMzTkup
 2n8g==
X-Gm-Message-State: AOAM5310E86tQY6+RwzHEnkoKouhM+ybHwJcn4bqr7jHsd6f+xY9d+ya
 StftR8aur5rU5ZuU63lxsQw=
X-Google-Smtp-Source: ABdhPJxEuwWpP6uwmOX2Y1/LpA8rCmWMqjso4HcdRbyYswOjdhURfWXgD7MdS+rY/ropyBbaKmfl1A==
X-Received: by 2002:ac8:424b:: with SMTP id r11mr24146675qtm.188.1627475184575; 
 Wed, 28 Jul 2021 05:26:24 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:24 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 9/9] arm64: dts: rockchip: add Quartz64-A usb2 support
Date: Wed, 28 Jul 2021 08:26:06 -0400
Message-Id: <20210728122606.697619-10-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052626_105295_3CB9CB4C 
X-CRM114-Status: GOOD (  12.02  )
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
