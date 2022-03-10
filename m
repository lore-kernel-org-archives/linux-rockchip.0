Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2AEFC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 01:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YyEHZtm+emBgvEIw9KTmX65ZOaaK7tBpGLHHz/STRKQ=; b=WXhx9qXyFM4OdX
	Au1PbZ+t8lkS8KdVJ1RX7pwijyEv6EbKZG5H7VJPJqmLfAe32PDiznvrVITU4XA69LDmfOM3yAAvJ
	eXI9q3Rfit1xgfL7OOUpV8pp5m9sQUN58ac2tAHsCdVSDBJ5Gu9L2RVugCzh9LZ6rnpqfE3owLZl+
	20RuBZZXsnRmjLRg4P8U2UVPdgNk2PogITBGi+SWzy7wexZ8CQqWICSZDMXZkvhrSKNsLMYICOeQt
	kMIy0heiEn/T1+nT7qwSMkpqLPqJXTlXnFnLGeC7TBFKYrJ2jiUztOTATzcuvyVbS2EK67Xt4cJ0B
	CkpIj+Ok4PopkZOBFU9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nS7km-00Az5i-Ed; Thu, 10 Mar 2022 01:38:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nS7kj-00Az56-5m; Thu, 10 Mar 2022 01:38:06 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nS7kc-0000Oz-Oy; Thu, 10 Mar 2022 02:37:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 5.18 #2
Date: Thu, 10 Mar 2022 02:37:57 +0100
Message-ID: <13959624.7hp8jFWaoN@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_173805_255595_AE1990D6 
X-CRM114-Status: GOOD (  12.60  )
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

Hi Arnd, Kevin, Olof,

please find below some somewhat tiny additional Rockchip changes
ideally still for 5.18.

I can also move them to 5.19 if needed though.


So if it's not too late yet, please pull!

Thanks
Heiko


The following changes since commit a0024f55eb5b741b76a0b950f1222ddbab6a9fc9:

  arm64: dts: rockchip: align Google CROS EC PWM node name with dtschema (2022-02-24 00:07:56 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-dts64-2

for you to fetch changes up to 9d25aadd55bb8c37c468661b506f932d15492028:

  arm64: dts: rockchip: Add #clock-cells value for rk805 (2022-03-05 18:16:45 +0100)

----------------------------------------------------------------
Some corrections for the rk80x pmic nodes, a supply fix for rk3399-firefly
and addition of the usb/sata combophys for rk3568.

----------------------------------------------------------------
Chris Morgan (2):
      arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
      arm64: dts: rockchip: Add #clock-cells value for rk805

Rob Herring (1):
      arm64: dts: rockchip: Fix SDIO regulator supply properties on rk3399-firefly

Yifeng Zhao (1):
      arm64: dts: rockchip: add naneng combo phy nodes for rk3568

 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |  1 +
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  4 +-
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  2 -
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  2 -
 arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 21 ++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 47 ++++++++++++++++++++++
 6 files changed, 71 insertions(+), 6 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
