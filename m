Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BCF6C46CD4
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HyEX6Y2nmlm5huxWcc/KYoBQ3o2GTHJYWE9OxQwdfQ=; b=LHy2wl78siNhhp
	4RdiUgOxXwoO7KApN0RKGWYjS9J/3ITVypFQcDCh7YXkd9RbUkBmjSGj+d3ippAXR9c1RcHaE7pBW
	wwl7QpVLhE2Qsq6MknD2+NgDaVz5EEJfU4BKV0Taz3zsKC3ca6nSSbnB+mHnsek/Q6Yd3u4oNJNG/
	BzTOYHFC44xawaF8yx8VRmYFqw+FqgMtwNfIVN4kBJ6GiCgHTx4ZLgt096YPkq6PbNZAmFjTqWT9U
	P+KhCcbRBYx509Xfu1yoh86VCOHod04F+MpKo3rz8SLIIWKDebwVwjNObOeuS/xSGBbO0DqpuD9H1
	0p7cWWlFfwjbTDIzyxVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXw-006MIk-1z;
	Sat, 16 Dec 2023 16:29:48 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVg-006K39-0K;
	Sat, 16 Dec 2023 16:27:31 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c339d2b88so18155385e9.3;
        Sat, 16 Dec 2023 08:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744045; x=1703348845; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S3iOjCbwZExjH9kB2lsGfCX5u0yghPXFIA3BH7zrUI8=;
        b=H2uUALg3tlyGUyfBVSjpyIeWlrFr+ddR4g6e74qdPHe1BNqcbDv9ruL5ruDksBI4gs
         NkDF+QSvQz3dw8ARhtwHLECxEJ+svhzgvD+MTkd1+DSBKXMxtWRkt/2RzsxI1cVnuzVm
         lGFlVfsGPoHCK95mSRNN+HGKgN29BeTEpQLWm9Z8FxBSJDLTuD3NDBiwld57aK3xh+Ph
         5Z5XcEvGYCnTXlkc2a3FvN4OqCfDtdoMnG538lIOaIZuOTLL6zl3mjsXmhRK89wWmx/r
         G6mQl2huRBm3/W46B+4ZBm5o0ZQDUWmeoct2VFEn56TFz9Qwa9OnR+k5cJJm9giOeGDS
         hFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744045; x=1703348845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S3iOjCbwZExjH9kB2lsGfCX5u0yghPXFIA3BH7zrUI8=;
        b=N7yHipZbDjhXxQL++ALW/x7/yrpKopMSkNZj1WfqiNlnNitrrn0joiDJ2BJBqGcT0p
         OMZR16lNAeTQJEPw/PwcjUxmQmkGC8iMxquzWQ526U8ijHEkrtUpk4O4oDFmbk3JdwNZ
         +oi3yMRngtHzeyDjCf4mYEAuKMQo6psgxxD5C4aeN+lQy7q3BRmW4K2sB/mS3lY74Ncg
         SoDA3nwP+h2j2YspCgtPLJr1ywThShb9/urIgfE2Y1VcleA5SBvIU+19p0OvGRv2wYrU
         OvRZNkIpK4Iyw1wa7gBtLkYqAOLufroCOb58cHefffdnRRV4JePEcAycCLyqpuydx0jl
         KvEA==
X-Gm-Message-State: AOJu0YxHsLqCM39D7+eXhqHxQW9/hOwkFLN9bynQaYGUP+wY8NNQemUR
	UgIA6MOF7Kh0Kd3jidA3S132yiqmaQ==
X-Google-Smtp-Source: AGHT+IEiefvMCshqhAareV6PB6nvkF+yNy6rY3P4T12kiqX015mu1E2d8HLFar6wnBfSX8rNq1mToA==
X-Received: by 2002:a05:600c:4ca7:b0:40c:2871:9729 with SMTP id g39-20020a05600c4ca700b0040c28719729mr7088382wmp.188.1702744045068;
        Sat, 16 Dec 2023 08:27:25 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:24 -0800 (PST)
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
Subject: [PATCH v2 27/27] ARM: dts: rockchip: Enable HDMI output for XPI-3128
Date: Sat, 16 Dec 2023 17:26:38 +0100
Message-ID: <20231216162639.125215-28-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082728_194237_5E112AA3 
X-CRM114-Status: GOOD (  11.81  )
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
