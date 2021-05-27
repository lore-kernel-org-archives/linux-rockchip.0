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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB9EC4708A
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:11:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BE446124C
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:11:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BE446124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWYbXjp7mDk6l1xSZ6rnhoYGZ7mtwjBpGDdkKxFutt4=; b=yNJ8qvXBZ5L2Jz
	KQy67s50hH3c/lFvKSrO0vCtjCuwzjuj1hg+Ik3AUWk8+rEDFotfcmOdJ3NiCOx9TfH812tA0Jz7e
	JMfctHFuEiTRgJ4QuBIps9a8C8wlOIRbugB+9dj8EqCVfjk7+mCQcNUFlLzdWW42bYWm9qE2jOiLi
	Zjgsex+t/TuY2Q160GxJSFdGQ3vILI2kIjNwmoi47PBWZxFJE8wQ4vzrmcZG+EGIjoyy06cWT7NzC
	CViwPWEURAGPOhDZ5v8gsRsvTqEphlMPLvDTzAfij3AjR204UIM7cJpXLZSCHWlAF/SNLogyotzZ2
	QLg7G2ulRPx/5CzJ13nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJXa-007xfQ-R8; Thu, 27 May 2021 17:11:26 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICP-007KOY-Uu; Thu, 27 May 2021 15:45:34 +0000
Received: by mail-ej1-x62d.google.com with SMTP id e12so854074ejt.3;
 Thu, 27 May 2021 08:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yiVuliP0he9GmuWyaOUYevvuXTeSG57Lbw/1w4RCrQU=;
 b=rxQWVocCI8O6BN5wWdHVpiE6z7OUa/zjiSsggSAMbigHOaDpmiI3r6F1M21jePE5+A
 42S6nlvHPfavPtFeEJO6tacCSUHOSaZfr/ZjmGsSWfJTtaV27eE1qrjgoKWMNBLJGaZE
 HgWJwAuAB7Y+5gijnJ5worJ3wXwdl/yZQPVPYHue3ihi8fzIKziESpswEkpoONNQ+XSv
 72UNW+TerNZqTKpEROORn2x7ydUHQf1TlM83o3dGwQylRWxDk0ndr2Add5GvMNzrUqnO
 vnI/tFYbcTqtGUJh+My91B/D/VLZ0UvxRmVyoepg1FCpjfajRxlR+u0Irsjhl4YYhbaT
 IrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yiVuliP0he9GmuWyaOUYevvuXTeSG57Lbw/1w4RCrQU=;
 b=Jv2rjCnXavjmo0t+3g8tDOB+ywKwH2irradg6iYl+InsRTxxA9xlDuovTQMLlUWjSi
 Jwl6PMSPIe2cNT97Q8OHy3mD7jmZtLnc978Sqd/MAgz7XUEzGiF+3RGYyAXYSs3KeHQ9
 vjcjdBUWWo80e0iH++QZcBxaKLaD2B0bavE08LgOeQdz2f6U1wPRpulfyv2icorAx4av
 br/CKsy25MymqeCpzofFoxdgKJPJwxG2G2gE9xCuXiKmVPYeFh28WIZjl+Vx/f5sFean
 Mo6pQbuKN4WKcvJS6kQTupzCtl0FVcUxzie1RGrNRibnDVV5LRKRYe1i0SedGTbjIyRs
 YPUQ==
X-Gm-Message-State: AOAM530k7AUzypSG+BsIrUHKgjlYO7r5fKHc41USi4KBsgYSfLwcvQqk
 qNtaQGv+4notLHUoZCEOxw==
X-Google-Smtp-Source: ABdhPJz4Lmp894N1oM4vHC/ZwNIqiobaYOumvcGSKuAuz3NsCfvxSBYDePq7R8qs9Fnfxvsu9RiYDA==
X-Received: by 2002:a17:906:1dd1:: with SMTP id
 v17mr4493149ejh.31.1622130327342; 
 Thu, 27 May 2021 08:45:27 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.26
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
Subject: [PATCH v2 10/12] ARM: dts: rockchip: add vpu node for RK3036
Date: Thu, 27 May 2021 17:44:53 +0200
Message-Id: <20210527154455.358869-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084530_075205_41F3A6FC 
X-CRM114-Status: GOOD (  12.67  )
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

Add the vpu node and the node for the attached iommu for RK3036.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - added missing patch

 arch/arm/boot/dts/rk3036.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 76ab663eccf7..f01529515ace 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -117,6 +117,27 @@ gpu: gpu@10090000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@10108000 {
+		compatible = "rockchip,rk3036-vpu";
+		reg = <0x10108000 0x800>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3036_PD_VPU>;
+	};
+
+	vpu_mmu: iommu@10108800 {
+		compatible = "rockchip,iommu";
+		reg = <0x10108800 0x100>;
+		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3036_PD_VPU>;
+		#iommu-cells = <0>;
+	};
+
 	vop: vop@10118000 {
 		compatible = "rockchip,rk3036-vop";
 		reg = <0x10118000 0x19c>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
