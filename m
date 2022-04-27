Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46540C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 22:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xq3qekcEg9geP0hBnAmDM6lqDsUMtrwQTGqEiecfjz8=; b=TOwR9Zh/VraDXN
	X+NFKUFkGPiPoW13oJBRhsPaCvN6WTrG5fQFWWDoRakQeGl6PdChjUth1gYUWOmkVMwL2Y3LeFevM
	E8N94It3qjbswX0tdfTmWPSglDSyASdOF6qWnuuPA4zsM0qFAkRhTEZkTg648hl6hYA0kxTwPq1VG
	SbiizkSReFYYBSW9X9YuxU+Rofc8H25I3XMhFE4ADwqQ6+2zxBOB+mxGxVPv6VppPjR5K6zQ0b5uh
	7F59QEH28kNRjBp64EJcshY5jP1MeKp+fU3bJznMYHkR1nMqJtrGTCABbrTQAOlVc6cryMsS+uOAU
	pyk2kdDsAi2KmQmeoLHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njqQL-003opl-Ci; Wed, 27 Apr 2022 22:46:17 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njqPs-003oZt-9q; Wed, 27 Apr 2022 22:45:49 +0000
Received: by mail-ed1-x52f.google.com with SMTP id z99so3553491ede.5;
 Wed, 27 Apr 2022 15:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=okSCVW6L9a34IlYWN73Yo/cqzfL3+UCVtrLqSo2aTpU=;
 b=VyANRZ/fd8iCMPLNuxR0ZdOBJri3vl+dxRpNFPNquueLmI22pt9z1CufLP/RCkXqBU
 HE12KYCU7tCdTdS3MgP92myFap+2Qhpo2234wAoziCfC3S1iemkiDrGwqB5vRqWJaZfi
 k1sFXfrF4Iib9dchS73RcWhVzyzNKdhFlupxPTlrrJypPWNACuLGxEni82BSSwO7fdZC
 0eJpCrVmILCL49swcmkPA0pbU7xhtF0uuPEldPw83lgfJ6mZD30u/FnzvBTwazqgsd++
 H2RaOrmUgEDLgKLsRINUb/PL6So+DvxhcTLIZtn8A3VHJwwUNvs6jsVpWoxGVKA76j3C
 qxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=okSCVW6L9a34IlYWN73Yo/cqzfL3+UCVtrLqSo2aTpU=;
 b=HNxMzNf1tr17Z3MVO0wltTYOjeJftVfiSp7tUlQoSoYf8cnDgs3VLrNaPftfA6Je1G
 j6fcZR7KL3L9h9RXmEB1JCSM1vWd86DsKczmISKKqFu3yVEmWDI6i2abE3yENdmTbdDr
 bfAhuSkLnVUJSOVF3bDIO1MZCJiq6fp1ruejVbSGCxXUP8QVf0eoNZC5JgSiD9NgqziO
 /IHd0kTw+t/PMJRKiutkaHdqHbpy9Q2GxzbojF3tn6WExQ1m8CIfmzTyINHLeRMPum0R
 5EjOZb41+Kv3uX65lHvCMuUoysik+jDb7Mkmq5vewr57R/r/jFlsyg5K2TFIuAsEk3kE
 Z5kg==
X-Gm-Message-State: AOAM531qxbbwNSwOuyG1sjuQMeAg/DhTs8oIolmUhNc8iaT8UxAKmWXC
 5599Nt3UzrPCGEIDzeIHIJQ=
X-Google-Smtp-Source: ABdhPJxuX/e930JKFnJ2zC30aKyv2otNuL/qGXSH74OgjR0UxhNtPyRDKxd10Peu7Gb553HbllMRbg==
X-Received: by 2002:a05:6402:1e8d:b0:426:9:6ec with SMTP id
 f13-20020a0564021e8d00b00426000906ecmr9938522edf.55.1651099545994; 
 Wed, 27 Apr 2022 15:45:45 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 t27-20020a1709063e5b00b006f3a94f5194sm3762594eji.77.2022.04.27.15.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Apr 2022 15:45:45 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add JPEG encoder node to rk356x
Date: Thu, 28 Apr 2022 00:44:38 +0200
Message-Id: <20220427224438.335327-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_154548_399123_44136F63 
X-CRM114-Status: GOOD (  12.57  )
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

The RK3566 and RK3568 come with a dedicated Hantro instance solely
for JPEG encoding. This patch adds a node for this to the device
tree, along with a node for its MMU.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3c..276b76d5f3fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -508,6 +508,27 @@ gpu: gpu@fde60000 {
 		status = "disabled";
 	};
 
+	vepu_jpeg: video-codec@fdee0000 {
+		compatible = "rockchip,rk3568-jpeg-vepu";
+		reg = <0x0 0xfdee0000 0x0 0x800>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu";
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vepu_jpeg_mmu>;
+		power-domains = <&power RK3568_PD_RGA>;
+	};
+
+	vepu_jpeg_mmu: iommu@fdee0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdee0800 0x0 0x40>;
+		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RGA>;
+		#iommu-cells = <0>;
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
