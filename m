Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B21C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 13:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8t3zQeOm4g2BtlZ9eprL3kicus6854ZxMlysAnFUo4o=; b=LpPFOi+dZxzReg
	tSXskOvCxX7QUbXMaZxA0lIK+GAFN7/8XC8P07cQfkFxy9tIZd+eNoJXPnQKF7HmrS3wwVZekuEsv
	6MF1OJDbt8RpciONL37x5N0xs3ZWUvsJCJA9KKMONi97U/csxrdKOsC8IfhxF75J0HJ/7zpHnAx/I
	bZQYCEQyn+TvuHhX57t3eliv4wX0XTaimvxCwPVMiR7H9nlbKsvu4U01Vw91VDt1J3Bu7UegifMTx
	oGP9viOEyQ/Xl637e81Z5Oq+eg8aOJvDBp6kZP1epeBfSMvNigAAaYbeo1IT+26BsaYRkb9hdjWoC
	pYpyk2BXmlIoZNt58P7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCgkm-0052K9-2s;
	Mon, 11 Dec 2023 13:55:24 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCgkZ-0052Dy-1F;
	Mon, 11 Dec 2023 13:55:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A3494CE128D;
	Mon, 11 Dec 2023 13:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB7AEC433CC;
	Mon, 11 Dec 2023 13:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702302908;
	bh=TgY6k7bjIZPz0mYLHVFe2rv2l0ZLAUu5HFTSEhZTUtU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kovH1jU+sajkA1egTKaF1AsIXy+knp+UmFdSNHfD6GBzv5pb5tIZHA8GK10HWKtgX
	 Y78bHBouYKlR3G1OdFjOOK6CF5NYZoZvqZh+BatLUKY18mwX9Hwh8CTmUjfHp8db5i
	 B/UznHDITvJXSeqeVOVFJ0pyFjtJBSEOEofWmZLyO3nHwiyi75ZnYdtz2zKpnuoRjp
	 LQEax7tIo4nfI1n5irOy46Zt3AYuPNDmqwJ+2J2qu5KpPCQF6n5buYKdHrX9fSQbc2
	 KOmejwybuWQJzYa7h5wPynsTIhoJ9lpHYY68T8JWhRnuBq8V8Bo84D8QzJ2dJLbhMT
	 dxz/8iarWIkuw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	frattaroli.nicolas@gmail.com,
	jonas@kwiboo.se,
	m.tretter@pengutronix.de,
	jensenhuang@friendlyarm.com,
	inindev@gmail.com,
	aholmes@omnom.net,
	jbx6244@gmail.com,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 04/29] arm64: dts: rockchip: fix rk356x pcie msg interrupt name
Date: Mon, 11 Dec 2023 08:53:48 -0500
Message-ID: <20231211135457.381397-4-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231211135457.381397-1-sashal@kernel.org>
References: <20231211135457.381397-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.66
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_055511_650785_6942C87D 
X-CRM114-Status: GOOD (  10.43  )
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

From: Heiko Stuebner <heiko@sntech.de>

[ Upstream commit 3cee9c635f27d1003d46f624d816f3455698b625 ]

The expected name by the binding at this position is "msg" and the SoC's
manual also calls the interrupt in question "msg", so fix the rk356x dtsi
to use the correct name.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20231114153834.934978-1-heiko@sntech.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 234b5bbda1204..f4d6dbbbddcd4 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -958,7 +958,7 @@ pcie2x1: pcie@fe260000 {
 			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "sys", "pmc", "msi", "legacy", "err";
+		interrupt-names = "sys", "pmc", "msg", "legacy", "err";
 		bus-range = <0x0 0xf>;
 		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
 			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
