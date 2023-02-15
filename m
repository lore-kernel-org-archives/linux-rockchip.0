Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0DA4C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vcR0WEUvkqre2zti8UjNoXtmqmyG7eTMB9G0cAN6uVc=; b=NJstkdEin3Ai3y
	c+CxOzdYEbF59V9qGiSH3nrd5G1ad6yeFRH2DiaSOTLuRTJKaHdbrb0/zFAFCYKOwIGmjh//3etdz
	irJf3nWu0WUEy4vYPiNno7mvQW70ElifnQWfaqBEUdRDtRiXfZ/tr0ZKprD3v/roZ8vM+G3Mh2+ZS
	U76bfp210UdLXPR/UiBkgFHH7sz5gaWL0fk02Lrj6dP5iPXT10WN/XA23nCOFUWM6hfXPkk7v95pE
	y97N+qFSYOIZ5YFGLEOLGi6ewh/Wf/cJEsIAsEP6bbew4tdx/Wv5O1HYdyq5DQJvDS8UljeEmIRK3
	zw+NVF0ukswFnpKoHDAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOpO-007J0P-Gm; Wed, 15 Feb 2023 20:56:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOgM-007DWV-Ir; Wed, 15 Feb 2023 20:47:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 09C7161DAB;
	Wed, 15 Feb 2023 20:47:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FF2CC433A1;
	Wed, 15 Feb 2023 20:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494033;
	bh=TGryrwuA6HKr9VvU/8RU+K/sgCT6aPGkXxCYLy38lwc=;
	h=From:To:Cc:Subject:Date:From;
	b=k3Y4IX+h/mT3CkHHctXlWb9qhpmlnySZfHW0sADCt9jx5V5fCfvGY7YjF+O434W2g
	 R766Qkm1pK5MC1oDW2uGBMtKvSzXSB5gHb4E2TW+lya/TN5EfBHHBQq81AtMWYcZfA
	 WObgtzgx57Ww8aby7NzN8b69llygzpGxjjMmUvpoT0ttGs5MOEzP3Tf/n9yd2fFctv
	 gILz7qIQRZ+DH6JZY3DjpuOorM4mVdmEsqTXPd8qB/wjXR1TzrGOURxHa8Q0IY0B57
	 iFRqxzVZZ/fibdZk4vkcrFRAJZVQSkp5Ulsm83YFAK7STh/7+WeSGCZg/MXvzV3YAF
	 z2CWbxrjOYG0Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 1/3] ARM: dts: rockchip: add power-domains property to dp node on rk3288
Date: Wed, 15 Feb 2023 15:47:10 -0500
Message-Id: <20230215204712.2761492-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124714_700767_F8805DB5 
X-CRM114-Status: GOOD (  10.29  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 80422339a75088322b4d3884bd12fa0fe5d11050 ]

The clocks in the Rockchip rk3288 DisplayPort node are
included in the power-domain@RK3288_PD_VIO logic, but the
power-domains property in the dp node is missing, so fix it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/dab85bfb-9f55-86a1-5cd5-7388c43e0ec5@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 872e4e690beb4..c3440adc763ce 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1096,6 +1096,7 @@ edp: dp@ff970000 {
 		clock-names = "dp", "pclk";
 		phys = <&edp_phy>;
 		phy-names = "dp";
+		power-domains = <&power RK3288_PD_VIO>;
 		resets = <&cru SRST_EDP>;
 		reset-names = "dp";
 		rockchip,grf = <&grf>;
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
