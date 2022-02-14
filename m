Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76061C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dz5Y8zZC/JUp6klXtlBTzDDzmpS1onO4WnaSpZZ+6XI=; b=Z8bDCgPe/WnUHQ
	z4MnoL/BENBg5DXRBjYCvV7cM426niyUKKp5+QZKljqjjfR7qbWwP0RqbUDy/pDPNbSD5WxSMq2A1
	wKATTAMe+ygWWqbkIv8XEKb8E8Zdq3JUO+FVHyt7Zm4VVrEeXqK1oYi2CU1GnBBgf7G3X6PcXmh1b
	4sr3tgI72WQIxP9PrqkC9oNk4ug+2trg8l6M46t4CcotnSiA9cp1o6ZrzpGfpPhDGnQwng3mZ0EKg
	28IADqzYL0to4oNfD0eQEdKBz6Nd3ZohqXsQGd6GmLWYU6/zg1p4/9elca3JjTpQaPdM2arMlCFgs
	BHfnmhK8NYtoqvtnza+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJj8d-00H6m7-Tt; Mon, 14 Feb 2022 21:44:04 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJiuH-00H1Fc-KA
 for Linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:29:19 +0000
Received: by mail-lj1-x231.google.com with SMTP id c10so11407264ljr.9
 for <Linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KAsCtIlfmp+m7ShyllLFJYAj9FEeo8wO2Fz9dFrEzUk=;
 b=oviBn1dwswIq6zXepxKju+gVEouA9bnn6Bd2iFa/bIWH0fkx9MbgJMD2YGwR7k8K7o
 byLrXrGvwcgWvYOqHvjd44h/zB43zde4T5mYQEr1hamdbDkFHDHuxc9euFmgpaJ+Pojg
 LlIRGRlCkMjOXdMs2I5V4M/CMtzvg2Mo6Hpi3QbUrd6lBR0cUfcEz2NhENMfzTo+mmYR
 1yXhc2Wk6WFU/1jusIHPk+ADc35oOOH6xP1PZZ/XECUyVWjnlDNzJcadeRnH2HTZO6l5
 eBwhe+BcMAmZIFBdmlwC/uF/Ng+DINUUuiLPbGRvfRtnYzQ51QhtGeMlQh8Ua+gxhZje
 lkRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KAsCtIlfmp+m7ShyllLFJYAj9FEeo8wO2Fz9dFrEzUk=;
 b=uTAQbYgBS4WICV88S/k3nNUCjD7ZnuzUa4ew/bbqMBhwNhnGjvqROXFk7+8ypzVS0+
 tjkALz+VrZ77cCKoiS3ohSxFoiRyJdzZLsGIdftBrWb8omCLvWCofegskWa7LjzJ9Yi+
 O8PPwgrFsXoI4yMF7z3sTbsVvpljYRsVCpsqKigi7GoQJKixq41Tl7mQaqgRDo9Ox3rA
 FTodK07lmtKHendlePmEmy+uMHRf5t0Jxg0lHECHmeA42+bMHp+eIIMrp+4DwW6+vGqT
 m1jVuLeysCiwBPWvyyHOjEx1/rP/XHDvyTYI0y1/Jd++1bdYXuvaIShRZmfgko3RwH+g
 EQvg==
X-Gm-Message-State: AOAM530WBP8g4bN/JSWgWVRtbl5h9VaFKNqdcVNBkpPjHno4n5nmbJKg
 KsuA4cQI430eD3r+Cg4KwGE=
X-Google-Smtp-Source: ABdhPJygCRUKcXYRREzCPhlgnMRY/xJ2BV/jbHvhY0MtRmH/g5VjCExQ76VosAuSlDwk9Q67S2g3kw==
X-Received: by 2002:a05:651c:1054:: with SMTP id
 x20mr415144ljm.349.1644874151550; 
 Mon, 14 Feb 2022 13:29:11 -0800 (PST)
Received: from localhost (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id
 a22sm491184lfr.24.2022.02.14.13.29.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 13:29:11 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
To: linux-media@vger.kernel.org,
	Linux-rockchip@lists.infradead.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add VPU support for RK3568/RK3566
Date: Mon, 14 Feb 2022 22:29:54 +0100
Message-Id: <20220214212955.1178947-2-piotr.oniszczuk@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132913_713277_944FDBA2 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
video formats.

This patch enables RK356x video decoder in RK356x device-tree
include.

Tested on [1] with FFmpeg v4l2_request code taken from [2]
with MPEG2, H.642 and VP8 samples with results [3].

[1] https://github.com/warpme/minimyth2
[2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
[3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt

Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index a68033a23975..33ecaafa8cb7 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -390,6 +390,26 @@ power-domain@RK3568_PD_RKVENC {
 		};
 	};
 
+	vpu: video-codec@fdea0400 {
+		compatible = "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdea0000 0x0 0x800>;
+		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vdpu_mmu>;
+		power-domains = <&power RK3568_PD_VPU>;
+	};
+
+	vdpu_mmu: iommu@fdea0800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdea0800 0x0 0x40>;
+		interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3568_PD_VPU>;
+		#iommu-cells = <0>;
+	};
+
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
