Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67B3DC04FFE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 May 2024 17:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6StpubVH243rQrmqYSJki4Sr+E4+iNcAiBbH+Ly6LME=; b=fkUmY3IA8FQaY+
	Oy4ECgY6KE4yewzfON3T59rk8fBfGAE0uQlVOzzu5vaI14nt6HcybvpbM14xHofQXjPnGzWiEOKdh
	05EfqSNz+X/LqBoUirZy4oQa7bvobdgDZ6joiFX2LRNnTS+dDfNf14BfV9ymiNemAaekYhVQ9PwZb
	mUIqmMEbJ4VWCiAqpdgMAq7kknLiaLa17zQNgZpHOn8J048ufNn0Br6+sg8LJxE874aO1lKqdAvTn
	Rb04byHoUsJWsdPN+NsRLVYjok3w32lpcgNfqbalr9X14F6zGGVakQvWmMnIH1VYRfd5nAO4ez10g
	VtbqMZQOD1fYRbYtx5oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s96gs-0000000F6wj-3Y91;
	Mon, 20 May 2024 17:20:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s96gp-0000000F6u6-00Xl;
	Mon, 20 May 2024 17:20:49 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716225634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=M5mdKrQZ6Ky+oql5N4jU0irfjSORSwfq+zI30MiBIko=;
	b=LuU/fEMPZL0GHan6Z1Z0f2BpKu+NaY/w0OmOAbO9PaNcTiGPihIk+jEt/FfcthR7H3nL49
	x0+z0UXxgVjOsQ4RV0z7dVY7wGEnxexYc38rqFz+VW8Q0eiaW30/JLEPmHl3CDuf1HQyEO
	vQWrQpGOneFSwbcwMw5LlRhcEP625t/+cISm+aHJxTkkqXMI8YQW3FfrJbZ/mK4k/ld1Az
	mbK/ui3vFhOZ7TavIMGZZARU9c1zlI1CAE3K66gHAQFECNsbCdWbfmMZfbBijvGrfDJyp6
	U0+HQ8NnpQ2MyISitkaJU2fd9duUnbjUApV4peHrnyaDa9IoRvxzApTeaBgvEw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage on Quartz64 Model B
Date: Mon, 20 May 2024 19:20:28 +0200
Message-Id: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_102047_592462_6712DF15 
X-CRM114-Status: GOOD (  12.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Correct the specified regulator-min-microvolt value for the buck DCDC_REG2
regulator, which is part of the Rockchip RK809 PMIC, in the Pine64 Quartz64
Model B board dts.  According to the RK809 datasheet, version 1.01, this
regulator is capable of producing voltages as low as 0.5 V on its output,
instead of going down to 0.9 V only, which is additionally confirmed by the
regulator-min-microvolt values found in the board dts files for the other
supported boards that use the same RK809 PMIC.

This allows the DVFS to clock the GPU on the Quartz64 Model B below 700 MHz,
all the way down to 200 MHz, which saves some power and reduces the amount of
generated heat a bit, improving the thermal headroom and possibly improving
the bursty CPU and GPU performance on this board.

This also eliminates the following warnings in the kernel log:

  core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000, not supported by regulator
  panfrost fde60000.gpu: _opp_add: OPP not supported by regulators (200000000)
  core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000, not supported by regulator
  panfrost fde60000.gpu: _opp_add: OPP not supported by regulators (300000000)
  core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000, not supported by regulator
  panfrost fde60000.gpu: _opp_add: OPP not supported by regulators (400000000)
  core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000, not supported by regulator
  panfrost fde60000.gpu: _opp_add: OPP not supported by regulators (600000000)

Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device tree")
Cc: stable@vger.kernel.org
Reported-By: Diederik de Haas <didi.debian@cknow.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 26322a358d91..b908ce006c26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -289,7 +289,7 @@ vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
+				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-ramp-delay = <6001>;
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
