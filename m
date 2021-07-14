Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11D2DC1B08C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:40:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB24D613E4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:40:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB24D613E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdfMrsk9gVRfNN0HE/XmRtqU9eXxbggcBemijsQlbDc=; b=d23usLjAi/aQmg
	qBzpm8yoHxp6As5pMgOJ9yUdBi8yGCqErswq61TgaacB4mojo/dwu8Q2F3Skul15hfHGPx3jywfz3
	Ps5Dr15iOP5/699hbrdsF1u1Fdefyepwit7/bLlrtThT/EnNFHzrsWBZ2r66QJi+My1sXpkkmGZ9c
	i9cNsAoZZLNhj1yCcWOPIP4Gj3tfN193Y8bFOVHMJdc860Z1pqjAmFidgo2TMjJVh8CQ58JT5oCZr
	Su+dAdFLz2MeeqJFFKjIic6pc8t/sg4H5RVZ39Xblvui0cwuAHB9mAjSMObhe1FExU/3DJJOHFAt4
	KocbJeRXfcnwwewncxog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3kjk-00Eciq-An; Wed, 14 Jul 2021 19:40:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3khs-00EbYN-RT; Wed, 14 Jul 2021 19:38:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A3781613E3;
 Wed, 14 Jul 2021 19:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291488;
 bh=aNDyYKcACJG0/ugU4EXNpQ6crJZpl0S+SDAfkc9b6AM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jwH8Nt3luf0IpCxXMTE2mxhcEPoSPFVC5DG78rQYxagFM4W7SHRQT3p2ON/WarCo0
 CqB9mbDHiBUXqpwSypH+2QHfg8JbuUPP6StVHb1TH0w5rtVEU09xOkCyqLO7bceJv0
 vvpcvs4g56rrUyJ0WMEGfZBFIKHDI5hG4m883LX7ycXDA+tOE6cfBKNVdkmkV7h1aU
 M2WcMNfOxwIWmgKQGHapoRS9m8O8mklbGiJ+QjYnJjVHh9EH1G/xcZsHts1PP3IHWa
 fYTSsBCoZbpPrx4E89FnjLFTk6mLDC8mu6DMApWLU2jIND0bZKJSf9He+nJXTw5yyq
 YPJaKBNXwOvgw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.13 005/108] arm64: dts: rockchip: Use only supported
 PCIe link speed on rk3399
Date: Wed, 14 Jul 2021 15:36:17 -0400
Message-Id: <20210714193800.52097-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714193800.52097-1-sashal@kernel.org>
References: <20210714193800.52097-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_123808_956271_68CEE3FA 
X-CRM114-Status: GOOD (  10.15  )
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

From: Peter Robinson <pbrobinson@gmail.com>

[ Upstream commit 954d5986afa50c178ea7554e6abdd611d08f5ade ]

The max link speed supported by the rk3399 is already set in the
rk3399.dtsi file so don't set unsupported link speeds in device
specific DTs. This is the same fix as 642fb27.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Link: https://lore.kernel.org/r/20210413141709.845592-1-pbrobinson@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 16fd58c4a80f..8c0ff6c96e03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -510,7 +510,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	vpcie0v9-supply = <&vcca0v9_s3>;
 	vpcie1v8-supply = <&vcca1v8_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 7d0a7c697703..b28888ea9262 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -474,7 +474,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index c0074b3ed4af..01d1a75c8b4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -329,7 +329,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
