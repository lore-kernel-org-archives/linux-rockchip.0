Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0C03C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUd1PU4+I7evi+gZ+w/AtGlsp7dgpTZ3gC0fOO4MUM8=; b=kH8YEfdKQt8Bh0
	Va4BXT/Nh7oM6Nta5dnZlzuiFPE/7aqZlzutOxMXPvrsELVsyOwy2IwSfkcugv5I0Wv6kAw0OYJhU
	GPidPTP14JUvkK14KRwK9xMUWET+gvA7ZSjp0zkc4xjwMwg/f6pGP/oeg+4YQRsC9n1h5iMHljwjk
	D7l/kXUuonffCHMj6oTrG+lolzfGd3MMrKVneLlZVbbds5ySpYxkvYZdwjVFY4WmLPx3XBSsKTFZT
	UOItvVvekVTN0ikzYcHy92JvsBrmiE7RoFAzHWr77HzF02JGl/NDRml11Pga673bTI2nMDzql8tFd
	EtBV9Bhh94ZmDYmSLv0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOlg-007Gr8-KK; Wed, 15 Feb 2023 20:52:44 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOg4-007DLO-N8; Wed, 15 Feb 2023 20:46:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3C247B823AF;
	Wed, 15 Feb 2023 20:46:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB57CC4339E;
	Wed, 15 Feb 2023 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676494014;
	bh=wJjitCtu67QPs/ERyzS9chbzU+MB0cUw34vx3jCuz6Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dBhss09FtMApvRK77WPLaMEwDcwOt9M1DejrtlyhirOqinJgIEj3ldjwj9T55kV+z
	 FLr4f5Idl56PimfPNg+lgdQ+j0B2I4SqH91k7HfrMSe9qVPceGEH9xwbF9lUEKIz3k
	 KleSj6JFLPIhAxYjP1+K2MUd2N5HcSNk/Ik3y+PHavnOmEwPKXfPZorB08Jv1Bc3YR
	 5RM4a5eoN9r7appEweRdJKVjYRICnnOe9jE0Qi8F30lajop57bOgE8U//cO2KjFjS2
	 HBBJ4s2ps4mhUeQWYHC3iLl8974lGDyql13rgq3mdFFvkBrq5YNCKAU2LJl7nPdcfg
	 s6Iei2H800KPw==
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
Subject: [PATCH AUTOSEL 5.10 3/8] ARM: dts: rockchip: add power-domains property to dp node on rk3288
Date: Wed, 15 Feb 2023 15:46:44 -0500
Message-Id: <20230215204649.2761225-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204649.2761225-1-sashal@kernel.org>
References: <20230215204649.2761225-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124656_956798_09E822AB 
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
index 9051fb4a267d4..aab28161b9ae9 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1203,6 +1203,7 @@ edp: dp@ff970000 {
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
