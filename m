Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35DD1C47080
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:50:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEC3D613B6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:50:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EEC3D613B6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWYWdF/AqEI8OIhIhIs/RyqCu3Hc5BmUV5P0TPSkYKY=; b=3Qr+9grlDhQ+C2
	1zKxwKc4heSPAZVIIoQzswNFe7E1wpkhozh1X8MxY9LaX16xmFxv5tPYdhDllVwB3maEUqgIJYmTA
	fl3HOwEjntwmI1Z8UGfAMuv8oZw4RJrRfoe+L0rLvadIpldSPYkfI0mYmAfuxZZOA5hcYmF7T2Cof
	s/SbBTalroxx+0TVHQXQr/p53mx3mSGDAO/2fJ3MjHSlzfjVleOsdLmGVfddDXKRxEsZLxKRYJ1U0
	kq0tNl1gx+/4Lw1HEWX0WFAM9Y6RiEYR9P2Rv0KSoOq6236+AiZ1UrQNyycFeIgQcMPn8VLSGKDn0
	Z1kA8/np0rO6aabEDJhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7ab-00HYLp-9g; Tue, 01 Jun 2021 16:50:01 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Yw-00HXVP-7e; Tue, 01 Jun 2021 16:48:19 +0000
Received: by mail-ed1-x52e.google.com with SMTP id j10so18172260edw.8;
 Tue, 01 Jun 2021 09:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=B8yrT0K2LfeXhIzhR/5QWBV3kbYfUc/He2mmnHviDt4=;
 b=jA46gtlB32jvqbaHFH9jvsdOlOHKjWDjyRLRCJcEBBCKrBB2uCTJZMeJkkuy1uF7M+
 3TmncLhd5DOkG72wA9Rd8mmT5+m2Se1i2OIabtgfaFRjV8oHI0VvJUONxpKYZ7iysIR3
 3Y70T1sHaA889A1Usd7AmaAeWq/0DuWn8FmZFvBEK5cYBvUZ2Q8ip8F27RnoAA+Nw8iE
 WKkxKoWOIofMPLYWKViOqLq7d0CJKEsVtQmjHUEeRK4mL5+nHtPyhT5F0Ofi6tM1/Uku
 MayRehNB9R1KjmTUaA8yspDbFysFCiv4HDzvM/SV6GPz9GRBIf4uJFHNLzMwYSEdH1tJ
 SjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=B8yrT0K2LfeXhIzhR/5QWBV3kbYfUc/He2mmnHviDt4=;
 b=kf2idLUoopd8oL/bRAgfQOEKLaYLHPcXmwhWfgPFybQgyPSqcm5qZhWxTEJVsYpwXf
 XdJkGkvOLumLaL/JbY3cLtrrPLjJBqWM+u2y3I0IqmTL4t+NA5+64qWCXZ6NMFRqmyhj
 sdq1UJ6R+zX6jNxfwu7EySLdGR1PtvKfRg0n8LjN6oNVmbkXQUJXVe3562ehYj4Zrv9I
 NP28LcebtZ5dFh66dBTwzwbANHglFFXtzqzxv5ZkfQGfOZ7sPO4j/QjmZpn4/HjMyxed
 VbJ+2bMYrsILONPQCfOp0+7yY6b5LhOboZLF93ktWI9FICG/GC/8WeFaW4qkhjXhaYyb
 JeNw==
X-Gm-Message-State: AOAM530MyhLpV9Fawt7IW3gZY1xYTdRxwDho3EooJ8QoGjyj4Z5a3MmL
 rPlKk6ojpIqIH1Wh7g3K4xk=
X-Google-Smtp-Source: ABdhPJwYFb76+ATm+1vcRtbPA1ti1sxM+CUyTpVJbs5DshpTnTSjevMP61I9Rp6PBQKTVhgIVA5Llw==
X-Received: by 2002:a05:6402:40d0:: with SMTP id
 z16mr34296115edb.104.1622566096823; 
 Tue, 01 Jun 2021 09:48:16 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm8327750edd.3.2021.06.01.09.48.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Jun 2021 09:48:16 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/5] arm64: dts: rockchip: add USB support to rk3308.dtsi
Date: Tue,  1 Jun 2021 18:48:00 +0200
Message-Id: <20210601164800.7670-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210601164800.7670-1-jbx6244@gmail.com>
References: <20210601164800.7670-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094818_318734_B56DF4D2 
X-CRM114-Status: GOOD (  13.85  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Tobias Schramm <t.schramm@manjaro.org>

The Rockchip RK3308 features an integrated USB 2.0 phy, an USB OTG
controller and OHCI/EHCI interfaces.
This patch adds all of those to the RK3308 dtsi and thereby enables USB
support on the RK3308.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed:
  restyle
  limit grf reg size
  change sub nodename
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 74 +++++++++++++++++++++++++++++++-
 1 file changed, 73 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index b815ce73e..a185901ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -164,7 +164,7 @@
 
 	grf: grf@ff000000 {
 		compatible = "rockchip,rk3308-grf", "syscon", "simple-mfd";
-		reg = <0x0 0xff000000 0x0 0x10000>;
+		reg = <0x0 0xff000000 0x0 0x08000>;
 
 		reboot-mode {
 			compatible = "syscon-reboot-mode";
@@ -177,6 +177,42 @@
 		};
 	};
 
+	usb2phy_grf: syscon@ff008000 {
+		compatible = "rockchip,rk3308-usb2phy-grf", "syscon", "simple-mfd";
+		reg = <0x0 0xff008000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		u2phy: usb2phy@100 {
+			compatible = "rockchip,rk3308-usb2phy";
+			reg = <0x100 0x10>;
+			assigned-clocks = <&cru USB480M>;
+			assigned-clock-parents = <&u2phy>;
+			clocks = <&cru SCLK_USBPHY_REF>;
+			clock-names = "phyclk";
+			clock-output-names = "usb480m_phy";
+			#clock-cells = <0>;
+			status = "disabled";
+
+			u2phy_otg: otg-port {
+				interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "otg-bvalid", "otg-id",
+						  "linestate";
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
+			u2phy_host: host-port {
+				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "linestate";
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+		};
+	};
+
 	detect_grf: syscon@ff00b000 {
 		compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xff00b000 0x0 0x1000>;
@@ -579,6 +615,42 @@
 		status = "disabled";
 	};
 
+	usb20_otg: usb@ff400000 {
+		compatible = "rockchip,rk3308-usb", "rockchip,rk3066-usb",
+			     "snps,dwc2";
+		reg = <0x0 0xff400000 0x0 0x40000>;
+		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_OTG>;
+		clock-names = "otg";
+		dr_mode = "otg";
+		g-np-tx-fifo-size = <16>;
+		g-rx-fifo-size = <280>;
+		g-tx-fifo-size = <256 128 128 64 32 16>;
+		phys = <&u2phy_otg>;
+		phy-names = "usb2-phy";
+		status = "disabled";
+	};
+
+	usb_host_ehci: usb@ff440000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xff440000 0x0 0x10000>;
+		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
+		phys = <&u2phy_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host_ohci: usb@ff450000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xff450000 0x0 0x10000>;
+		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
+		phys = <&u2phy_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
 	sdmmc: mmc@ff480000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff480000 0x0 0x4000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
