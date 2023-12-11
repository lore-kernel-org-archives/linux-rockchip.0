Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD85C10F05
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 13:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGfzextbq6evtVnUBKU8L0tfEO8Z/dcKP7HC64fRWBg=; b=0jZ0xaS0gGP3dd
	CZXh1zaZEMKFz4fQmFr61I+ggixWqkPXLnS8hsoqa24BevvLWlenDwKsAOL3w4RstIjE2h4Mnni/T
	o9Em8qHeumVOcjUC8zKk7VnyCDmWjH3KqUE4fdzDvMM2GRCxokr489BWfjlXJxcvArbipEX2uPtOo
	F2uGpqQgxA10Ep+F1LL71wTFaYm9xepiiKxj7LpibIq1Ntr4oKCqgEEuYgMq2DfXeEaogTE2ujSaY
	i4NSkrvODP4JcHmg6xWSZIbfEvcesPK6YpAHkjSb+HpKWxAUQs4kyWvEpRtY1vRxutMRYpIF3F6KS
	tmxZtdO6MD8WVKUmiw0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCgiB-0051Hg-02;
	Mon, 11 Dec 2023 13:52:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCghg-0051CJ-0E;
	Mon, 11 Dec 2023 13:52:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 21758B80E59;
	Mon, 11 Dec 2023 13:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91354C433C9;
	Mon, 11 Dec 2023 13:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702302723;
	bh=8IQSzUikd1CKaFoLmAHQxHAUP1cfJGx73DGJFN6Qhmo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tv2Dqp8RTdnqcQi6pDg6bR8xa3LhSZ1id+1rbosn+OMpXvplltpVzI/RHYnqRi93T
	 7SX1FVA9hfg9sFWHjYSi4lSHHGEWR7FVtb9ckrz9INpWswH+11uc8SdALuQDRTxI1O
	 Cd1xO7Ap25gtT5lRMe5uGQmqtYltDNGUYpMNU5h/vfM9O65AQDMm2axzWq6fx7hkrf
	 St1mfbXTB2nrr1R7/NnKD0MtAe9OT4kMdHo5W/f6aqWRNdj7BrY/aXwBnyKwvtqtyD
	 TdsnhNkAMjoKWfXHZjBI/ufO3MlH2UUC5xFbbGfYoWz/IW+N22u/0+YSzrFjRXom90
	 16SBfjYdAxRjQ==
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
	jensenhuang@friendlyarm.com,
	inindev@gmail.com,
	m.tretter@pengutronix.de,
	jbx6244@gmail.com,
	s.hauer@pengutronix.de,
	aholmes@omnom.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 05/47] arm64: dts: rockchip: fix rk356x pcie msg interrupt name
Date: Mon, 11 Dec 2023 08:50:06 -0500
Message-ID: <20231211135147.380223-5-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231211135147.380223-1-sashal@kernel.org>
References: <20231211135147.380223-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_055212_247886_8A7BA725 
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
index abee88911982d..b7e2b475f0707 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -970,7 +970,7 @@ pcie2x1: pcie@fe260000 {
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
