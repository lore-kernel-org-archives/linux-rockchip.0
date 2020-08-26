Return-Path: <SRS0=0IO0=CE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42704C433E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:12:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0429D20737
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2020 17:12:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="SKDfIe0j";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P8qHUgT/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0429D20737
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vJSGWX9CIwlPCMGznjGvubH4PTc7IxzrOvgho/1JJlM=; b=SKDfIe0j1fFyCOsY9YPnCMRGX
	motVxNxJ/zFkY9VLl+Mto9Hrs80VfmqqzDrMuAEP7oyrUcWc8P5r2QaPHYFPDdu7DGri/8Y3AZwtx
	DgRnJN9kBlAZ9zt7/3AIIwSwrDA6iM5ZU7CFM4lPjYLwig9pTaoB7GWT3ObNeTGALBeI70P0ej0lP
	TNoxPmABZHxb52UL+GAaiYdFyHoUGnOevnkLGEPEm3q32iyNkeoESMxZo4lznOijOsEVj23qK1GZZ
	j5PCxnsr19v1NELzNNODe3wM4Rjzh+PTaJtJVnykyEiMqIzh1TzQkCzWGOwGSg1UVj0LRIxhgkHrB
	s7HJk701w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAyyg-0002mj-8w; Wed, 26 Aug 2020 17:12:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAyyY-0002jV-PR; Wed, 26 Aug 2020 17:12:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id d19so1359100pgl.10;
 Wed, 26 Aug 2020 10:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pWsykbGqpNMPIeS7QNwd3DXqT62rEDsUA7ZuK6mgUe0=;
 b=P8qHUgT/f8YdQmri0xIKdziJ9BrKLY8EfuwXZP+P4eJFebIj1t77notUk34Cj2fsDz
 +RGw/2XWJZ4uriB+kRhgSapQjqCiKIzRv4ZiXg08MVw2OY8RwEep7vDFRpCZqjaFbMWQ
 J5Eyuo6ttyknfG1Bvc8/+d7lgInTRE75WVJE5E9ieWf09+G2lzeb9ietAY3XWJRSYW9b
 lHyjl8NvMBY7y09OfeA/kw9bsY6yrU4xnGPkqFipGV2hcIOAxEimXoT+tXUf8itkTWbw
 nvfIituZBRqHF58AL9l8UONAO8kOujGjvPeyrKeAb3ViUDE0ae5xIYOE++8uPd7F1bOL
 EyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pWsykbGqpNMPIeS7QNwd3DXqT62rEDsUA7ZuK6mgUe0=;
 b=e3IWJLFYn4AcEcrdz35gbmTIdGmtDVfxdOpik0eyxdjK1LXchSs5xGrrs086nm3c09
 PVmLHFLXKPF0BpJkF8nXVHXq/ZwIRM0tet+0s7T7andLg0bsSKkQBZdAzmlXCmV/tGX1
 nBEkH/BxNCMWs8d4FmxcrlKeiK4MF2OpEVM1IEwtky5vMHQyBuBgEsGv5+Gli5EeD4Ar
 fReclIuPh2FMgcVeDPvQQDzY3l0c7PjkrppXkMYCp/wC3O5XL59GGCJS4BhAMVGjtRbU
 h80kxPVnI1QUMMLtqblhA9M1qO6QvYIYvYD/1OGJ4ZGxHqayLx62YmOXrHtpOu+qGiWH
 PH1w==
X-Gm-Message-State: AOAM532VH0ycoU+dUIxFiBI84uJEkxaSltiRQnXmJKQc69oEZg+3RykQ
 jbvmfFuElPnR0bxB1N4TWZo=
X-Google-Smtp-Source: ABdhPJzt+yaCKzMdYl1Uj7hSMNvSFk2qRYcVY1aIh0m33TdWEHtaHj8uxb3pEdTD3pOEXLiaDY/JKQ==
X-Received: by 2002:a62:52d6:: with SMTP id
 g205mr13357990pfb.144.1598461959475; 
 Wed, 26 Aug 2020 10:12:39 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id z10sm1957870pjt.30.2020.08.26.10.12.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Aug 2020 10:12:39 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: rockchip: rk3328 usb3 controller node
Date: Wed, 26 Aug 2020 10:12:29 -0700
Message-Id: <20200826171230.17041-1-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200826170623.15469-1-travelvia@airmail.cc>
References: <20200826170623.15469-1-travelvia@airmail.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200826_131242_834999_61DCF5B1 
X-CRM114-Status: GOOD (  12.11  )
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
