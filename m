Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9ACC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D9B464DBA
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D9B464DBA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U5/ea3OtYnAQ1xiH84DSpItiAyp4nJ3l5B5jwhKZrQQ=; b=gB+DdSVZA0UFI0PY096gjOWZMx
	NBS523CSEv23g0QuJSt4nc44N6YcgdDOc8UHLbI7z/KgfHS1e4r1jbCh2rwqALYAwxW1t9svYPX0B
	9qwC9xahSwUkj7vMIUbJK1bOyR+fvhGo2gpuQR4Oe4aa1OsEQ8S0i4b6j+CFjRWv6vWiir9/EUgJZ
	/YuwC7lEv0fi30x9aDKtJu/WNNSiQ/6wyeI69YqNCzsTqYltpfJzKXn1nNYiHCz/EaIe2LHU2HdG5
	ChY5isrg4lFsaSNYHu0fckFqmil/hYU6hVGCtzRADrQaMK6CLJpAD5NoERc6yrqtvjM3VwKqPrZL+
	FB3E4W6A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6f4m-0000l6-Io; Mon, 01 Feb 2021 19:41:32 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6f4b-0000gx-CZ; Mon, 01 Feb 2021 19:41:22 +0000
Received: by mail-ed1-x532.google.com with SMTP id f1so20250629edr.12;
 Mon, 01 Feb 2021 11:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X2oJ/oS9W6B6NjUjWeyWWEJnoptgHKF+k6enHUja9os=;
 b=U/v8lwUONcQVdPmXvuzDftJuNNKgu/kZIz9dZstTYnJVBjMLk//Jn9D8cQh0YhZjW9
 QniU2yKt7T6i+fXOik+J34btYypV3PLqYArdrta1pvoF0vh0XzC2yX0+eukut0IS/ZSC
 TlAXhCWmoJei5Wa6wKZ2oeUgVXZ774eFQUlUdjjhcRwrcvnTaoZDiJnW8QOn1qQ0+hjA
 fuP8375zh0z0DiLvPTRpOwFFToLepqUJHXbr27apOBCjUMbkXemrB0dORU+Bo5hCWfYy
 j8ixwlMOUyO7segg/AE5AlCmepc/dT040V0Gi9zqz0jNjVRrokOU4OaHGgHVOPZZ8ZbT
 PrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X2oJ/oS9W6B6NjUjWeyWWEJnoptgHKF+k6enHUja9os=;
 b=Df4+MliTnAkxaIKkKz77FBFZsI0j2qNlEMYKcfdPUY2IpZuhkBFXMzY4J8TqETkYLW
 tXyHvXQ2ghuvAeS+OpU7AM0YDlb1RY0cSqaLj+/X+F5tgiv/a9/LureKPrTPzb/xkTwO
 N+ZIgi27R4wQxvdDGZW/CcPqS/KPGsbnLhic6wzh892W6rN2rpULsprnqpME2hbNYaYD
 OsKG/AmOg8BZNvvIebv2D53/xoAdl018KXZ2vwcHnEUnk1jNC3nq4VDSdfOkknKcZ3u2
 +GM/nD0D5AfBwASw5rAULIfwEE901n/qQnSd/YxyQ2bjWHWccbmPMnnL5XN4kjcUVeMy
 zGlw==
X-Gm-Message-State: AOAM5306YOsk2zq4Xwl3rl9Y/RIhsBr0d2CpRaKCr1Y8CMSP1qG/Qp5C
 pi6Xtrx/1qjFW6kr//dwhDY=
X-Google-Smtp-Source: ABdhPJw+3+upS6Y8szLFRK1M7jQuDS+kNgSwi9O2KTrM5d/ESlEqDOL9XgQ/Mnvc8ng0V8MdhhUQ0A==
X-Received: by 2002:a50:ee99:: with SMTP id f25mr9033753edr.17.1612208479932; 
 Mon, 01 Feb 2021 11:41:19 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id du6sm6702799ejc.78.2021.02.01.11.41.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:41:19 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 4/5] arm64: dts: rockchip: add rk3328 dwc3 usb controller
 node
Date: Mon,  1 Feb 2021 20:41:04 +0100
Message-Id: <20210201194105.32673-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201194105.32673-1-jbx6244@gmail.com>
References: <20210201194105.32673-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_144121_466238_0E9F7AE9 
X-CRM114-Status: GOOD (  12.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

RK3328 SoCs have one USB 3.0 OTG controller which uses DWC_USB3
core's general architecture. It can act as static xHCI host
controller, static device controller, USB 3.0/2.0 OTG basing
on ID of USB3.0 PHY.

Signed-off-by: William Wu <william.wu@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 17709faf6..2bb666d35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -987,6 +987,33 @@
 		status = "disabled";
 	};
 
+	usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3";
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,
+			 <&cru ACLK_USB3OTG>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usbdrd_dwc3: usb@ff600000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xff600000 0x0 0x100000>;
+			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+			dr_mode = "otg";
+			phy_type = "utmi_wide";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			status = "disabled";
+		};
+	};
+
 	gic: interrupt-controller@ff811000 {
 		compatible = "arm,gic-400";
 		#interrupt-cells = <3>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
