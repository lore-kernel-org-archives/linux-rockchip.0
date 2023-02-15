Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A478C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kz45K+SK1uFYDR6H/UWDIMURVCga2CpukLrINhskM0=; b=u9EJkN4MY28iVZ
	+FhZEzpyfGRe2s8bCczB1PSDbE8yFde21tAssPrkIFqyPwEDVohxuoamzRwQQLdDaD7EDNNy8gOIK
	xG87XzfVWfbYtjrYpVvaHQsEybBN0GJ1UE9G9+8+aU5Qz5pU+Psw+LJXIDYbc9zq5TAy8TFV0WF/n
	WzA+LAYzxI0Q9kIEP+Mue6MKmK7N6U0Lr3CDEDweO55zeqhHakMrCo4xtAznqYdhv130G4TV2vSrd
	D8MCFo+LZcq7yJKVZBcwmKmd/zAckNoZp2X4T8M5Ln76wK62mD3cK4r742bpFj2e0q3WQwxjxCRC1
	uZCQj50ztERJAjvxSZ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOpN-007Izf-Fu; Wed, 15 Feb 2023 20:56:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOgL-007DVC-49; Wed, 15 Feb 2023 20:47:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 726A7B823C7;
	Wed, 15 Feb 2023 20:47:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E38E4C4339B;
	Wed, 15 Feb 2023 20:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494030;
	bh=Ylleevxb2VkHh6V5lkaTGbLVPbJDnUWzCONPpX+T5DU=;
	h=From:To:Cc:Subject:Date:From;
	b=l29TXpwkBni48m2UZJfSbEHSR9ZHNhWDOWiwmn+NbUeYWjNSpA/k3+l68mw/DE8rR
	 kx0nNv317lwVRFEndfrZ/Gfke06CzVi/dLeZREeuZkV+5C41PAi72mSLrbz88ASYlY
	 cVaxU1P654BbZvrEkhn4B4LQ2jl0u0F9VlnMYq7BvdtK52mVMa7y6R/aVqjk0bH7ks
	 PEwZv0kywb+56BiZdtL35Qm6ZP9Uc0jYg6kH7vdKXUyH6SHrh2Qx+qYGum7lTLorXw
	 Len7Br5wtfyw/vDz3+drnJCu78g9/6WZCf6+c52v2OLaFHlDCVCtFSLgf3TnoG4UwU
	 xKnSLy83v3DOw==
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
Subject: [PATCH AUTOSEL 4.19 1/4] ARM: dts: rockchip: add power-domains property to dp node on rk3288
Date: Wed, 15 Feb 2023 15:47:05 -0500
Message-Id: <20230215204708.2761432-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124713_422305_DE155AC4 
X-CRM114-Status: GOOD (  10.50  )
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
index e442bf7427ae1..402b5e0fd616c 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1172,6 +1172,7 @@ edp: dp@ff970000 {
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
