Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30242C71157
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 18:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKUlBKxvg2e51nsQqiU3ep9EOdgHqjfsu4Nj6OouV2o=; b=Vb+aeYisizZjhX
	UB5xwbLbc+X1oRPetpVj+aM0IiGPhtbl41hxUrYUogKW+bjIKny+h0jALracnzD/MpX8Ai19RsWAG
	ghsMDFqX365LScpe/j6CG9R9rpUqonCXfMPuT7pVJbePNpGfStAN9xGH0emBft7eowrj1AXKSCoQb
	t2gF+zBPv8auQtYdI9yUhIXWBfB7Vp90FIhygw4TgIHdwoj6m8TJGMgn6ZLwuAVZYu7f5uTKTYE3e
	fLtxVCf6pLOb+xx4DB6fhDQByt9206yM5rRVQ7FMFihWgWIwOqdkwkbkN18VuAK4Wp9EN9MIcYd8i
	QPm8vjt6E40l4MtX4IGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZL-0000000074n-2Z2e;
	Sat, 21 Jun 2025 18:03:59 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2ZE-0000000071Q-1DNj
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Jun 2025 18:03:57 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-735a6d7c5b1so1791899a34.2
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Jun 2025 11:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750529031; x=1751133831; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3VWQ/3f6uGRHlfE4j0BNsaq/8Sj/J2vStE5CIqW2jYY=;
        b=KzHqjg5NfcOD7/bVTzPRU+1Kby7xxvLnbdtSk+8xNHA50254G5NT5sBN74Sqp/7ToX
         wtPCPMbNC68wWqxqaZIs+EbszayGMM2t0ZXSXg0fFGYcoixNAdYKWNgMq7U2JXt6Ehx+
         UpIqF4y7Uyzk60LA/4O/rdajrN2qRgqnBhsFDhYC3z0q3hGZSyrTnPiNERdS31qPnTfC
         GtfItLvaykAXCdo9J7mvweq57rJUjMCsHdAAXq+eqSHU2IZ0a+4fqxM3VFvbkQDsPpd/
         e9Zzc+j6p29FMZGXsNMwZKPySD/mo74xi/rSUgOz/DA9T+YStC1GXAdxEDpNRrpFYYEx
         qtrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750529031; x=1751133831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3VWQ/3f6uGRHlfE4j0BNsaq/8Sj/J2vStE5CIqW2jYY=;
        b=YjRHnqNHMTtZ8ucKcEBlL+aei0vFQn20xOjr6jWHe/h9PACVynxOoA4tAFG27JhZgj
         OE01wqkdBKMIDzHgZvqe/BumA2PiUh01HDXEox0FDzuEiaOiEyhfsgGzaOGLEKCKKEuE
         o7VtQA6ShbXO+zqtzxM42JK1BLFXNrPy1H2CUF5zb91+BKSLDYylNJwal9COnTkQB4in
         512hR/9//Grvyl63rumO8B4VtH9pJ/fRUlJJG7QGJ4tmXoO8L4TOF6mPDGFotArdVUPY
         /ePH0WdMpvtW0804tQ1NW+nCnHt0+URIifP7mPgBKS9ql59fvRZEQhvLYio3Y0WvOyk4
         lDHw==
X-Gm-Message-State: AOJu0YwfZ+MGSki1unZ3LJX4chOMCU1P4rvxgi4lN661Rd6gA9a9gnX+
	E/dWXx9sSFkAcSi1Z4sMCVaTFgkJs1UcZWA3OPSla6/Vh1D49yx+3bRW
X-Gm-Gg: ASbGncug3Dn48DpoSjXAbGSBE6KVAegNF5FlJoKX031i+rLivMQX6Iup10IJx9hKvPn
	YIDPxjRj260d4p+S8v9xW6ELCn5j47opGcaGgC+qnQkap/GYE/sDPQnUrejztNXCYHHFV41e4HB
	OmaHp9jQkG98M3iHwCmEOn5icfiIKzA5nZJalihrUfv5V915PREvWmmyQldjsS7K84dbB6C3RIT
	Usj+rnds35dpOZJVuSxELzHoPkxhu263gTkijsysxzrhlO0owfmPwDsAmTNJ1tsW2TLEO5CxokG
	5pKHRjHeLLQB4q6vneW9taKl+cZwOD+crD9kHlElpbBK+eoi5RxcQGhH7ed3
