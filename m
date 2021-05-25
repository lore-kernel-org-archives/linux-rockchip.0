Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E1DC2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:48:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28898610CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:48:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28898610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QESD8t4oZMjifktc2lmZgfD05bi2lUBv1jf0odCIDRc=; b=KHFD63mgRJOBJk
	lVmtnWc1KwPKvq8t9IqwZCwM7S9qLLRYbFdYpvtTMoulVcrTcD1mWgcnercGHK2xFqGadoYd0gYWE
	pdtj7QGpBGFs3XmqBY7yPN4l8GPEOAa+qjX9I5Tm6VfMqOwcKu+HDRPy4NyMD8BJCIw74QrhejfvT
	Ucphs7IFSr48Wu+vX/YpZOmnyexJBr9wuQw/zH5fAcoFJ2G0h1RV2gl45O2hHcUge9HD1w05lPN3K
	u7vW29SqkXxdoWhtZPANbk7Thqs9F2pFTw5WmlLRI53kd3ZiJ6fqhxvJr+MslxE3hk437SMp1ffZr
	pSzY23cmcuRCm4MQA2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZI5-0068VG-Ks; Tue, 25 May 2021 15:48:21 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtV-005xRy-Pr; Tue, 25 May 2021 15:23:01 +0000
Received: by mail-ej1-x629.google.com with SMTP id i7so30116198ejc.5;
 Tue, 25 May 2021 08:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ixCuhkxgjGYv26vAQhmjGOwIvZpVeA5pt5eYFotcBs=;
 b=DB8Wur9B3YKbvG95JM5U+vC+Vc6lHhFHFLWiCmKUjyjroTtA22QI/wE0qNw/JjK4D1
 qbkL5TIOzqNJuksGZ9TmQaMJ4mo5y504eQuUMRcI6qjskGzvSoDd9/CIhEXtzDpchihL
 FTGCmEgc3ZGpK9SEqkjrcOW+tcsYLtjJjqe3PJSg12failQUsuQKZKOKMcGwT4sLtSn7
 KCOwrPU8MVou6v5bES9sv+/n8zJqPteBeSgzrVCvO7laRQl4cNKOCbF/MduI/4j8QEJc
 Adu2hmnYl/i5oO+gsRIokZlk4h7DK69pGI3sZsbwqAs3fYcuzS0/UnapTrkZnPxbRcR4
 MA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ixCuhkxgjGYv26vAQhmjGOwIvZpVeA5pt5eYFotcBs=;
 b=tNrY34sCxb5SDQnLnHB1oRPgOxLB6Dpewv5PzmHAl5XjvnDlcttcUGOcdOLzGsVQEN
 P7YCRxkLU48NTIBTFiHsEk0m6HrGf1Akjk4KxnvJTkPQWsg6OfYtWUmmhz+wF96cPK3E
 yabvNeARqY7PhSrbDwxB9mtZkXY3etV4h1JFJ6qpiRfX7yi6OSiYOBSSIWzTxStBFuiT
 Bd4o5dSQlk7InXwutW43VAfqlenOIDVMb5CU/IW72BXg0D4qPPbtqZsyamvYu+zBCx4C
 UMF0b0o/58rffY2p0cT0C123TroWi0QrxX43LAa7O+lJ9fUVV8m8tlwLChIpRlPh2+zn
 RxVQ==
X-Gm-Message-State: AOAM532JfiUQojZBr1rCQ7zG1pk09k4Rg7kkGw0UTPF61lIMbL4Bx4pI
 pob+mXr2WvIatzsmP69W4Hp0msfP+sLP
X-Google-Smtp-Source: ABdhPJxBH9jYjC4YpeA7UcQJQXz/aX6+kXeGggQ/mN6D0rwwD0nlYm7Hts6QL1q2ZG0xKF5BjUGuYA==
X-Received: by 2002:a17:906:ce49:: with SMTP id
 se9mr30130211ejb.92.1621956176154; 
 Tue, 25 May 2021 08:22:56 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:55 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 06/10] ARM: dts: rockchip: add vpu nodes for RK3066 and RK3188
Date: Tue, 25 May 2021 17:22:21 +0200
Message-Id: <20210525152225.154302-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082257_895024_E6E47391 
X-CRM114-Status: GOOD (  14.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the vpu node to the common rk3xxx.dtsi and only the powerdomain
property to the SoC specific device trees.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi |  4 ++++
 arch/arm/boot/dts/rk3188.dtsi  |  5 +++++
 arch/arm/boot/dts/rk3xxx.dtsi  | 12 ++++++++++++
 3 files changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 30dcf557ec33..67d54d88fe53 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -869,6 +869,10 @@ &uart3 {
 	pinctrl-0 = <&uart3_xfer>;
 };
 
+&vpu {
+	power-domains = <&power RK3066_PD_VIDEO>;
+};
+
 &wdt {
 	compatible = "rockchip,rk3066-wdt", "snps,dw-wdt";
 };
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 3a0c50026b07..9d982bc0170e 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -802,6 +802,11 @@ &uart3 {
 	pinctrl-0 = <&uart3_xfer>;
 };
 
+&vpu {
+	compatible = "rockchip,rk3188-vpu", "rockchip,rk3066-vpu";
+	power-domains = <&power RK3188_PD_VIDEO>;
+};
+
 &wdt {
 	compatible = "rockchip,rk3188-wdt", "snps,dw-wdt";
 };
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index d473552e8547..e974b49cff1e 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -50,6 +50,18 @@ gpu: gpu@10090000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@10104000 {
+		compatible = "rockchip,rk3066-vpu";
+		reg = <0x10104000 0x800>;
+		interrupts = <GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu", "vdpu";
+		clocks = <&cru ACLK_VDPU>, <&cru HCLK_VDPU>,
+			 <&cru ACLK_VEPU>, <&cru HCLK_VEPU>;
+		clock-names = "aclk_vdpu", "hclk_vdpu",
+			      "aclk_vepu", "hclk_vepu";
+	};
+
 	L2: cache-controller@10138000 {
 		compatible = "arm,pl310-cache";
 		reg = <0x10138000 0x1000>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
