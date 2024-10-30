Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 670E9D6B6C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 19:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hb4pYIRM99/0DphrJXpyIlqoYwcL9L3sIX1YDc349mE=; b=y2+OjOUl6aqrzD
	nqOcNUw5aI1hcTA1yc4OByqvTv3gaaLBOw7jFlQ0fqdqjP/286n/lpyCAYPLcPDmJCJEoD3FWYCJS
	SaY94quSlLgUGQLD7hSynMSN6vlBn8Y0Rt17nxo5fjVhkKUSA26RYED1bqYazteObAP3pwI9iASWh
	GRtEYGH/LGtWZDTAmsHDgMY08jruxspRlfevOFAw/nYDr55aYxFwQm4KdIpA43ViNGYP2Q+ryzsCi
	ag8qQ72rg0EW51m8g1Y6366JA1/1p4i8KFXScOeSyPNfJCmHUdruhy3rsEgbHTEgPZkwLNxAVdqXH
	QbdkObmJVdxSjf0ylB3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJX-00000001XWm-04Zk;
	Wed, 30 Oct 2024 19:25:07 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJS-00000001XUq-054s
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Oct 2024 19:25:04 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3e6075cba82so158581b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2024 12:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316300; x=1730921100; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OzA8BNukFWHhlgBsJYf3XljcmP8nqxT8Kq/BFuqh9C8=;
        b=PhnyHUzGwbIQ+0TQAjL+n5fSLuOV70kqK1oSvs17WFkDhOTqT0k7BqjiagChgX0vGX
         4vF1iGmy2Y9HuKp6eUfH1d9kCG6IhFLFzeNjWjW+JTGjqPpwpJdJLyW5fcyvikB0Xedc
         qIhPkLJSbO8uyhfBM9ociJhaSRduCrM2tjgQ9evfKfUxdv3EGSQJm5NvzMZymbnNHgXw
         0XbE6pj34l3wpPDu0aDgWSbLdghPfluN8O+0eTczOPbeEVk5IlXva5Hs6wkwi40hQ2SH
         un2Si6dDtlkyZh350Y7UmND7TDjqG19ZulvhuH6AySo2k3LwXY4XNCwspAJncTtlYDJm
         tdeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316300; x=1730921100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OzA8BNukFWHhlgBsJYf3XljcmP8nqxT8Kq/BFuqh9C8=;
        b=fMLlIWCb+eU8qrYL1YDFh3dF2lXwQaotNf/3kDgQouw41G/lqGDeeazwbrEzHrpwNk
         pk10AxdHM0FJiL8Xs1G4JE7YNE6h+LH39VDdZvnkuADFkf0VBUfOrBmjqpsTQaom+pqa
         XnDHcyuA3gSTJOZPuUsgU2uJt/DfagVhZz7+c6iEwOtuospcHwbODOEdD29R6JEM5Eso
         5RcB6F4v/iYq+1VCpHcaBrz5SARIVx8wC3VpEPc7Tfixy2L5PdOyuI/9vIXIFLriYTg+
         FmC4UGSU5T16rEahQoJH8mHjhTgUuN9fvjby0d8eow/59W/Qjb67HnBpfn0j3K9R0W1L
         b1LQ==
X-Gm-Message-State: AOJu0Yx3CxAvUXpbn1ANs1CGujWOII7T7VHggCTrnX81W/UtFLCAJa3r
	GCh3/xbWh7lBeEj4ZMP395Ly5kAVkqdhKskIIfrZwtu9eN290Jv/kbrwdw==
X-Google-Smtp-Source: AGHT+IGDjIQHAz86Sc2E5cyg3CMl4OU1oTgIFtLtOW/7+bq6Y16R3i+Xck+yJAG0957Za+Capduq+Q==
X-Received: by 2002:a05:6808:14d4:b0:3e6:2464:9f50 with SMTP id 5614622812f47-3e6384acac2mr14489078b6e.43.1730316300497;
        Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
Date: Wed, 30 Oct 2024 14:22:36 -0500
Message-ID: <20241030192236.839105-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241030192236.839105-1-macroalpha82@gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_122502_779498_6371D546 
X-CRM114-Status: GOOD (  11.26  )
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

Enable the HDMI0 port for the Indiedroid Nova. The schematics available
show the hdmim0_rx_hpdin is connected, so this pinctrl is enabled in
contrast with the other rk3588 boards.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 065d44735001..7272aba998cf 100644
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
@@ -247,6 +259,30 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
+		    <&hdmim0_tx0_cec>;
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
@@ -924,3 +960,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
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
