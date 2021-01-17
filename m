Return-Path: <SRS0=q/kP=GU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1431C433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 10:07:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 741CE2076C
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 10:07:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 741CE2076C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GXgkga/RapkY1Jvxomsl/n3dK0eiQ3pLsnFLiVIPfbc=; b=buHVtW05bJek+gnIGgVO+REOh
	QvTCyB43zcMVHqzTsEdCgV5N6oOM7bV9XCb59qYZcCgnLmpL5JACoNA6LM9i4FPKwd8BCGp8IErOD
	OfOl3I+Ub/eX2HF7vuWv6U3ZaN7XcpfW6DH62U4gxsrug6y/whpjFzEU6QtXyasqqAf3uOz0FmtK2
	gf0yNv6J8mBUnTC62O0Y8z6VS/OYT8urtmuDQOf04ZKxxR3Nj9pm4HlYmtiFi+/NGsNQ01aq+lG6e
	KVdRhBY56B116y1wIW8n9ge/AW3pMgBJpyrE68YCfStFQ6ILiaK/CFEGG8r1hL7/7qyXN7GHMfzKA
	3T6vFHYaQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l14y1-00059u-S4; Sun, 17 Jan 2021 10:07:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l14xu-000585-VJ; Sun, 17 Jan 2021 10:07:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 94D58206E5;
 Sun, 17 Jan 2021 10:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610878041;
 bh=3MHx5UbB1ooomqCTWXY1+5z312KLXluxdGw1tLFu/Co=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lhFoXgQNun3F2vQZY4i8wjtUurHO6HcVwDGozy5RewI86FyrzFBbMxDnMjWfw5qQd
 fcfkK87eLWOMheQLQSnR29X//wc3OeV3stfipq3vQcX2Y4GZh7gr13xQxRwgKru6IJ
 8XGT+lnlvBRZ3MarYDN6x8/MFk+g9d5Zt38Ow1Lo3gdNsMh9cYs3OILrS0xRE/GMqM
 xfTVxB7JezXouDzPiNG8MdX17WSs+xNhKEL/+Dn/m1YVeIezRzDdkB0nOh09HC7quI
 gOwnr9G3E/zJ59kwcUaQQ/5ekXMPO3m6b/b/467g8wfBPHSOpIiAlYi7ViI44E82D2
 QgvyOMyPv2YNQ==
Received: by wens.tw (Postfix, from userid 1000)
 id AD6075F839; Sun, 17 Jan 2021 18:07:17 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/3] arm64: dts: rockchip: rk3328: Add clock_in_out
 property to gmac2phy node
Date: Sun, 17 Jan 2021 18:07:08 +0800
Message-Id: <20210117100710.4857-2-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210117100710.4857-1-wens@kernel.org>
References: <20210117100710.4857-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_050723_093177_3D08DC6C 
X-CRM114-Status: GOOD (  12.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The gmac2phy is integrated with the PHY within the SoC. Any properties
related to this integration can be included in the .dtsi file, instead
of having board dts files specify them separately.

Add the clock_in_out property to specify the direction of the PHY clock.
This is the minimum required to have gmac2phy working on Linux. Other
examples include assigned-clocks, assigned-clock-rates, and
assigned-clock-parents properties, but the hardware default plus the
implementation requesting the appropriate clock rate also works.

Fixes: 9c4cc910fe28 ("ARM64: dts: rockchip: Add gmac2phy node support for rk3328")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index db0d5c8e5f96..93c734d8a46c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -928,6 +928,7 @@ gmac2phy: ethernet@ff550000 {
 		phy-mode = "rmii";
 		phy-handle = <&phy>;
 		snps,txpbl = <0x4>;
+		clock_in_out = "output";
 		status = "disabled";
 
 		mdio {
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
