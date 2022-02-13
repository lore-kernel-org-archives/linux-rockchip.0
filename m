Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82341C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Feb 2022 19:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdjsn/kln11aTKRbpvSEtl6+deHfvQMlNcTef0nsmrA=; b=qZSz1fAX5ESahA
	xpg+FWSwK8Osi18SNLnXqSAkUmU1EfhR2xc2Tbc4E8iyZvJq7lyi/MfK+8hi8viC554D+T/Yt4Foc
	m89RNgjre4KUL46+3rsyQvQPpDSWFfRlXCkJ1edpajf4TWUqFXPcKElW1/aLEC7+mXQhAhQSq6jiG
	SEnE6ff066lTP6QdJkfLi2m5YwSyTdYwONXOCzKF+OArgrXTuDs0g7TgLVMCUnDW3YyZbCVy5BJV/
	LRVRXGsk71KbcfkSeBw/rQir3e/B9mFY161g7WJs0r72RLUKwKVf7oJhk4yqLmHklZ0JwbgbUke8H
	iA6Cfd61oFv+sS/JC+jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJKvi-00COZ4-Kh; Sun, 13 Feb 2022 19:53:06 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJKvg-00COYC-5M
 for Linux-rockchip@lists.infradead.org; Sun, 13 Feb 2022 19:53:05 +0000
Received: by mail-lf1-x132.google.com with SMTP id k13so26652010lfg.9
 for <Linux-rockchip@lists.infradead.org>; Sun, 13 Feb 2022 11:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6v6pgISJrHoSxFqvH7sLXG+J+EsPRkUHxiDxTl/cEOk=;
 b=LgSVWAg5sOplGD3HgKMk4jk3VTKoUJT7RdH4qY1zFTPeZvUnCLibqTzc2mvkoMiGLR
 RHhtgtOx/z30WvYP95wZdfXY3rN1RKmTIA+VXR2gyPjsiDuyLsYS+ydVfYMST0L2nZKE
 v8lrWZ4SNFWDBYqDOVOGUe8Mv1J+NjZ+kWe4XfWauN0Tg4jwAoGZFZl+mfcd08o7hUQp
 L2VCC5RI4SgtqdlUn+364KMEpyO754qJkfSbJrQiDTFrC9QAfGAAzhkRJyPkDSsjY8M3
 qHKb3xlKx0/j1vURmmZepfVIsTrh+8Da7ZvKZkll/iDBz/Jyk4Xk+CAeETMwdktnyIbp
 lhXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6v6pgISJrHoSxFqvH7sLXG+J+EsPRkUHxiDxTl/cEOk=;
 b=RaA6Zlu9u1rELNFQQ83QKEh3UdMpIbVFV5NArgPIMK2J2iDEnO+0NaXfWfm6wr7fca
 PKjrnsVBqPW0QWZERmTxUeSdrSgEXtRNCcNurguOpGEJFsYHU7OAChSiViHjJAIuRhez
 cD64fm2mDYopXozJG3PAfWB840cBB73OmKyV4CZOlhmNt1I0DKWbZbMY5GF+y7AKSbjQ
 W49RvGsLHlGY4Or9YYrm8SLr0Jt8xKFAPlpmg/+aXY3fGktZMldIFMOjP/UC0HKmeQ5X
 zGRECRBt5l0LIyjYNHf6+vNHcZnfDVb91uvD0sJXjrGRGtkToUZqeelHVpPvl2DHwI/o
 shbg==
X-Gm-Message-State: AOAM5304x7wY0JX43YAdtaHoklcwBv51pdnCW/i7Ko4/yUsFGzLmrMN1
 TbqiS1GUsBDN1Y6pBQvd0g/NwCp6keXbRg==
X-Google-Smtp-Source: ABdhPJzf7J+L3mAE7RhrCHoqNf/gNALU5iZBqlnfZebtYqSn5P8e6zb3V5h+xG8UO86KYq5AkF/bsA==
X-Received: by 2002:ac2:4e13:: with SMTP id e19mr8666467lfr.249.1644781982176; 
 Sun, 13 Feb 2022 11:53:02 -0800 (PST)
Received: from localhost (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id
 w33sm3837874lfu.122.2022.02.13.11.53.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Feb 2022 11:53:01 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
To: Linux-rockchip@lists.infradead.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v1 02/03]: arm64: dts: rk356x.dtsi: Add support for Hantro G1
 on RK356x
Date: Sun, 13 Feb 2022 20:53:17 +0100
Message-Id: <20220213195316.4149106-2-piotr.oniszczuk@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20220213195316.4149106-1-piotr.oniszczuk@gmail.com>
References: <20220213195316.4149106-1-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_115304_216361_40FE071B 
X-CRM114-Status: UNSURE (   8.78  )
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

    RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP9
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index a68033a23975..ae5d80c5ba64 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -390,6 +390,28 @@ power-domain@RK3568_PD_RKVENC {
 		};
 	};
 
+	vpu: video-codec@fdea0400 {
+		compatible = "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdea0000 0x0 0x800>;
+		interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vdpu";
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
+		interrupt-names = "vdpu_mmu";
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
