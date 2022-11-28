Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E566C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EVfDohGE2b/7lwTnvDD8PZOqwhWJC1ub0bWebEs2eCI=; b=ZD98MnCgKRqLio
	QAMu0wtiWtNFqtH2CfbyInkzvVqa6YCrwJ8i/LQhCsfL18dGGKSUeUn/3TCAN+7BgMUabMSeZh7Dw
	rFQnoIm1yG5KQNgA0jvv1WhIkeAIwXWR35NvL0mzsE/E3Cr9mJN3HyJTWtDnOY1jSKP/Fr/UlCwoR
	re7W+OeiahaDpMsy7nkfnCzdJDAeYABXX/bGdxh20hasqiJFeZbM3EMqxYXpH+bTstXcTMwbQp/mI
	ZUVCLBP7BZh1JTzkG5YQKKNMIGGIPHMV8g47m7b1khv97h/xZnUvM+6wKyK9+5N5DrD0wMXI4G8gs
	r4LJp99dpN1/YsX8KPGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi3y-0037ln-Kv; Mon, 28 Nov 2022 17:37:02 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi3n-0037gW-J8; Mon, 28 Nov 2022 17:36:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 83CFDB80E9B;
	Mon, 28 Nov 2022 17:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F65AC433D6;
	Mon, 28 Nov 2022 17:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657005;
	bh=cqayjWhVXOPT0NLMgpKoGr2BJ1Uut2aHwfwUhFuDN3U=;
	h=From:To:Cc:Subject:Date:From;
	b=L5WzaLqs5+qrysgfrmGYN4efhaFAkz4QRAixo7mb+cdFXxCxsqHVKu2k7ryRbow1G
	 4Kn5zggQ9BMxdFNKQSbpu+GncwG2lVMI0Dz+XDghkky7VXQ1LTZkGe1O+jIdXkxhng
	 wLkYoriLNNEJOWqKeLELxldj30gJ0YsbL3KMDMrl0ycdifs1bKifXCPSvPBR9fiVE5
	 FWzR+IO2hyIfLpzFBVP58frTqRbQ9LCnuZxFnNNMj/15UyQIPdsfUH72HgkMFgSf9X
	 CmXGpAnds34FyzkrlJ22RbL8cmjJAKZ1lIeCp2Zi8KOQRxY5QakCgz+Z49JpxFVlZj
	 pjDH5VyFxumVA==
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
Subject: [PATCH AUTOSEL 6.0 01/39] arm64: dts: rockchip: Fix gmac failure of rgmii-id from rk3566-roc-pc
Date: Mon, 28 Nov 2022 12:35:41 -0500
Message-Id: <20221128173642.1441232-1-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093651_796578_6ADA9E4B 
X-CRM114-Status: GOOD (  12.12  )
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

[ Upstream commit adbab347ec8861aa80d850693df3cd005ec65a99 ]

Lan does not work on rgmii-id, most rk356x devices lan
is being switched to rgmii.

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
Link: https://lore.kernel.org/r/20221010190142.18340-2-f.kardame@manjaro.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 57759b66d44d..8db83088ae4e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -130,7 +130,7 @@ &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
 	clock_in_out = "input";
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m0_miim
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
