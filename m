Return-Path: <SRS0=CWUy=HF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BFD6C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 16:53:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B5C264F7C
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 16:53:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B5C264F7C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLG4OEThUb4XsrN3SfjfV918C/5Ww9GSztoIw6WKX4I=; b=22RvnPEwuHtIpQ0fDWs0dQL2Tq
	Zx9NmaEGRq8G8wBcRsHwHTdSox4/MZOSiSbwNms5eH51+qPBWrZEgKREQCapVCu1EXcwrYcy55FQq
	qufNgSqJY7I2ZQV2ejoy7+XT3AqWOjXIZo/V0vvHUXuPL3QNN1gehT68HVeaS2rjIHBtrEaG7ESCb
	7ieYEaeBb+drUi1n8TEl+hWGhF38N1sCFg29NNRCQgohIW3jlDU7bcNo5ZDumCSUZ/h8sDp3uZOxu
	E040aY7zjcj9irOVIvkL3DEY7OrAkbClNlujpHAOHHsObJTb+0MnbXmDsB6fV0WLcwBMrPUF0trOg
	c2G2kyeQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7LPO-0004Je-Qg; Wed, 03 Feb 2021 16:53:38 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7LOa-0003ua-3z; Wed, 03 Feb 2021 16:52:50 +0000
Received: by mail-ej1-x629.google.com with SMTP id bl23so132334ejb.5;
 Wed, 03 Feb 2021 08:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2+BJMGWHLsTX5MlRIS1oP4w6pgHVT3Wm6jubVVravIM=;
 b=H8j8elFQyAQT596KLgHEEXafZKHCs59NI9h7Ew5zGRsxXwcC/Set/ikAFksjfUGOvg
 IvLoV9T8B+qSQL788a5C/YOAuJBbrKVc32YrijLgxmaEZmgQRrjruCgz75mw73SBJOzl
 3gmWRJ9qRJ84B3akc1Zx6m/y9V8SqvskUkYRLmFU3fdLXCG1KXXXodRJyp+h+CxXvrh6
 vPqT4nZQz+PBMgWyZtjWWXCmmpYYV43myxmasY5rU/H/9uLyfllJiSNImJzVRFxH7TSK
 I4T43jEqpmClBMEC6o9f3o05lzeUQe7WV8LEM0l/Ye2odw5yFOiAlQh0+6ESx1YLbIBH
 ne+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2+BJMGWHLsTX5MlRIS1oP4w6pgHVT3Wm6jubVVravIM=;
 b=Unu8eYQnFRmIgmXsVLFc5tDiKkQfixczpLUn8gou/RPqXu+UnAr2jNZUEpvxMJU+zo
 TkgC51PyufftZwt5CZhToTCe2gE+OZ8HduMDTYxDiKc/u0C9qlKWPwH8UndPEpg4JQOl
 Lm75VxvHzlfU78fkFZfvFlaLMjEMBlP5EIrv0qIXDHAAUiRCPCYlvOUX2z++46b5FyZm
 AfN05F0zJk6l9er75kE0/MN4AWDRoqjsLWpHnwMg9Q8WKBGBGqW2dnQez1LQpejhHfYX
 J+ClRtKLvtxoz/t29pYBxegwmWLpyihaXm26q/kNS87OLaHk5BJcYnwzLpyERFVj3ba3
 oELg==
X-Gm-Message-State: AOAM533d/3rZ6v78g90RINzqEF1PiG8jRaSyl87PuNw5mxKsTUeGyjP4
 j+kfQ8HhWFKxnwIN68CEeR8=
X-Google-Smtp-Source: ABdhPJwGyqtK6IyX2vJyppK8AP4yJzS7aB6LYD1lBXXP05MyfuwOsBrgsOGj3a9AxLbcRHCU3i2akA==
X-Received: by 2002:a17:906:6449:: with SMTP id
 l9mr4287601ejn.320.1612371166492; 
 Wed, 03 Feb 2021 08:52:46 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a25sm1135471eds.48.2021.02.03.08.52.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Feb 2021 08:52:46 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 6/7] arm64: dts: rockchip: add rk3328 dwc3 usb controller
 node
Date: Wed,  3 Feb 2021 17:52:32 +0100
Message-Id: <20210203165233.22177-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210203165233.22177-1-jbx6244@gmail.com>
References: <20210203165233.22177-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210203_115248_235264_4A25DBAA 
X-CRM114-Status: GOOD (  12.24  )
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
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 4d4cd1830..a3b069a10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -988,6 +988,25 @@
 		status = "disabled";
 	};
 
+	usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
+		reg = <0x0 0xff600000 0x0 0x100000>;
+		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,
+			 <&cru ACLK_USB3OTG>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "otg";
+		phy_type = "utmi_wide";
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis_enblslpm_quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis_u2_susphy_quirk;
+		snps,dis_u3_susphy_quirk;
+		status = "disabled";
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
