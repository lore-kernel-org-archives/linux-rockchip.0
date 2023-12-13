Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD5DBC4167D
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ez7a8EFX7uQA3QfvAIRPeUN1Bm6CxmyJmAKVSS/jXY=; b=GvNz1PLG0osx6f
	wFY0gbYzvaUKHsqKtK/g3X7oT3mb1PmMwf0lXAhxAeweaiv5cjID9SNnz/3oiQ3pHJsliI5tyt6nc
	XA4aHpL6wgcUZO9Q04kkgayF6BiQmKriXbVq1tR0ccICAqWwfI07mmgQ/6ChgnKKuLtmBBGNPTMte
	yBHy/b9PZSAUAEMI6LU1KNQyFlq1TZpiR6AMfClfEl1oGxU/4UjTxvaYAXAUZnXCTOVsLhMLh/McR
	T0A7DAjSt/nY3RskAAYCWEp8tHhsecuk/C8S5dSlpEgkhxnEWrawo0Xk20CyanW8T4FncMbmVebGE
	BJBaG6XPq2aoMGDznI1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGx-00FsvN-2W;
	Wed, 13 Dec 2023 19:51:59 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGc-00FsXS-0L;
	Wed, 13 Dec 2023 19:51:39 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-33621d443a7so3664257f8f.3;
        Wed, 13 Dec 2023 11:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497094; x=1703101894; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=26TYtvJWQfom93EELDFR0hGRGZIq8W0h3c/9XO+9E4k=;
        b=mm/lBvq2/hss1m53Un+y/Rzu5L4hOIolgr3t152zP9jW7CctYBZjF6uj1v6PVBFT5Z
         2kxX/FjXinlEm6eJEHkH/Rs9piHYop2ltdBbFZDZtYCwl4614dahTPA1iLsSEfyboNo3
         DjXajzgT015QyrBgNk5FzhwUt+MrYAdgr1kUsyKwD3SkSslKVfYOin3rQCCVLTPJfGzt
         VPdJ/dKsIrHSQdhBMV5xt2cz7Id95+xDjtszgJzbxXKdcoMZKdN8QZPF0+efnpX14c2w
         TMPmkqjU21Fr0xqH3f48kR2rNpyO5J827vx8dbBgm3CRmvneMYUZ2KxOTEjArR/K758s
         alDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497094; x=1703101894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=26TYtvJWQfom93EELDFR0hGRGZIq8W0h3c/9XO+9E4k=;
        b=E2mmPk85Ea7J9LAyLbcgmd6G9Pcz6Pti4OlYJh9nUTOVUDyZMMrG3I9ktAGZxEmm10
         kPNUTZteT8Yjws+XApeh2ZBXq63DcKPFlxGXhGwpa88Hq2SZpsMdtXBc6O+XmEVl0kg8
         NDax4xj4Ga6u6fGts2cpD/+dOAW/+z5svqlRF+lHG8XGM7jPyqC4KYPDBfhmyDFluEhz
         a/HaavDH9YEzWpxmMF91/hWkEhEkkoDUdkW03vXWopa4eCcdKA4UDerGyrAipeWVtkQ+
         NWzYsjIkMAKIZIbCo6oGNKvESWT2z2n3slkRjvRcwMXtTrIJNoudxqMyXhGLrgm6bVF/
         RoaA==
X-Gm-Message-State: AOJu0Yz1TJjN5zv3rqKZj5lbheCp+d7pOUF7k/Tbr2xx4LcrGLIFfKbz
	e82mT9ng58uiEIiIA5wsnQ==
X-Google-Smtp-Source: AGHT+IHGKyN60yuyPA3ry6yA1Jw305WgBGta1msCkC8kPAxdLBAYlT9Ne9SbYyRVW+lhrit0x6CTYw==
X-Received: by 2002:a7b:c84b:0:b0:40c:3820:efeb with SMTP id c11-20020a7bc84b000000b0040c3820efebmr4553357wml.196.1702497094178;
        Wed, 13 Dec 2023 11:51:34 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 11/11] ARM: dts: rockchip: Enable HDMI output for XPI-3128
Date: Wed, 13 Dec 2023 20:51:25 +0100
Message-ID: <20231213195125.212923-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115138_150877_54C36DFB 
X-CRM114-Status: GOOD (  11.59  )
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

Add an hdmi-connector node and enable the hdmi, display-subsystem and vop
nodes.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index 03a97881519a..21c1678f4e91 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -47,6 +47,17 @@ dc_5v: dc-5v-regulator {
 		regulator-boot-on;
 	};
 
+	hdmi-connnector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_connector_out>;
+			};
+		};
+	};
+
 	/*
 	 * This is a vbus-supply, which also supplies the GL852G usb hub,
 	 * thus has to be always-on
@@ -239,6 +250,10 @@ &cpu0 {
 	cpu-supply = <&vdd_arm>;
 };
 
+&display_subsystem {
+	status = "okay";
+};
+
 &emmc {
 	bus-width = <8>;
 	vmmc-supply = <&vcc_io>;
@@ -328,6 +343,16 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_connector_out: endpoint {
+		remote-endpoint = <&hdmi_connector_in>;
+	};
+};
+
 &mdio {
 	phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -423,3 +448,7 @@ &usb2phy_host {
 &usb2phy_otg {
 	status = "okay";
 };
+
+&vop {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
