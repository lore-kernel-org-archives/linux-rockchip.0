Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D30BC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0629bVlWypeRTRITN4lUkKvKYTmBIiAmFM9s5zGYRp0=; b=N+huSq75y7a77I
	CPKo/jiV9NX1H5vH4kLwaC3zG294bkQS+scH2hS0jvs3GXRyGhm33xsGOZylk7zM9YOnd7zM5S6uL
	ApjUUTTdseHnhCHJr104LOoepiGkbckeo401Df0MryOWtuhvPQH12dikpuia6gxEo2Jw8/qZwhEYg
	bZdNQ2ae2gxIfoLBBeAGWT5LpRKiE9W2WFtA/3s4+OQ45zhUtgwKPO9tMIdrT0zZpyiOWQ95nVC/Z
	6oXVErkeksPlEzEM5nUNreN6Rd3CfKvtLI6kyqTDZdEBttkKdiR1Ud3vI8bgQzTMQAVzye9/Gxo+C
	vjYOIedWn5aehxH79Dbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi4J-0037uD-UV; Mon, 28 Nov 2022 17:37:23 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi46-0037oQ-Kk; Mon, 28 Nov 2022 17:37:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 559BEB80E81;
	Mon, 28 Nov 2022 17:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E98C9C433D6;
	Mon, 28 Nov 2022 17:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657028;
	bh=1cfBiJBr1IdGD5OunncKfYQQqGTw/trPDyLSOJe0zVk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C4X75BSf6k+Xvfm62Hrzdw9hOo6CimDOZZVEAWCm4qpX89KJG6yLcYEcczs8N2uow
	 ZrmP4wgNc1YQofyCuhg/ZwMeac3e7wY+ma5BdBf3nT9AgNzxltbxTRS8l04ZU/mObR
	 JgCDHlYdhj/ukbCIZX0fny71bddNqYhBVawJIzzgYRSwi0csrA3O0tO8p2VKpxpL83
	 UdJ3QHxUQ5ZOSupqYULuoXsVn9exgILTdh0LuDnePM2J09q8LoWyk1yctZ8TQ/Te//
	 PDRngW81PkD8djnuIH4FtM8xw9JiQQd8CdZIfKBFAZV0g+fL2h26I/aW4c38n9djEm
	 0mgSz6JCJgefw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Furkan Kardame <f.kardame@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.0 02/39] arm64: dts: rockchip: Fix i2c3 pinctrl on rk3566-roc-pc
Date: Mon, 28 Nov 2022 12:35:42 -0500
Message-Id: <20221128173642.1441232-2-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093710_842775_930588F2 
X-CRM114-Status: GOOD (  12.52  )
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

From: Furkan Kardame <f.kardame@manjaro.org>

[ Upstream commit 2440ad0d851e404adcd1b9ad758f28bd59365bae ]

As per device schematic i2c3 pinctrl is connected to m0 instead of m1

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
Link: https://lore.kernel.org/r/20221010190142.18340-3-f.kardame@manjaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 8db83088ae4e..b8ed215ab8fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -397,7 +397,7 @@ &i2c2 {
 
 &i2c3 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&i2c3m1_xfer>;
+	pinctrl-0 = <&i2c3m0_xfer>;
 	status = "okay";
 };
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
