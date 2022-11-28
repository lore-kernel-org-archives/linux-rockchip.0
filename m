Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DECDC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dC1F/C0e69llB4JzuA9xTkIbzFayETM3jXqD4FbfZ0=; b=GVqQOuNIWIBKRZ
	Zjw3yAx95iRkTGvkyzSwE1kjp71Rf7s+uz0QmjL7N0IbBfEfyDjTc6u5SWslANCdoDbzw0b9vVKIm
	PnEQMNr7/eJlWnovi7BmY2NuJC3ayZ0fszT48y1hQ4FhT6qCkT84D5f0S8APTxbo7HCLgIXSe1POq
	BiAFKgac96Zj0erIme4vzW7JrSc7gCMNlxFF4fvv6LZPt2V3qZ+n4/26r4qeUMR0VkkMi/S7VHFyp
	SjnxPBXtKH1tgMvWkbPcRJW1h0UUbXUX64tY+oIqazyXzi4bAsBzFPE8k93fNgDY3BbDEk5ag6y+M
	IXH1uzyhImaCQgq6iNNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziVE-003NSj-NB; Mon, 28 Nov 2022 18:05:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi8I-003ATB-KQ; Mon, 28 Nov 2022 17:41:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1EE0F612C4;
	Mon, 28 Nov 2022 17:41:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 039D9C43148;
	Mon, 28 Nov 2022 17:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657289;
	bh=NWO6d1r0dHwtcLXY8X9EZUX4b6ox/W0fdh6vYEyrTlc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YQ0BdKWol9M6gsgwn7BoO2RbPyeWwp0QGaZctLvuqXI2QoQIwYOKUhsStJVkpt3Oi
	 u3SimNVRDgrDEmMN1hGGZIfzhxG4rOLrzG32gCb4/duaMoqjIWRoOdZoYAzsOcxJDD
	 kIxETHCBDUXRgxK46FaG0inPSEDSACwReSylqOoEhZBjAM+2tbuavuLw1SvsrA4zRw
	 +cuo4AUFQGNsoXTyokCSPC5k+VMFmfeEXJMQkRN6EPuTUbi5synjD2HHoKkpzCFDqX
	 PRRdcp7qzpqOWEHw1aFHfSFqwVolKCztVBbd7hJAUQZ4SsM5Dh1sL8AbYn+msZ8Yv2
	 ZTtJne0CltxmA==
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
Subject: [PATCH AUTOSEL 5.10 05/19] ARM: dts: rockchip: rk3188: fix lcdc1-rgb24 node name
Date: Mon, 28 Nov 2022 12:41:05 -0500
Message-Id: <20221128174120.1442235-5-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174120.1442235-1-sashal@kernel.org>
References: <20221128174120.1442235-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094130_746304_0DD0C048 
X-CRM114-Status: GOOD (  11.36  )
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

[ Upstream commit 11871e20bcb23c00966e785a124fb72bc8340af4 ]

The lcdc1-rgb24 node name is out of line with the rest
of the rk3188 lcdc1 node, so fix it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/7b9c0a6f-626b-07e8-ae74-7e0f08b8d241@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index b6bde9d12c2b..a837a9a34e3e 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -402,7 +402,7 @@ lcdc1_vsync: lcdc1-vsync {
 				rockchip,pins = <2 RK_PD3 1 &pcfg_pull_none>;
 			};
 
-			lcdc1_rgb24: ldcd1-rgb24 {
+			lcdc1_rgb24: lcdc1-rgb24 {
 				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_none>,
 						<2 RK_PA1 1 &pcfg_pull_none>,
 						<2 RK_PA2 1 &pcfg_pull_none>,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
