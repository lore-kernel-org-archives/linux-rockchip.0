Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CAABD767E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 15:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuuAsSfZwphkQgKuJr1a11wwUQ62pcV1YprwjZzMcbY=; b=BSyAWxHQLZb3Zk
	uN/ql5JwcZ87yN0OSlZl1NtEVzEWmaOBIizq4RpzzCfOfFzlGTPCMGNM/F2qsKEyDOWP8NO3aNMw2
	lZOuXfvFVp6tpF+Y8h3NHDAkpAbfU6L/Er6Am3iWp8wFecG7yKq4XBWa56mTGQgEId8kECa+XvKuR
	3bhvC0FaT5psSPTPtEYBHFx+iE5MF5P+mPb60775BPy0vuwtFiWPp8xgyBDRJ8cl0h2PyShmDIRo/
	3n6FfWBjz9k0RqUqYFNJ9ujqyiSTqLJxmHxjmPoWh7T/+5Y9viTnVKPcAZSIDVcUcGO+ub5q8J5tV
	ZJsWjCuBz7BWZgCNjiLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6XAr-000000040gV-2rCo;
	Thu, 31 Oct 2024 15:33:25 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Wln-00000003vN3-2dRy
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 15:07:33 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-5ebc22e6362so495850eaf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 31 Oct 2024 08:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387250; x=1730992050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jlWwUEVPL4Ht5JR9rZd0qrjB4/ZUY1ibxQvg14KDPjs=;
        b=CkPDBpuUG36mxZf0+DBDYCqBtp34zzzH9kXsfSXLgkeLR1KUq6cTcA/QqwAQ8YoS0z
         dffdqDIrjHXYK6bPATVsvcJY3zVFJrEiHqFX11cwYqIcfonCZZTMJWUTGP2zuBm637GN
         eDlURBVInB8YDyHqbB6+c///LzqM7CPU5WK0NjFGNYHqyainrLIh7cZCXrbHQeTBLAi9
         COy5gDZYqnjqAOgqzS86tHcXtaFUovhfn7c+7T872lxVScg//oRBoKtjWF/H4RTVpqrB
         JLziP0NKNIF49rCHkYSvpreN4OVoajThMMbhCf7XCqi+8/8/Z4g8JLwnY1Oydvf//gT1
         jgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387250; x=1730992050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jlWwUEVPL4Ht5JR9rZd0qrjB4/ZUY1ibxQvg14KDPjs=;
        b=up4PZVSgjOIdRY2a9iIhYo6fnVJfKWyZEYdoTUfUZHbsWsHPi5KlNYgWQibh2f2bdJ
         fkC2/HhCD0P3rvApMnkG51e9r21IX5BfUazd3aX6wNuOairPmHGgeVZnmmkELTU4K0vR
         BPpbhe1ctfJByn4Divs2K6LUPgwc7Boi4c7f+uWWXFJFPMwrZSZbaMNYvWRN7039yk/J
         /aJ7u7CcPY35cpbO/DsTpDtiSoMTj1EXBnG6Z5P/FBBsnNb26By2lgwD7VCb91Mg46Wf
         Y/RO0JmK9A7e+MFiqJLv1eLHQHfg9wU2Lul+MIwfEKzyie3gRD0plE7liFO9VL6060h9
         UAPQ==
X-Gm-Message-State: AOJu0YxrPM5VES919tiyERyIk5X4mKuDKikdjYc/tJDaagH5JZkAjsYA
	29o1xEI61+lAJ8YrhXc3CXU+1g0C3hNtUvSf1JzMCjNIQNURwhhDcr+Rvg==
X-Google-Smtp-Source: AGHT+IHrnnNEC7W9Gy4tyX2vX0j96eLcc1aZvHwwgyHwDkIycahdXSdL0CeVLvLWa3/QOhDfjFUDcg==
X-Received: by 2002:a05:6820:1c9d:b0:5e5:941c:ca5a with SMTP id 006d021491bc7-5ec6da771ebmr2078268eaf.1.1730387249972;
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
Date: Thu, 31 Oct 2024 10:05:05 -0500
Message-ID: <20241031150505.967909-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_080731_724190_780F8383 
X-CRM114-Status: UNSURE (   9.83  )
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

Enable the HDMI0 port for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 065d44735001..3a41b9c00010 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -5,6 +5,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -50,6 +51,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clock-names = "ext_clock";
@@ -247,6 +259,29 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-0 = <&hdmim0_tx0_scl>, <&hdmim0_tx0_sda>,
+		    <&hdmim0_tx0_hpd>, <&hdmim0_tx0_cec>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -924,3 +959,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 		};
 	};
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
