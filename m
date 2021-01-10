Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB10C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 03:59:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41C7822E03
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 03:59:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 41C7822E03
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GXgkga/RapkY1Jvxomsl/n3dK0eiQ3pLsnFLiVIPfbc=; b=oOQbIuCTux2C8GNkU4UKE+3Pj
	tHqyyI92k+2V3Xe2+Ls2II5S7+YdvBXis3T5uVgfu/i8M/LNADBAs7Cs8u+mrNAPxgBe3Fo71YFnB
	VGxf+vbjXi9Qp1Fttngo9q5iPIR5yxKw4BzE2RBfy94bjY80L2zlQm0ytI4Y7YYkP0a3m3VHTIoln
	0lPDX2CIPQPurw14QrhVekStLL3mmbLqvVbvwCPgAnnKswbXQH5mW7OQE+Ny/da0kIGFFKnaUtOiK
	jQM6OTEfgYEDzB9WGT0ks8W8/Ve39CD5VWoqZ5mWxL9z3IadSM4gKaj7Mb1O8QjjIOD9T/8Wj9W3H
	EoscHFDCQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyRsm-0001Ub-8J; Sun, 10 Jan 2021 03:59:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyRsS-0001NB-J0; Sun, 10 Jan 2021 03:58:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 513C622EBF;
 Sun, 10 Jan 2021 03:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610251130;
 bh=3MHx5UbB1ooomqCTWXY1+5z312KLXluxdGw1tLFu/Co=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r+qPkbrdFRRNxUndCzWiKVuhfbKCUaT1gEje8QHFvG0CXnaJOn+Dyyx5LP679ejvb
 ygFM0o9fXt81AEFgWgXUn8uLFnRD9DSe8YLHuMWVUGkmo64sBLLNaekVd0RGkG7RR0
 1MAhLvRQSIspzZmu1eqjGayO957zAL2QZPOBJR+DUCBq8BcQJDtTvo347MNvLlPG7y
 JfxPFk5FclKJN/F05Y4mkTE13q8SdNv/CGnVeUJLO5slYoaavffOWgclwKBHUIQ62V
 v1m1yDmRdGevmWWLwB73/i8VYm7+wOnMxE2TrmyhJYd9juk7jSWjzO2zKZfy6BDpMA
 z5cuzQFo0iUqg==
Received: by wens.tw (Postfix, from userid 1000)
 id 0C72B5FB72; Sun, 10 Jan 2021 11:58:46 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: rk3328: Add clock_in_out property
 to gmac2phy node
Date: Sun, 10 Jan 2021 11:58:44 +0800
Message-Id: <20210110035846.9155-2-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210110035846.9155-1-wens@kernel.org>
References: <20210110035846.9155-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_225852_792841_4EC847FE 
X-CRM114-Status: GOOD (  11.85  )
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
