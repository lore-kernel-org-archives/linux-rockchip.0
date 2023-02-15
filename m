Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43EEFC636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjE7sJ02uwoDTB7GJkOx++gAGECiV0zmJfD6igmQ124=; b=WDUUBZ1VRnjo1A
	n0lLG82X9joFm+fzZmnMjIweQL4Waz4GFncJ3PM0QfUz1z/wBh4pnMO7ElxjSgONRYV+hRJbhcVFv
	NHkXMsSjiF0rZJN0OC0Miq+0Y60zXuVWYrr1mElcfDdMKnPwQ9+cynIiYI3g4FL59KyaoQnEHhOhw
	eix6XFYHD29uv5u3oBs/bAobwaiXousa8j+1hz8tj43U3K7vDO/fPLFPptYzRj/qUMZNOywQx8+iI
	OFm9S7g3dWcmOt+I7Fap1JzWJqGSzNATS8tDBAOAmruOKyKLbduivxffxeibzzAnbJmePp9+2Wx6Z
	tHkHKu0QktvWQcEO/fSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOnr-007I3w-1n; Wed, 15 Feb 2023 20:54:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOgD-007DQs-U6; Wed, 15 Feb 2023 20:47:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 813EDB823C0;
	Wed, 15 Feb 2023 20:47:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB941C4339E;
	Wed, 15 Feb 2023 20:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494023;
	bh=AklaDzDDICabuWl4SFjLhZ1lPT9JmGaSK4Gv1Xj2Apg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lbPWkoUikvMr7aefoksmpoQTiedJb0211hZ48HD1WoLg4EAaV9kKiVZ2w1eZXN6aW
	 2mADm1Mv1c7THqnUg2Isb8tusrvu8EnScHmEVQEj2w5toG/AyD2yF0rq1VpFbZXeVw
	 c58JDroj5JnMaz0iSr8pKko5b3mjVaIVuhVHC/lBvL1dN3hp+A9uA2wR4lEkJ1KAQ9
	 YM9We16+1n/pzdO1Tf6RgRy8g/KYoYSG936FjcJ9dZoHzOYaY/URYbBAx4LE0VxVHf
	 D3UGQ2d729WyrvjpXQmwNu9sX/tJrUe5CbtwOOz2I438TIqAVZJpW2sBkYsQSi7s0E
	 Ug2LpdlP6EMjw==
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
Subject: [PATCH AUTOSEL 5.4 2/7] ARM: dts: rockchip: add power-domains property to dp node on rk3288
Date: Wed, 15 Feb 2023 15:46:54 -0500
Message-Id: <20230215204700.2761331-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204700.2761331-1-sashal@kernel.org>
References: <20230215204700.2761331-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124706_163009_592D1608 
X-CRM114-Status: GOOD (  10.68  )
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
index 7dcafd0833ba8..3a7d375389d0e 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1188,6 +1188,7 @@ edp: dp@ff970000 {
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
