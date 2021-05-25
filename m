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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E35C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:50:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CFAA610CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:50:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3CFAA610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kO80gAVKcZMRghXjxVXNLS2EcEABVZGshy+5VNZHPsc=; b=rcEI1sbGLB5Thu
	PNGZZYcQIwkZaPVqdJ7fgTZq8XE+s9dju02CChPdJVYvC71VAroEgx0brU5EdW2rPuBI5Gba+60ks
	5hlMSU0HYtrBCFJtW9bGpVnz2blD0rYeBbj2bvtzZ7g96oPVX1+nOWL4o8GFogKdoqLmum08YfUmt
	WaahwiamcN0A07qqH7w5UE6TcrIXb6Z1UNW1Lxc7s4MmX/aMiG14yrfl+zF46AkwipPXlr55B70LO
	mMDAPa74PQncxm9pExw9DTqLRJArmawsj+49ryjodBwr2NUAYee9Xfl57PN9OaItc1kGxtpdh4TkW
	qHJWJCA6Lg8BSQj/ktqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZK9-0069Qx-HB; Tue, 25 May 2021 15:50:29 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYta-005xWV-Mn; Tue, 25 May 2021 15:23:04 +0000
Received: by mail-ed1-x52f.google.com with SMTP id df21so36741796edb.3;
 Tue, 25 May 2021 08:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6Q58oNfdPoNizxHxGHMRtWsl8A7XLb0YSPcOPFqG+RU=;
 b=Z3B7VRrHXX2mPOIGKlrTfuADjdkWuDL93jq4HIGaHP5DTpqDuGHhRikQHgdzS6pWIQ
 km7HQMDDDA9DPk4ihKVcJ21N501vok9fkw+XU4fvZa7Mo4mnZjPoTlYGgWMygeK7W1/E
 vkGVV1/rneQ7S14fybK2Ce5HtK1oD7v8KDyC8H8pOSqZUolYWSHdQ7jhZV/sVw3RNdGy
 b/AgQqWij6rMVptGIYTehULp8sxawF68dJyNk9AGdfWHkVkgaV3ZI3V2eA4BTLE6TDgj
 gqcFscCMHvR8xDv1jJc6iwMfiu3EITI/K6VRDhWa5pNQPW+cG09wAHRMbb4yJ+q8s3KJ
 FOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6Q58oNfdPoNizxHxGHMRtWsl8A7XLb0YSPcOPFqG+RU=;
 b=kIrV0ELpocxiKsY1qb/dnd4JwEbcrKWIkORpyKvOY6RV1XDiVBC2xZINYdcMwnNzPW
 H9ju+o6sVV1rzfA0sDDNWopDSdPPS7g+bPx4lE4QKS8Xsl/a3tVfPHXUW+i46N4jdSHm
 wtCx1kbd74/BZ8acvTsx/ZMWLu0u11hjSVeaMZQLczO59WCtSrDidsXynddiGdjo9HMJ
 ojwlKhK9QA18AreSbTQ5ExCbAdEdRH7MLbw9vEEEmwgmQSU2LpLhCwg8jeHIiXJK+CkL
 7YzhOYgZGFU4v3wB7+gss1KbXiwNFFRq+H8gTw6nCPNJb88CBdBepDqhox5cMjyVgMPv
 2gqA==
X-Gm-Message-State: AOAM531OP+V0GvDUtvGX98tHkzarPFPN/4EHjKwtXtYiPfRTLrCYK4VG
 CJEQpfIqSB35vHvLMtEMqA==
X-Google-Smtp-Source: ABdhPJxZWLnVQUmpO6P76M2RNI2+XO5GK4VruLUNs1Rnt//H4UHP+sfpl8w/hcaCbSZKi2vZ5B35xA==
X-Received: by 2002:a05:6402:176b:: with SMTP id
 da11mr32119743edb.234.1621956180881; 
 Tue, 25 May 2021 08:23:00 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:23:00 -0700 (PDT)
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
Subject: [PATCH 09/10] ARM: dts: rockchip: add vdec node for RK322x
Date: Tue, 25 May 2021 17:22:24 +0200
Message-Id: <20210525152225.154302-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082302_978442_9A427FD4 
X-CRM114-Status: GOOD (  16.97  )
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

The vdec IP block of RK322x is the same as RK3399 has and the driver can
be used as-is.

Add the respective node to the device tree.

Note: core and cabac clock need to be set to a specific rate which is
done by using "assigned-clocks" / "assigned-clock-rates" properties
(axi clock rate is currently set in the driver).

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 62d1113b7804..13c2f92ac013 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -633,6 +633,19 @@ vpu_mmu: iommu@20020800 {
 		#iommu-cells = <0>;
 	};
 
+	vdec: video-codec@20030000 {
+		compatible = "rockchip,rk3228-vdec", "rockchip,rk3399-vdec";
+		reg = <0x20030000 0x480>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>,
+			 <&cru SCLK_VDEC_CABAC>, <&cru SCLK_VDEC_CORE>;
+		clock-names = "axi", "ahb", "cabac", "core";
+		assigned-clocks = <&cru SCLK_VDEC_CABAC>, <&cru SCLK_VDEC_CORE>;
+		assigned-clock-rates = <300000000>, <300000000>;
+		power-domains = <&power RK3228_PD_RKVDEC>;
+		iommus = <&vdec_mmu>;
+	};
+
 	vdec_mmu: iommu@20030480 {
 		compatible = "rockchip,iommu";
 		reg = <0x20030480 0x40>, <0x200304c0 0x40>;
@@ -641,7 +654,6 @@ vdec_mmu: iommu@20030480 {
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3228_PD_RKVDEC>;
 		#iommu-cells = <0>;
-		status = "disabled";
 	};
 
 	vop: vop@20050000 {
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
