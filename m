Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 300ECC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+32EJiHJQcBVxvMneJK1R2awWFrWwGpR4QddXZ0Sm8=; b=AwAcPt/PPd9YAk
	x15/w8suhWfIVd6rQxXqBXS7q9KI+szmUTQya/KdgtBOF9EGnFRGtwEwQhJuyR/2iTt3BMvr3wgl8
	KRac/3tKDI4rYOW7naVGRAfot+VkduK4/h/naJHqiB/0ydv5O5MZjA3C5kFLApPkzaC5eZgxTi6Xu
	1fRhKpwMmqVJ/A0Ab5lm2ePYoA8CRD1+aY/BPZ4M3uf2WszPLDpTbWroQgFAAEOiLTNc5kZscmauW
	oKYCo4MAjDd2Mafa3hOOr8CxfzLsGzx3ooj+eidNq+ykB+57/bygUrIsoXqZ+wS3YQ/FEwer9MdiR
	8yDsDS6tO+FtIfZk29Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdVa-00EqdB-2m;
	Tue, 19 Dec 2023 17:03:54 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTL-00EoP8-2E;
	Tue, 19 Dec 2023 17:01:38 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c2db2ee28so60209575e9.2;
        Tue, 19 Dec 2023 09:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005294; x=1703610094; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcvRB7T9fUAwMybq5GgUQQU8bu+Y05ebI2TjIjKog/c=;
        b=Xx4iiaOZxE2+LldPI/bPL0jQ5pUFeYfIKS973cdbFg5JcYN6XER3L/m7SZKr3tSMd5
         mrO1lYsprXcPyCueCbwCom+dqEgs8wPAVZqSGKvMbeY92KxYBxU0f+BXn1yZOjXI9mR0
         ihyqEtltrBDj2/k2cWeip0Y7c1HBtdAJjTJHfUXomP5d0Ihfs3ddVb9xHBRUdAmK3wQy
         DOtTn00bEQsuYKOXl17ACNeIEkRIGgW5GYNxklc3Tpb0YUz1Locu37Ab55N1gaTUFeya
         rpnw3jSwKrd0PrZA7ootGv9z5yxj64uVQReU5rmBzw+HbNnN7lmYlsQzQ0r9ibUOErI7
         mhcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005294; x=1703610094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DcvRB7T9fUAwMybq5GgUQQU8bu+Y05ebI2TjIjKog/c=;
        b=FixRo0scVIuFGmUi0DmdYHwHlqq/9smSp6cWIsQf31WH8jPvN/AlZv97na96FWvp3J
         iIqjvM9JVCC6LN4lzZ4IFLs6MsjH4XLNmvSifray6hgV00W6KNj21SxFilgNW+tiVpsi
         L0mAyzTIW4ZHOpmVERyfJN/bvuEUN1xQn9nKYiV24yBh+hRCdmN6Dyq52wG+9C2PAE1k
         +uB2xpB76UoSIhQOEkDGaZonTHuDC2eTACPWQgj/ISD7ixK6eHfqBnro2RM45lvhhz9/
         AgO1bz9WNgJaXem29JWQFA4mk5peTt5hnG28+8MZuUGX/c9p+pxtxCwlSsq3fYCqE/7F
         vSuQ==
X-Gm-Message-State: AOJu0YzeUlMNO2xzMPhl/7GL/YrvWBY1LG1TBVSrHpwokZzkKMSct9Nw
	8F75rBhm8ESwc41sl4yMWg==
X-Google-Smtp-Source: AGHT+IGrAcc7/m62H6UhRJS1mgnAg6bEsa9UDyoPGrhboqs/G4K/oMz4JwX4/2A9/ksnAk+nV2p4PQ==
X-Received: by 2002:a05:600c:354e:b0:40b:5e21:dd49 with SMTP id i14-20020a05600c354e00b0040b5e21dd49mr10028636wmq.119.1703005293973;
        Tue, 19 Dec 2023 09:01:33 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:33 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 29/29] ARM: dts: rockchip: Enable HDMI output for XPI-3128
Date: Tue, 19 Dec 2023 18:00:59 +0100
Message-ID: <20231219170100.188800-30-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090135_794059_B2D844A4 
X-CRM114-Status: GOOD (  12.29  )
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
changes in v2:
 - no changes

changes in v3:
 - no changes

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