X-Google-Smtp-Source: AGHT+IFiLXYIned3w/8jpGd43WO8zO95ib2QVaU/sdAM/cAhlQwDADtJv0SrvwE6/jrq4UNJ8sGUxw==
X-Received: by 2002:a05:6830:6607:b0:72b:93c9:41a6 with SMTP id 46e09a7af769-73a91fbf66amr5329313a34.20.1750529031452;
        Sat, 21 Jun 2025 11:03:51 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a90ca8707sm782895a34.46.2025.06.21.11.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 11:03:51 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 5/5] arm64: dts: rockchip: Add USB and charger to Gameforce Ace
Date: Sat, 21 Jun 2025 13:01:19 -0500
Message-ID: <20250621180119.163423-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250621180119.163423-1-macroalpha82@gmail.com>
References: <20250621180119.163423-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_110352_921002_AED54F1F 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the BQ25703A charger manager and boost regulator to
the Gameforce Ace. Add the USB-C port and PHY as well as they all
depend on each other for operation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 873a2bd6a6de..c74a4e0fa238 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -575,6 +575,56 @@ &i2c6 {
 	pinctrl-0 = <&i2c6m3_xfer>;
 	status = "okay";
 
+	fusb302: typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PC7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&usbc0_int>;
+		pinctrl-names = "default";
+		vbus-supply = <&usb_otg_vbus>;
+
+		connector {
+			compatible = "usb-c-connector";
+			data-role = "dual";
+			label = "USB-C";
+			op-sink-microwatt = <1000000>;
+			power-role = "dual";
+			self-powered;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_FIXED(9000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_FIXED(12000, 3000, PDO_FIXED_USB_COMM)>;
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "sink";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_role_sw: endpoint {
+						remote-endpoint = <&dwc3_0_role_switch>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					dp_altmode_mux: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					};
+				};
+			};
+		};
+	};
+
 	rtc_hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -603,8 +653,34 @@ battery@62 {
 			 0x2F 0x00 0x64 0xA5 0xB5 0x1C 0xF0 0x49>;
 		cellwise,monitor-interval-ms = <5000>;
 		monitored-battery = <&battery>;
+		power-supplies = <&bq25703>;
 		status = "okay";
 	};
+
+	bq25703: charger@6b {
+		compatible = "ti,bq25703a";
+		reg = <0x6b>;
+		input-current-limit-microamp = <5000000>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD5 IRQ_TYPE_LEVEL_LOW>;
+		monitored-battery = <&battery>;
+		pinctrl-0 = <&charger_int_h>;
+		pinctrl-names = "default";
+		power-supplies = <&fusb302>;
+
+		regulators {
+			usb_otg_vbus: usb-otg-vbus {
+				enable-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+				pinctrl-0 = <&boost_enable_h>;
+				pinctrl-names = "default";
+				regulator-max-microamp = <960000>;
+				regulator-max-microvolt = <5088000>;
+				regulator-min-microamp = <512000>;
+				regulator-min-microvolt = <4992000>;
+				regulator-name = "usb_otg_vbus";
+			};
+		};
+	};
 };
 
 &i2c7 {
@@ -807,6 +883,12 @@ usbc0_int: usbc0-int {
 			rockchip,pins =
 				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+
+		usbc_sbu_dc: usbc-sbu-dc {
+			rockchip,pins =
+				<4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>,
+				<4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	vcc3v3-lcd {
@@ -1239,3 +1321,43 @@ bluetooth {
 		shutdown-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
 	};
 };
+
+&usb_host0_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		dwc3_0_role_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
+};
+
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	pinctrl-0 = <&usbc_sbu_dc>;
+	pinctrl-names = "default";
+	sbu1-dc-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_HIGH>;
+	rockchip,dp-lane-mux = <2 3>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_orientation_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_orien_sw>;
+		};
+
+		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&dp_altmode_mux>;
+		};
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
