Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19A4C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:11:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E2AE6124B
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:11:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6E2AE6124B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzMTg6WWWaRM5W03v2gxyJQxqeXCYLEJ8dV+qIrjThw=; b=PmtNpiuK15hBFa
	GFXUApGql63VUYovBWjWdPQ5xGnX6ISgIXOTXAaysiafc2wv2oo5n2r39NvWvPYqhu03fTepxRtzr
	Vz9IkVv1tQqrfEPU+YcF497qqbWgbaAOKptevNmX6PTJdTQHO3QSQpE3stfAKiaJnu32AUxqMwLoh
	fSC0+uGzbNqquCpYULzMVgkHEGBgFbidCdefHmg7FLTukvZNWTjhaWtHp0Up/JEKQEh63aQtuF4ii
	92UpUzz6srbKpSBvM42jQK0eBDsxPIvOjyA5q849UWppHJusKNWMpgrHG5A+tblmfXGQ4WUel79h+
	BhR61sxePlhOSbWIYkOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJXi-007xk1-3k; Thu, 27 May 2021 17:11:34 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICS-007KQ9-0k; Thu, 27 May 2021 15:45:36 +0000
Received: by mail-ed1-x533.google.com with SMTP id a25so1366614edr.12;
 Thu, 27 May 2021 08:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gsjMFI5xRh9fU61vc6sGsHQBMH0/Rr505VNY3iesxmo=;
 b=fFfipLoo0fjZqkr6ftiPIsNGVbJvsb1to+BoH7WpsIIsOOKZRQNS50xCqVTdVMVewb
 3w+y/WIPOx2EUjAbo0yjhW+oX/vHkWMp/iVKRhcsLG/d4jAPWmSnToVZZZa37XRDle6f
 8WJYF9JmHck3vxXLK+6dh+ZJL2VHRFe2UeZn1sh0oHn8NSjKfaamKcDatWVeGFAOSwuX
 mldDwVusy1T3kSGT7GueSEIvz8QO3qzsCu6/7G/NqmTUIYwJyvR6dXuQ9PD3an1bILHd
 a78bklD2W9SvDiExsDohg2eupQKM3Vxn5el6Wn7mZ9oJcLpzdIESPkcAGN4apot/Wnq1
 DOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gsjMFI5xRh9fU61vc6sGsHQBMH0/Rr505VNY3iesxmo=;
 b=m9Br0uQ7JRaJ5Y8HMiHWWTk4FRQZwV/EdMMukSosFYxftDhq45xVIUIm3wE8NrZoiZ
 PI8F80hYUGfH8OlbzvGzwMApQqdaFATdSDZaHDDM8RaSpYxxoVb2drflN5a9aj4NkDrE
 oMiqsZXY9I5ui8XnMI5SPv+QxkcVQ28MEzcq8Al7oV0poDQgn2p6Qvf+3uMIiQzi7WUq
 Fkh7Diu8+TCpDfSam1O0sGsWHiBn2eTYSIDTl43R5mZ/YVGi6l0zx+riaFtS9ajKVyoj
 vxgY0P7moiPw0RvO6djyz6Zn/enSEVDFXjzrJb6Bb2N+iIb60tlZo67N2+LJHVaAjPYZ
 zYtg==
X-Gm-Message-State: AOAM532LrMvm8qsKpayZ/NvwCYO40+PHNRUg45xDQ/wLCfFCYm76vVQz
 KMYV49InAUU7bT60Wvh1LQ==
X-Google-Smtp-Source: ABdhPJwojdxE0cUsDMAT/63TtWD+CUhu/U6vgBc0kNVyTQ3DbDkSZXqmy0LgBNdCZOymj82MBHn1sQ==
X-Received: by 2002:a05:6402:2713:: with SMTP id
 y19mr4744066edd.59.1622130329228; 
 Thu, 27 May 2021 08:45:29 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:28 -0700 (PDT)
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
Subject: [PATCH v2 12/12] ARM: dts: rockchip: add vpu and vdec node for RK322x
Date: Thu, 27 May 2021 17:44:55 +0200
Message-Id: <20210527154455.358869-13-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084532_102194_AEAE3A54 
X-CRM114-Status: GOOD (  15.13  )
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

The VPU and the VDEC IP block of RK322x are the same as RK3399 has and
the drivers can be used as-is.

Add the respective nodes to the device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - squashed previously 2 commits for vdec/vpu
 - moved power-domains property after iommu property

 arch/arm/boot/dts/rk322x.dtsi | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 42033909c606..c0d8f4645937 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -612,6 +612,18 @@ gpu: gpu@20000000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@20020000 {
+		compatible = "rockchip,rk3228-vpu", "rockchip,rk3399-vpu";
+		reg = <0x20020000 0x800>;
+		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu", "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3228_PD_VPU>;
+	};
+
 	vpu_mmu: iommu@20020800 {
 		compatible = "rockchip,iommu";
 		reg = <0x20020800 0x100>;
@@ -620,7 +632,19 @@ vpu_mmu: iommu@20020800 {
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3228_PD_VPU>;
 		#iommu-cells = <0>;
-		status = "disabled";
+	};
+
+	vdec: video-codec@20030000 {
+		compatible = "rockchip,rk3228-vdec", "rockchip,rk3399-vdec";
+		reg = <0x20030000 0x480>;
+		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>,
+			 <&cru SCLK_VDEC_CABAC>, <&cru SCLK_VDEC_CORE>;
+		clock-names = "axi", "ahb", "cabac", "core";
+		assigned-clocks = <&cru SCLK_VDEC_CABAC>, <&cru SCLK_VDEC_CORE>;
+		assigned-clock-rates = <300000000>, <300000000>;
+		iommus = <&vdec_mmu>;
+		power-domains = <&power RK3228_PD_RKVDEC>;
 	};
 
 	vdec_mmu: iommu@20030480 {
@@ -631,7 +655,6 @@ vdec_mmu: iommu@20030480 {
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
