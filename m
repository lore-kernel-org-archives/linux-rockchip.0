Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44954C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 09:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8QGqQTVOt1xJUVKuCe8Xb9DXqlRps3o5evYrXe3K4+8=; b=5FJpLSXOzxs5Zc
	bocqf9MIE3j8+ycywef5RhMWkaikF7XHrgGkGrhHB58vKtRZqtHJ5dahRM66Z6YciOhT7RcYEb28W
	qfVqqd6KT/kmHNFixhsJJ447S4KMwHerFJuK3DnvbG9bJSapUpvGd6OxeNAp67Fm/5SOG5oHp4NX6
	opRWaIIAOY4G5XPacURzuyQz8Z+OcRgJqNfPmohiJYvcXvm28waLANFTATXekMm0m+NTf3ltWNqLg
	q1Usfx42kawKAIbAMqCFWl0tCCmnEu8pUmoEiLiFaC6paZUJS29bdv9lbtP/e+nrEj0c+KANGMgO3
	gJRWuWeLMAQf49WPLAKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGa7y-00000006wGk-1uUr;
	Sun, 18 May 2025 09:16:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGa6z-00000006wEB-14K6;
	Sun, 18 May 2025 09:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=W4J6qUCgr2xFYUK7thE18AVHm/Cu762gWUY6fTaYNJ8=; b=w9tEFaiT4dteQGSpwYYmLs5Xbb
	HKUsH305X8MCwTLUqIJQiNtTAepiZwtePWW1yMxNf64NWZ2/ZnyFIlFS5P0YlDfLKxoCnF+erhkWR
	nB2yrZaWsl2r/SshkoPvPtEUAQQvIxrZY8kSktzZo1nddNOHiXe7vurpOeeIci6N0NP2c90yf/DNQ
	g2o2QPuor9IitHkliPq1RpDKhiQ2VmvfH+03LOrT5/gnP8D9/e/oNT1V1ZjN+S5I2LqVhYqLk3ZK4
	l9xD0S09NCdYtbLGTdEm8e09BEm9bvyrwWjifZP3y+G1dHm6skvjnu7ccTC0fDPcIR/z/5WokSOP6
	UncFSKrw==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uGa6x-0002Gp-VD; Sun, 18 May 2025 11:15:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.16 #2
Date: Sun, 18 May 2025 11:15:11 +0200
Message-ID: <3652020.5fSG56mABF@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_021513_299544_FE1D64AD 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
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

The following changes since commit c895c32bf1ce90839fc525c5d23cbf867ebe519a:

  ARM: dts: rockchip: enable Mali gpu on rk3066 marsboard (2025-05-05 10:20:11 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.16-rockchip-dts32-2

for you to fetch changes up to 9e010737dd434e3eee1fa75938abea0dc2fab8e2:

  ARM: dts: rockchip: add rk3036 usb2phy nodes and enable them on kylin (2025-05-15 13:36:29 +0200)

----------------------------------------------------------------
RK3036 usbphy addition and two Sonoff iHost adjustments.

----------------------------------------------------------------
Hao Zhang (2):
      ARM: dts: rockchip: Sonoff-iHost: adjust SDIO for stability
      ARM: dts: rockchip: Sonoff-iHost: correct IO domain voltages

Heiko Stuebner (1):
      ARM: dts: rockchip: add rk3036 usb2phy nodes and enable them on kylin

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts        | 12 ++++++++
 arch/arm/boot/dts/rockchip/rk3036.dtsi             | 35 ++++++++++++++++++++++
 .../arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 14 ++++-----
 3 files changed, 53 insertions(+), 8 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
