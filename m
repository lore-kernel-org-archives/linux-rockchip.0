Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 090AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOAaTO9jbg+3vcu6j6/SlxpyDjBj3yiLJY4y/XlEdGU=; b=1YbSHe+pbt7zSv
	FlWocM7E8Hh57MbIZRvFmXKoXf1cGglu6q/oYpXu6bI4ns4Klz6s/FE73rQTevvQ5sd1aSUW2QqKd
	beS/2R1qIACHeOV0AQATd708NhhmV3laBoa+7p0ULk8U6h+WVYkpRt0cX0DHCD91H+KdK7r2ykxWw
	6SuXd85mjxM+O+XW6t8X7zNgtt1QR4kaJBRejwtiBWh1y9C838/XnkD63rGC65lsb7o60eH51MkUG
	2DyKUJu86a/DP70NTZkeWyayxPqcZe1MgFj0Ei2n804G+JojaVNFt6GAwcKVf7Vb4iAWrbIGJlKRE
	I45yy9kMyzFcuFis2A0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNc2R-005VSt-Jv; Fri, 25 Feb 2022 14:57:43 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbzY-005Tk0-TE; Fri, 25 Feb 2022 14:54:48 +0000
Received: by mail-qk1-x735.google.com with SMTP id f21so4618673qke.13;
 Fri, 25 Feb 2022 06:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oKfaXxTGc+2P/fRlR69FqeRWVrJ1FRef9N70RXYizpI=;
 b=XqeM9c7FMetkvxUelD3CMWMxe4MLdYQj9t0n+RbCNWCrJ4NwISdljwIYT7ZGl2xoqI
 BJQnqoWbqwXN5sydCKrv/Tqn3QqPXTCc8AN4V4x+SZL/K/ixQelbtV+gvIIJBuD/pdoj
 5OjM6bGvKMXY+2xP2z2LJzp5eIRPn50J1xnsph72iUJj20OFzYnyOjSpqT7yFUlPAS1b
 lapYJs/lKw9dDcjE3alasio6+ypU09IIWFmTtgEr1PCBAzbh0mC+xHHVrKFX5aYd3UDt
 0EpaDFEKCorL/5tsSlnACCBi6R8Vnr+mEX35gEueEbziz1/LAuPgmIglJcSSfBnjAAu2
 +j4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oKfaXxTGc+2P/fRlR69FqeRWVrJ1FRef9N70RXYizpI=;
 b=39WmqwmoPBySb8mgSkFLtFfDI1olPgSQQvTOZXj/y2i0htHL6UG/cNbSnbUIbYxGBs
 xQDO4EivFILMFuCqQb5D3U/t4mOwVluKGJ2IWEl9QvlKWHfQ2zpqSgxcc8/uRFChOXyT
 O5ZbLvVJ8jQuImhCbkoJdQn0TS3kgPok6FEzZPR/6M5tBam3kdGd/loFL9nBZmx4ZYnL
 FlJjw0vZJ4q3llXGtRMpxXkemY8lKFp0u+62C/Dy+Ki+QzigDhiMF25c5mSInUZ72KM+
 MYEsTeOEJmDzfQ12lUkfmD7yVIN2nZukvZWURaXaFtXEP5adPf6DGTXs1ed2coCEZGm7
 fVSQ==
X-Gm-Message-State: AOAM532P7Xf+5T1yaDIy2wp3jWpbY9WEEWVHruYDJvV9YgnFdWMl3V4R
 5Q84tohkcSMEuBtoyx8AIMA=
X-Google-Smtp-Source: ABdhPJwmBmlnumTJ/EgWC7d02acfCNzECApowxrebC5yZ8TCcfNS5vdlZ4L38h2kP7AlhNkxewqM6w==
X-Received: by 2002:a05:620a:1992:b0:649:56f3:6451 with SMTP id
 bm18-20020a05620a199200b0064956f36451mr5073437qkb.84.1645800883804; 
 Fri, 25 Feb 2022 06:54:43 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d202-20020a3768d3000000b005f18706845dsm1318292qkc.73.2022.02.25.06.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 06:54:43 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 8/8] arm64: dts: rockchip: enable dwc3 on quartz64-a
Date: Fri, 25 Feb 2022 09:54:31 -0500
Message-Id: <20220225145432.422130-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225145432.422130-1-pgwipeout@gmail.com>
References: <20220225145432.422130-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_065445_002590_4003901B 
X-CRM114-Status: GOOD (  11.82  )
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

The quartz64 model a has support for both the dwc3 otg port and the dwc3
host port. Add the otg power supply and dwc3 nodes to the device tree to
enable support for these.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..a911fa1ef955 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -151,6 +151,16 @@ vcc5v0_usb20_host: vcc5v0_usb20_host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
+	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vcc5v0_usb20_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dcdc_boost>;
+	};
+
 	vcc3v3_sd: vcc3v3_sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
@@ -187,6 +197,10 @@ vcc_wl: vcc_wl {
 	};
 };
 
+&combphy1 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -672,6 +686,20 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb20_otg>;
+	status = "okay";
+};
+
 &usb2phy1 {
 	status = "okay";
 };
@@ -685,3 +713,12 @@ &usb2phy1_otg {
 	phy-supply = <&vcc5v0_usb20_host>;
 	status = "okay";
 };
+
+&usbdrd30 {
+	status = "okay";
+};
+
+/* usb3 controller is muxed with sata1 */
+&usbhost30 {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
