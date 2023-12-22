Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE343C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFVH50/aeVNP/wuow5ZOJtc04oUwx4CrZIcNn64KQdQ=; b=etyOqetTXQ48wX
	QW6DlgPYsp1c3R80fIH9kku2HF5u82zRLwOkVHUYbl+6ihrC9wJBxW5oem39/p6Fusbu+LdaAFlVE
	loKLIkrcrADAwZO82q9lV6WkAk5apq0WmQbzJFrgDeM3CaYLqcwz2PiS8OpMUqbNJ+WE2U72M0WIt
	t1pHRqTSL+WOhAoCm7LSs5s3kK4CJfN3+wt7F1Ty/qpc5yhWbErr8YN/Uf8xUhv+Z2hqN0cfE/uub
	w1pB/BCUO4ox5VAcJD97jrbBdAmOHlrczyf2lRQXcV9+o/94ykMwysLGjqO58FoAluZtMSt048c+6
	nvjnN30HdOUBxos+HA7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjaY-006Z4l-0e;
	Fri, 22 Dec 2023 17:45:34 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXo-006WaU-12;
	Fri, 22 Dec 2023 17:42:47 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-33621d443a7so2019840f8f.3;
        Fri, 22 Dec 2023 09:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266963; x=1703871763; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DSehpxE7VFQUy0YWI/0+kwR1zv6c+kt9jZ6SUI8YNPA=;
        b=dbjzJDQdLkx6UpFcqGBkjttT/oxSENiis6RPZuJUJAe/3JNivaqShJot61mwGu8H49
         TOdWw4+q+xe0jnCKkM/wa4lQ31pjt7iY39jXZomvdhNdYvb9Ua3J9r9Rd6jx4N49qRem
         hvnlMvIlEdT7sVytOD/yP/uxLTC2HxwEs6gFkD8o55XDW9kvsbM07AsDLJzcUoE0Zpd6
         W/FLmUk7bFcoBSKvuxk7szPfD0Wcizp65+QfD61kOnAZX/2M2TONDgN/W7A/G5sRtYHW
         C+G9KcrU+wDmqceJ/aWQjJaOFSre4NQkgknPDVJc5+TouU39JV/CqWw4lNNRTrdfWXRQ
         qfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266963; x=1703871763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DSehpxE7VFQUy0YWI/0+kwR1zv6c+kt9jZ6SUI8YNPA=;
        b=Yb0DTCPUWPx0U7meFxUGdapRT8HlFbNagWy9E+CvhGUKOhkOq/aCE/glYiI8WLP/Ws
         GCFqkar7YizqkxyczfYB0OF0HLo2unBx4FIMU3wlrc5cc+2nCaptzE6RaRU2L8cm6COT
         Hu3wconNiMe2iRkuAkiWN1m6Em+Hn5IbaZfTcjNR7zNKox6+qVXZp2wWDpVEck8L0cm3
         EpSimyVd+eFxRwOgvehZOYtJM5Ye2GACsnN2BYNZ8FRw/kTaz1wM2StrtW99OH07V82p
         oBXUdw1JI6WM9P0WJN1DXC1UHRxeKLt5j/5Eadx7XhdZoeZAvHHG5LJLrh2yw0jG3G1u
         iFbA==
X-Gm-Message-State: AOJu0YzZsxYfNy9vW245+Ksk3BxzinSTAr5ibt1gP6fQrED3rEWbd+j9
	WhBRaJzsjXgUCaz6zsOoSg==
X-Google-Smtp-Source: AGHT+IGLyV7PwzD0uMRgFbjueBNdwVNWCv/14yX+9ci/Je+qQb52KMqiGZ6KKsCnxRVJYWwB1HUPrw==
X-Received: by 2002:adf:ed47:0:b0:332:e337:7c5f with SMTP id u7-20020adfed47000000b00332e3377c5fmr904774wro.61.1703266963000;
        Fri, 22 Dec 2023 09:42:43 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:42 -0800 (PST)
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
Subject: [PATCH v4 29/29] ARM: dts: rockchip: Enable HDMI output for XPI-3128
Date: Fri, 22 Dec 2023 18:42:20 +0100
Message-ID: <20231222174220.55249-30-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094244_456674_E5D83A92 
X-CRM114-Status: GOOD (  11.82  )
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

changes in v4:
 - none

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
