Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 990FDC02194
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 12:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrCMOSxMfMcceaqlCYpPEvvyLsoYlK57Vavy4JU/PKc=; b=AbhHawBnPiRZ2/
	+bgRDbTIlozQ8MMEQ1al6+T/UCG3ZpMUqGEsV8hXYzThCfRCXmmYUMMdU5k0xbdp7c2dEYANxTGmt
	qLPqF8y5HJ4lMuP0lr0F28zNAfvcl85Mg/j9X2sQbXRs0CjG0l4LzDkfRx/IDI/HS1PLCy/PyfhS5
	rrlAjk5hpu+hBI9YGvnxDNl7rIAspfjEDMqFlfsDNtE0GoEXejoYjFQPUimF0CT3YxOme6YgrtoSL
	9nvaQ/StLJvdiEPT0/ta/4NLQh9eDkMW+w5rj1+BX0Hdxrcc/2JIbJSpd93rdsrgt9kaEuNgXakhM
	qa3Fd9PDuFMq4LZErsAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfILx-00000000Seh-3rgk;
	Tue, 04 Feb 2025 12:48:33 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfIE0-00000000Rhk-1CR6;
	Tue, 04 Feb 2025 12:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1738672818;
	bh=fwoOPfxtLFJ4fVTrja/ABWK9UK3wUv/NKNwiIh28t0g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SDRz9mNTtjcmQVzJyaumGKp5SACJoZughm8o/TVpYCptdrFz+SV9+qTkWP67hL9je
	 sbHy5e5o2SE3ZRsupnyT+ptU+95iqOpQVtZCo18C6Pr2zvDlX8d7zsrIpXujFYRYRl
	 1MLhnxlsFD6gW0VmfHkVRT5MA/dVgwmLQxGWVRchpss+JFKEzSnnoWa9oLg6CmMa1J
	 u2ndYhdW5KKWLIXKKxx56QzmgiC7qzYzd+RKwfZBoRlIPp66l6ssJKG3GPv04u1myJ
	 sougejvkxO7dCa43gW9EPtFKgAZRLgRxxxclD2NHfTscGxCzgfNhIK+aGIvhvpuLL2
	 f41CVz21W0Gug==
Received: from localhost (unknown [188.27.43.189])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 579D617E1531;
	Tue,  4 Feb 2025 13:40:18 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 04 Feb 2025 14:40:08 +0200
Subject: [PATCH v3 5/5] arm64: dts: rockchip: Add HDMI0 PHY PLL clock
 source to VOP2 on RK3588
MIME-Version: 1.0
Message-Id: <20250204-vop2-hdmi0-disp-modes-v3-5-d71c6a196e58@collabora.com>
References: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
In-Reply-To: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 FUKAUMI Naoki <naoki@radxa.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_044020_518442_F5D1678B 
X-CRM114-Status: GOOD (  10.62  )
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

VOP2 on RK3588 is able to use the HDMI PHY PLL as an alternative and
more accurate pixel clock source to improve handling of display modes up
to 4K@60Hz on video ports 0, 1 and 2.

For now only HDMI0 output is supported, hence add the related PLL clock.

Tested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index c2d1f08e55d4cb4b4d2b6a89f26542fdc99fd604..13146793188c466faabe6a88e6230ba09f36770c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1261,14 +1261,16 @@ vop: vop@fdd90000 {
 			 <&cru DCLK_VOP1>,
 			 <&cru DCLK_VOP2>,
 			 <&cru DCLK_VOP3>,
-			 <&cru PCLK_VOP_ROOT>;
+			 <&cru PCLK_VOP_ROOT>,
+			 <&hdptxphy_hdmi0>;
 		clock-names = "aclk",
 			      "hclk",
 			      "dclk_vp0",
 			      "dclk_vp1",
 			      "dclk_vp2",
 			      "dclk_vp3",
-			      "pclk_vop";
+			      "pclk_vop",
+			      "pll_hdmiphy0";
 		iommus = <&vop_mmu>;
 		power-domains = <&power RK3588_PD_VOP>;
 		rockchip,grf = <&sys_grf>;

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
