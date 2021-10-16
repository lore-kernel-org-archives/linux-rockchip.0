Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12471C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF23660F36
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF23660F36
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CMLZPwIUyjQehSuRDgezfpAMb62AqbZYsCW0fZWBD0=; b=dHlUXZQbdxB77B
	g58D2Q+VcoND+KRLhwkVcfYuWV+4udc9WCrHotu2zZQ62AhlJ4sYOiBvImJCjf09+CSUD8PZCp2uk
	tudWJAY60JoA9fhKdDL3pcU5RJdbgJ/0Yi1bly9cD7uHkFqUWA59ocgrru6wIVLc4Ns4C9Dg4Kg7i
	SyajqYgUhOQbzFE1wdHBU3mU+fS4eK1JW4IneEZiKc+SHtAQg+DlfM/5rB3nR282TUCnGkl0S2gvc
	iBFqbIZmZzuHUOiYivXy2Ecj9mHV7XQRC+d6YLKEUYC9NYnSMVEzAMXJll/l7UPK7uQ2WsCASUX1n
	3MWhgjSGrs2XThpmmIkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgn9-00AIc3-Q3; Sat, 16 Oct 2021 10:19:51 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgmt-00AIRM-H1; Sat, 16 Oct 2021 10:19:36 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 j10-20020a1c230a000000b0030d523b6693so5003468wmj.2; 
 Sat, 16 Oct 2021 03:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PD0s3T2MF4tv5g6N8cuPkBbaR24IP6h58wcesesEz1I=;
 b=bdHNHDe6KhfZGIHBJ0K8gpOwmvEokrAKTCe4AcVR0+y1JvewOW5A0DcWD4Zw1D8xMh
 6/R3/6onxPPUQoyaZZxZjKY61WywyM+vXZ+fxPUCGkY0GGUNZS7SZU4j7qe4kucn32DB
 h4zbJdyYeDeLvXnlZuwrJvAo+n0fef6yMSDP/vkvsSdBWwnCgJbvHFEipKqDNM21KV4Z
 pxI+mXnjDsB1M/6fM1135u/n5e25MN2lWmxvqXtN0XUaMHCmFX9VJ7fSoEc47eD0or3d
 G3Qss7kgZSWFr/VfjACOIOqymvLGH2efhFVg1HBJbrp/qTsoXMDzg0vLR7b3I8NXAyFs
 1WnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PD0s3T2MF4tv5g6N8cuPkBbaR24IP6h58wcesesEz1I=;
 b=AZVAOIFgWNuVYyTzOqDwtSaOz7aAUCRdGCdKqu054f00q+JgV2qRtz2Zp8fO0HveJv
 z+lWKbyuHDDjSaARw3usAKD3yOSBqMYw8VxXIoigLXrnGq3tqSTsFHpy/EXVwFgHUAs2
 wSjy3p7dOmIgmbGRH+y+YKDrViPIK/co6cZ+d9upAqvhai4pdzGDIM86NgXvIgdiouZ6
 KCLIuWTGDIWvhwAJttIsz6+Z5B+MP/pf93e+8kS4RfUciYrpl6h+/hW3w/T7YR8tbk7j
 FvAK/PSphVeTmX71sqGWBpuW7JBxNZ/qS2kyEqsWg1Nena3cG8cN6PDMhMpHBRGGIQtI
 ZAIA==
X-Gm-Message-State: AOAM533vTuPTiATXxBEY+zektA1KFE5OBWEH5XQslcgotXj9BfRvm2wf
 ohwWS91Y1P1YKhc7AZwHB78=
X-Google-Smtp-Source: ABdhPJw+GVvUgKi17WEmCspLSun09rZRATLc7ZBCNj7KRvi1bwBcl+AnoSzFHhdV6UMZ3G6W2ePP1Q==
X-Received: by 2002:a1c:4c17:: with SMTP id z23mr32809108wmf.61.1634379574312; 
 Sat, 16 Oct 2021 03:19:34 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id k13sm2920926wrp.86.2021.10.16.03.19.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Oct 2021 03:19:33 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: enable gamma control on RK3399
Date: Sat, 16 Oct 2021 11:18:52 +0100
Message-Id: <a66b1e07390d002ca39f06f5cded8f34a564c0c0.1634378097.git.sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <cover.1634378097.git.sigmaris@gmail.com>
References: <cover.1634378097.git.sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_031935_610034_9FB8D687 
X-CRM114-Status: GOOD (  10.41  )
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

Define the memory region on RK3399 VOPs containing the gamma LUT at
base+0x2000.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..9cbf6ccdd256 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1619,7 +1619,7 @@ i2s2: i2s@ff8a0000 {
 
 	vopl: vop@ff8f0000 {
 		compatible = "rockchip,rk3399-vop-lit";
-		reg = <0x0 0xff8f0000 0x0 0x3efc>;
+		reg = <0x0 0xff8f0000 0x0 0x2000>, <0x0 0xff8f2000 0x0 0x400>;
 		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
 		assigned-clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
 		assigned-clock-rates = <400000000>, <100000000>;
@@ -1676,7 +1676,7 @@ vopl_mmu: iommu@ff8f3f00 {
 
 	vopb: vop@ff900000 {
 		compatible = "rockchip,rk3399-vop-big";
-		reg = <0x0 0xff900000 0x0 0x3efc>;
+		reg = <0x0 0xff900000 0x0 0x2000>, <0x0 0xff902000 0x0 0x1000>;
 		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
 		assigned-clocks = <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
 		assigned-clock-rates = <400000000>, <100000000>;
-- 
2.24.3 (Apple Git-128)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
