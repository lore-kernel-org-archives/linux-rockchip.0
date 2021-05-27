Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB6BFC47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:13:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99F7B613BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:13:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99F7B613BE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JpDUvFmq952MB+luP8824bzaKFkIo4NXLpfNLmrHuU=; b=x0sDLowvapUNS1
	HDZo6FZuzRelrL1fY3YSecBDCFJjzxPXxH6eUoBnhO/dekhTzra1tNzic6Mi5iM1UXB94a5B4m2Ez
	/ORyPprgWFRELpSsRv9TUkgnCMlTmHDzJ9j3z/oFVqFy8AMOdLgYZzJ1be/l3MheILw7tIsFJp4+z
	hQdjTncu+MYv9TL6N5sI/rfwGcpH0aqLjSfis1mOE0n7wNcTzbPfjf64PPQewjISSkQnYlOfrhLz/
	N8cAQfPGJK2a8YHwy1YhlrvIyrDDOiGRYGO86kONqtYltnwMXwMMFO4ppKv5dQE6CjnOfIxP3p2Ht
	pQPMUNJ1G7iw5OmBL5uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJZF-007ycQ-3N; Thu, 27 May 2021 17:13:09 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICQ-007KPR-UJ; Thu, 27 May 2021 15:45:36 +0000
Received: by mail-ej1-x636.google.com with SMTP id lg14so791474ejb.9;
 Thu, 27 May 2021 08:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9kGg6mgXV7FtlTslQDxVXLeRt/Pl+NMx0FiHr4993Xw=;
 b=SJSq5gDc9cJqzrtBIeoHUABqAbJXF1WgqcFwRqccTMI885ta1aFLGfTZwXfb2KJ7O3
 nJqDnUY5RqpDAUXTrkLnTkMRTLAGhLcqdzN/JgjJndnfKxdj2ZcSGjM1860ItjSIcu32
 2yce1vMAuXjAxhBpZNF8BpavC+JvUO+HL1TdURtRu48DIkAdPAfjIesACyBShvSDmUv3
 as7bLCSxEXLZMG/dbmVWmRIQ3DOna1tdcr8hC6c/YXylhLTzk9p6Hj9X6fXJthMyTski
 +Ypv3neMpHtoxutXKbJ3sJ0YMnV6bDbdH8BGnf0uSOMisaJXSGhLWynn5pDimCeBB1OS
 NtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9kGg6mgXV7FtlTslQDxVXLeRt/Pl+NMx0FiHr4993Xw=;
 b=rNx3F5ag7PUtObAJAfVqaotlXSlu9fyTzQRFK14zArUNmtx+DjrTT40vb+hMeyeugE
 reSSjJ0l2ikB2KkLJ2EGfT7oISr/Zc4mtDeeRYHVEV6OOjPZmlAiVZ+ZgxKQGoMShEzJ
 1PJetom7R/WWg9/OOVuClbAFVvEoRO6arrzAOonHuFeyAMYtiw+k+tjDeUrEfRAWkHPj
 Rwb+cZISRxomOHw7qpt/IN1xvNFBwXUf3sXrc13NDJAKXK9CaARae3c7xLNdP442+uC0
 dlcXBNXafZmeZvQYaE0P6g+8hb5aNnT9y7ElyLHqJEd1t3VFk7PEvSW6auB4i89BCYBP
 W6Bg==
X-Gm-Message-State: AOAM5305cDrqhBfWzpxcvuTCVZ2ptB2e8maRklrSWDtmEnUJfFEJJ62x
 P9QrpwcpJmy9QEvWyiepkA==
X-Google-Smtp-Source: ABdhPJzl5JDhEkcjJ1OIMd8jUhx4sOX++iKQ4claQLkF+8FKKTYfKLs16MMzLfV41QKc9wia1n4MoQ==
X-Received: by 2002:a17:907:961e:: with SMTP id
 gb30mr4643145ejc.58.1622130328207; 
 Thu, 27 May 2021 08:45:28 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:27 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/12] ARM: dts: rockchip: add vpu nodes for RK3066 and
 RK3188
Date: Thu, 27 May 2021 17:44:54 +0200
Message-Id: <20210527154455.358869-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084531_015677_AA116555 
X-CRM114-Status: GOOD (  13.00  )
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

 (no changes since v1)

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
