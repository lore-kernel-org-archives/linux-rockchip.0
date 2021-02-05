Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 013EEC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:41:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7687B64E50
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:41:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7687B64E50
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VCmjU/ZD/HGe4mKI27sHncC4gl5rKjN96TI0xNFsQQg=; b=HN6F1QYPwi0ub+iRN9x8y8VEvR
	T7q1grXYOW+3Dw4N3VUT+4kSIB7PrzdP2GxPbS3HGavCRmnfU5zVXB4dtb2g39S838bWDz4KHjk70
	ji0RAbl7Iktrx6IVOJjAHeBJQ0FBKh0/jJkdVOiYJ7PvQy5861fNi7bpqpRYjwJtf6LRegBoSTxqh
	RBSL/W4wwoBvZczwjPWG1CqkzLE+7JibRsdXIGgx0vFwOXqPKJQliyL0WGcaDDAYFob47FmQz9MA3
	T2TE5LU7BMCGgAvNbnbmNqtpByHpsfegHgh2rOsFXRJM9bEZmScFT3aWKMC6MkfP5tz3bQcqcY3Mf
	JxqbD+vQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTs-0007fq-Pa; Fri, 05 Feb 2021 11:40:56 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTZ-0007Z7-Ps; Fri, 05 Feb 2021 11:40:39 +0000
Received: by mail-ej1-x62b.google.com with SMTP id f14so11438482ejc.8;
 Fri, 05 Feb 2021 03:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CZhB/NEJnRkF+TAIIRVQHf9Sf3lp8bbtJmnwDMjx8Fs=;
 b=qZ/94xf6MG08r4w7hVn8z1SwUqu0COFjxcj1qj0P3OkbC+LKT7JTnh3x0p9YGT7OUc
 4NOzhjzQnZ6byKaC1vtwHoYv62/LmhnuXair7xSkE1a1zz77fU9YaGO0d7LL3MPhjWyk
 60IKWrI008ayInQLWynwUb0sDlOH11ke2R7SQdS36zmcclXcmXAZ7LVGbtoijpDwrTTn
 n8s5NYhkhtXPsjVj4sEFRcTxFSSvdNsaRupVOZdtcADKhe0FYMbCgLuVqgXKGZlpGgeT
 ltCPh6RyUF46RsfwBtWV6KFBFASk5qPI32TwC69EaJB8etHQRRYvCynOUkDMkbz42EVN
 6XNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CZhB/NEJnRkF+TAIIRVQHf9Sf3lp8bbtJmnwDMjx8Fs=;
 b=LH7it5D2IUeHOw0VvqSRsFDF5gKP67WfDShGNWk7Y/NC9lVKCVkmhjumUbMc3Eq65s
 iYdt2CYHm2s9SHlugawcvmfHJ2F1D8GvXJITm800H/97FS1on9/hQssEaWOBJwaH/Dvi
 R6DwuXtacJrl5NLKECOkOLJUhzQAFF1zKBPCFaGPGCiiqBV5nGNlltMChaadBTpOrfZ/
 LzKe10H6Ug1fLOQS33oFwq4k4KpckHijifsKEvvUuByywLz47pB6W9mBd3pddta97uSe
 cdNkbFHZzIT91GI0hxPRQ6ZsEzyEjXvynS1nTCZo5lWJ46pXmskZK1qEtkERds61nLZy
 noqw==
X-Gm-Message-State: AOAM5335lbe+LB/SQD2tlYoQ5pPbN+E45fxjHQSCOjONzEaFa2+LEt4O
 Z38JJTzK/qge51GD8zICCQ8=
X-Google-Smtp-Source: ABdhPJywtesZHFp+KrSzQp3X9HLOTFBmKOJ78T5WeWs6ktXQP5xkxzl7wAKVwq9a9f59wFqjUIxjWw==
X-Received: by 2002:a17:906:24ca:: with SMTP id
 f10mr3567882ejb.96.1612525236366; 
 Fri, 05 Feb 2021 03:40:36 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:35 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 7/8] arm64: dts: rockchip: add rk3328 dwc3 usb controller
 node
Date: Fri,  5 Feb 2021 12:40:10 +0100
Message-Id: <20210205114011.10381-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064037_944551_67DC1C0D 
X-CRM114-Status: GOOD (  12.08  )
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
Changed V2:
  remove node wrapper
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
