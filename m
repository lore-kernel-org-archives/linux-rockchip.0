Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E5EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqarWYuzBDVxigQGr1csjLqrkiw4oLUzo+1ysHAUIa0=; b=Ugk9qpYsZCFKAW
	5uBW9k6TGcIPReUXk+8wN8M9KBjcgB48MnyyTT57yakkaDeiJ9XRgs40Mlbz+8k8wfE1qIs5q10XU
	YRvNuAp8S9yjxmWmkfIQpcHiaohPT+CapvqfWQI94XncjlHz0w+pWVCIJpGOk3XHJfOfrKEVwS1Rt
	QkkN4DlitVNmGkp/lgAKfzOZkp6N7dTy1/vldHe5UQY+uR4Lwm7C4ZGu5hXqNVKhAKcxnOfgkNuGc
	7lDEOermpA9WM6vv2PlBuWbsq5TpSsiX3IV+0ExEn1balBouEHukfoczZr2lSzVcw3rCY34gfeP0I
	MnHV1/n0zKmO8dQ1JH8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRz1v-009Kth-7S; Wed, 09 Mar 2022 16:19:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz0b-009KFL-PH; Wed, 09 Mar 2022 16:17:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5524C615F1;
 Wed,  9 Mar 2022 16:17:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED288C340EC;
 Wed,  9 Mar 2022 16:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842672;
 bh=7D3pUXqXjHzFHv7MUp8ajskK4tYH1lFUmXAWGDVys2o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d24K6rXBeFma+DRehRgtoQeVRn0TxhhzldaBLecJfNcmWoTW5UfD7wpwpEVG6NTXV
 Q1eCK+cSzqnUzvMDeOjkyFiRZSAbXZ3FXI4/D/UrT9MowVS60lNiDPuEL5KyhVwg3Q
 2xu7Ci4+XYkJ5zvcVp2FOJmq4J+J9cwtb65qGquVOc0eIJYMNtkuig+/jhXOz83oOU
 0Z7NLUYdJ1bXr0ptfjThYO+o8kinTuKtl7WVNWALbBmPEocjh0T1DL1L5CMM0CnbIh
 46Ov5mXs1X0e32N+EY7ak98yUgvk94/ocd/9LDPm++F1Q3Sqq0WvNMg3lgz70ynYBy
 dQ04hkD6cCINQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, jbx6244@gmail.com, benjamin.gaignard@collabora.com,
 jon.lin@rock-chips.com, paul.kocialkowski@bootlin.com,
 macromorgan@hotmail.com, maccraft123mc@gmail.com, zhangqing@rock-chips.com,
 davem@davemloft.net, knaerzche@gmail.com, cnemo@tutanota.com,
 ezequiel@vanguardiasur.com.ar, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 06/27] arm64: dts: rockchip: align pl330 node
 name with dtschema
Date: Wed,  9 Mar 2022 11:16:43 -0500
Message-Id: <20220309161711.135679-6-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309161711.135679-1-sashal@kernel.org>
References: <20220309161711.135679-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_081753_908250_6EBB9F9F 
X-CRM114-Status: GOOD (  12.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

[ Upstream commit 8fd9415042826c7609c588e5ef45f3e84237785f ]

Fixes dtbs_check warnings like:

  dmac@ff240000: $nodename:0: 'dmac@ff240000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Link: https://lore.kernel.org/r/20220129175429.298836-1-krzysztof.kozlowski@canonical.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 00f50b05d55a..b72874c16a71 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -711,7 +711,7 @@ rktimer: timer@ff210000 {
 		clock-names = "pclk", "timer";
 	};
 
-	dmac: dmac@ff240000 {
+	dmac: dma-controller@ff240000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff240000 0x0 0x4000>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 39db0b85b4da..b822533dc7f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -489,7 +489,7 @@ pwm3: pwm@ff1b0030 {
 		status = "disabled";
 	};
 
-	dmac: dmac@ff1f0000 {
+	dmac: dma-controller@ff1f0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff1f0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
