Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E64AAC2BC11
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:12:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A89C42100A
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:12:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="shN5BDgG";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WxEbMn96"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A89C42100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vJSGWX9CIwlPCMGznjGvubH4PTc7IxzrOvgho/1JJlM=; b=shN5BDgGNUKCPX97qZ/A8VraD
	DuLrNxIn+HuGsmWr3VLDCq/UVacdr89FvYPPhgiIUPErQe+FRa2v3HwBmiZmXJLLIm6vI0YqbiiVV
	ORKEmLW31FzX3CUzSfJkRRIdNTG0Ye6mansOsfxH/IpKNrQEspwRUROJ7jlCGJsaKqPiZmT7WGBuO
	WY1bt5GzsjfbDGq9wVPFJab0J2aSlmbbl8z9khdqc5BhPXFpWapjgVdpbfsQfmqmit9Oo4eIFrD15
	1opWeb117kOzlm/+Ci150FJXbGZlNZFji1SARS9nEfjMVxHJOyDBzJyQ0K5W8vV8tycvLlys9JLzr
	A/R8OMQlw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDXFh-0006pG-4n; Wed, 02 Sep 2020 18:12:57 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDXFX-0006lO-CP; Wed, 02 Sep 2020 18:12:48 +0000
Received: by mail-pj1-x1042.google.com with SMTP id b16so199497pjp.0;
 Wed, 02 Sep 2020 11:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pWsykbGqpNMPIeS7QNwd3DXqT62rEDsUA7ZuK6mgUe0=;
 b=WxEbMn96nCk7Orng83K51j8Z5PKJ9KBE+VZFpMKQg1zItgEdlE5fb874SHvpQrwAit
 SsgCm9niapZV1Ckync4r6AJUaWqV7vEqU1DsPhePPIGwyYTlCfVE3d45AI9uu4F8xq95
 aGyStOm02q7L1uu5sP0lUw8mjtbCM8aWce+JU79s43HWXPsy7h+O0DsSEBzBxfLhcrOg
 K3A2dLiT1P2mRaOr45eZX/vFm8gJMMxpL3t71f3DsQDyUFl/jQR8vadSI4cIuP85j+nh
 dLOacYC/MKkd+ULJm7aFyIz7s4qXwa+06jo0VA9D3w55sQ8c7sucBBUvz86+fec6jWKd
 Y3Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pWsykbGqpNMPIeS7QNwd3DXqT62rEDsUA7ZuK6mgUe0=;
 b=grskAOB106BY8I2HSTUefJ+q3cAcQ0I/2QjdKJMI/GuKFw21mkODHf8kgCxmGErxXv
 4UnVO2FNnARbv0XAXPKy9gDyWs51adZAcnmYUweI5D8WIsViUyzzMerRiNoAStAKjP15
 GLV3PVJ2fSV1Reg9pQ+1pSo6NnWXZWt+VPchDTSQxqkId74uRGJp0UHLxagkId4pUN6A
 SEkxgF1IWc8MeQD6LJCRIb/DKEgYYcnnF+cRCyTKKFqp2801ndbBC9xeT1zavVKTK8z9
 Enw+SZDkx5SLfFlobeX1wtZcrMZtWSFPoB7I7rkomAVlK8sbczUnV9D4bCdR2viT5TlI
 wG4w==
X-Gm-Message-State: AOAM531ZwkAxHnpa80pje5pAcZFtJv/fZx4d1GtJ7K5wUuqrr6ffvL4Q
 c14rcCtqKHKz7TyfFk3jWBQ=
X-Google-Smtp-Source: ABdhPJxfIMd3Dxc0t5DBZ8DoFvzrqabA5XaOKtJi8gxVtfxxTzZWmi0Av3BLO0zZJWZGUBl0axRREg==
X-Received: by 2002:a17:90b:20d1:: with SMTP id
 ju17mr3065949pjb.134.1599070365290; 
 Wed, 02 Sep 2020 11:12:45 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id u123sm148993pfb.209.2020.09.02.11.12.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Sep 2020 11:12:44 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 3/4] arm64: dts: rockchip: rk3328 usb3 controller node
Date: Wed,  2 Sep 2020 11:12:33 -0700
Message-Id: <20200902181234.13955-3-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_141247_472071_20721620 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
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
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bbdb19a3e85d..27e86bf06d3e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -983,6 +983,33 @@ usb_host0_ohci: usb@ff5d0000 {
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
+		usbdrd_dwc3: dwc3@ff600000 {
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
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
