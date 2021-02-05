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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FEBEC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B184964E50
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B184964E50
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QiYk2YeneAxknBvp3qBqvBvwBcfYMZZYvQx3PAI/uBk=; b=d/YJuzZosA6JLQspCn7DwpHXmA
	wvzlZ1mqD47OX0ckuKZXv2no4p860cM19gpokHIYYpCP1JdpxVasRuX+hgAh8j4FhERrH2gBySKXH
	V52lN0AxhWtcoMPmMiTGbswKEC7muMLO80kWktJUHqimn5n2Z3H46apP+CqtfbuJJJk/VqWjivtBR
	f4rE2K+j8cLb+/e04GtPPaV4fRXQPy/YDmzD0sHZY2I0+1AdluWjDSGNb5Qbckei0c3QOiVOzu3ZO
	wuzW0HBLLyl+YAHAfnDZTb7u6Uiv0S0u7R31upwzhhGbpNWSl3sa3k0NTwDBlYVWoQ/PLocj3xLLV
	kXLhKgDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTg-0007bP-KY; Fri, 05 Feb 2021 11:40:44 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTX-0007XB-2x; Fri, 05 Feb 2021 11:40:36 +0000
Received: by mail-ed1-x529.google.com with SMTP id c6so8510564ede.0;
 Fri, 05 Feb 2021 03:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r7BU1Ua7cwHe6jzoj7pIEXXpfnh5K4Y+YXR073vkvQE=;
 b=Z6bbrwsNpO/ZeSnGLip4AxmNeJckL2g7oY6Q7WV7MVkO1Uaim4ltCevLXlLS6xk2ip
 jOZ07krO/4RG/E2JmyqrpyXCV43RwQ6TnXbvzN56hNdLiz9/S8MwdKNmYmuvRCc4CswZ
 A33/u7/I8zwnUfXfl5sNVg6ewx6yhIshj/lUXFnB3xrUV8QTaSS+U/3qh/1sGdJn/s49
 3MfmM9KDyXk5NjXr/1ePbmpG4ONq2AaK2AuGrZfuyZ0K0KRQ5mhkFVi2JH1tBsIKeT4B
 SJc7HVf8f0MswsmyRffLW35/hZjnPwT7dGPFWfEZ1YcoEZtk7Kxb8iGKdJCOeLHa8MCC
 HjWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r7BU1Ua7cwHe6jzoj7pIEXXpfnh5K4Y+YXR073vkvQE=;
 b=jSUHJgGRHlE0R1/uVkq5FksIQkucjK+suhGd1Dhw850adSDzL+iWmw3CtwRjExnLcm
 G+oqu+H2/zDrFG6A1z4TC3ycGRHCmYuXkoDYQzLswLxnO6WfRDgXnxjVxjpj7WThja7E
 BsqhysKkucJqmNdtmyobHm+eKmAR6pprVMAiJ+e+MEArL++pAjMjfqi1wbdii1o/VMrk
 4yAhtu5zpdhXwXKKMnCR7coNUa/kysQBTFwMmoQ/V3Z3tMjwQUm1bOp7kjQDG5lmMdhO
 2nAmC6XKC8jsvKoqScR/gbg6NS/EXmc0AANLhjUcZA96Ykq7yHTZF3tyXhgeCL3ogyez
 NixA==
X-Gm-Message-State: AOAM533CSenHQCgPTPc1dbDa2cJ9nDpmx8DzECYw1UX7hgBZqGpb9HYO
 KSElYCATJpNBAG8Teicr4WM=
X-Google-Smtp-Source: ABdhPJzO6PxNSVIAJrBNk3kwDhZZF+RCVwP3cs/j3ffeO9vWGS4tjhnCj7QpNnipfoT/uzRpH7kJBg==
X-Received: by 2002:a05:6402:5207:: with SMTP id
 s7mr2974663edd.311.1612525231783; 
 Fri, 05 Feb 2021 03:40:31 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:31 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 2/8] arm64: dts: rockchip: optimize clks for rk3399 dwc3
Date: Fri,  5 Feb 2021 12:40:05 +0100
Message-Id: <20210205114011.10381-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064035_160125_39E4684A 
X-CRM114-Status: GOOD (  12.52  )
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

From: Wu Liang feng <wulf@rock-chips.com>

Remove unnecessary clocks, refer to rk3399 TRM, aclk_usb3 is the
parent of aclk_usb3otg0/1 and aclk_usb3_grf, and we will enable
aclk_usb3otg0/1 and aclk_usb3_grf, so don't need to enable aclk_usb3
again. In addition, the aclk_usb3_rksoc_axi_perf clk is used for usb3
performance monitor module which we don't use now, so don't need to
enable it.

Signed-off-by: Wu Liang feng <wulf@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 04f7cc5c3..b125cac89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -399,11 +399,9 @@
 		#size-cells = <2>;
 		ranges;
 		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
-			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
-			 <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "aclk_usb3_rksoc_axi_perf",
-			      "aclk_usb3", "grf_clk";
+			      "bus_clk", "grf_clk";
 		resets = <&cru SRST_A_USB3_OTG0>;
 		reset-names = "usb3-otg";
 		status = "disabled";
@@ -435,11 +433,9 @@
 		#size-cells = <2>;
 		ranges;
 		clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
-			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
-			 <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "aclk_usb3_rksoc_axi_perf",
-			      "aclk_usb3", "grf_clk";
+			      "bus_clk", "grf_clk";
 		resets = <&cru SRST_A_USB3_OTG1>;
 		reset-names = "usb3-otg";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
