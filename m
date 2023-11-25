Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9794C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kt9zNxvBAnStj4wb93S5/HcA8GUIpuv26oVZNrFVQMs=; b=w0t2x32sgCQpzr
	qZwL6ZSwu4J3EanrIfrzag+qVYA0QELk/uBKz6BE3ckS92wt8V34JLTwiwV3rP1hp2eV8lA/bXoGy
	fz6tkx5EnKooVNwY1sjWvDKefpa6MipYdu5AruB9DELeFxSnAEAvZXqS5TMKy1sV6YgrJOb8VSY/V
	RwpYlIgjNyxpzwyhjh14Nf6nvw5Qr4Dtgev8A7N81LroJd1WAGc3o8LZKumQvKaPjJEDIJRhCOOwt
	YiFTS0Pwm6nwRQS+IR2fiuILfsa7JWa4QCwpAeMyvXNgqm3lapx/ClyeC43QPdnEdPblzLGQmb0OB
	2iuwDotg5wrLh+YWiiQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tqX-009Myb-0K;
	Sat, 25 Nov 2023 14:41:25 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tq3-009Mc6-1V
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:40:56 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6cbe716b511so1873444b3a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923253; x=1701528053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4ENEteNl+//2u346EvCiephALRIREObeECdE1r8+5c=;
        b=N2o6G7E7uDNhJyiX08bX17MEcc0haBrhsdGdio2Ys7gVIN+h64c4xm7pUzK6ic13Lt
         HSy1krjXaimYDjvao7wbw/VczzS7hw+HV/m8mqbPHYzLEeUzW7h2JtnXgqDkykpT1Nji
         sOy49ZSt9/Gok+phLRAjsileCGuzLz7A/W1xP1SzCX4MWHdJ4MpPmK8ZeZE4xq+Eh4Ki
         p4Vgrz3uMzgSoFOAcmxZ1yftkvlJqwCjDyQpcai5vcTeDz/7xjQ2rs70l2d8HnrbRcmv
         rtY/T3hSlMdZlPP/xEKzwn21N1CdbNiWK85Ni7Q1ETuqctdp94Lpwc9IGme2AKdz0o/2
         mElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923253; x=1701528053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4ENEteNl+//2u346EvCiephALRIREObeECdE1r8+5c=;
        b=Gy5lCiSS6DR9S6STSiY9xAtcJHtn8C1wrnHMSFlLOpS6f0j5WwUFhNKlfl9ITroBTN
         ubFk0FVmPj+yEqObOfooGcEQdX3p0J1t/PxX9xIJvlIX+G3E7zcJww3uLoZDQTjekKur
         MQKFT0lZEAbuel9n9ZC2MPnqKbav6+lmwQJeicO8L6/8TpYzajfgQvX8sr46/iYOxLVX
         tUrA96oY0ekeP6KhGlhuB2wvRY0mMwTM+1XugRQj7enlMCosOGqc8gIaWrj41NF95woi
         EfXl4XXJBG1RDGWsSGfFFX1m/ep1eMN+8l8xN4/3Lcfp4PC//3PGeEE+gM8PWtMcu/5b
         tiTg==
X-Gm-Message-State: AOJu0YwjInYpruZp2N6O0P6DVIL8SXxaz3fMveykyX0ZxUfDHyYQYG5u
	KHjfJxqjDKl4E4YO6e7SX9nA/A==
X-Google-Smtp-Source: AGHT+IFftCuVyAW6J+Dwe4q2ltPuhl8xH27IdHvjzuJL/Qtuf5qo6hgwDMf4KO7KWUUT9q0Y4llbWQ==
X-Received: by 2002:a05:6a21:3714:b0:18b:8147:91fb with SMTP id yl20-20020a056a21371400b0018b814791fbmr5185762pzb.19.1700923253487;
        Sat, 25 Nov 2023 06:40:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:53 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 09/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
Date: Sat, 25 Nov 2023 20:10:11 +0530
Message-Id: <20231125144012.58668-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_064055_511476_9405A0F1 
X-CRM114-Status: GOOD (  11.69  )
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

Edgeble NCM6A-IO board has 2 port USB2.0 Host and USB2.0 on E-Key.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 77fafcdc6fdf..58ab6dcf691c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -48,6 +48,20 @@ vcc3v3_pcie3x4: vcc3v3-pcie30 {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -135,6 +149,12 @@ hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 /* FAN */
@@ -179,3 +199,38 @@ &uart7 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc5v0_sys */
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
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
