Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14BF6C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 11:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jIE8UNweK2VH7jzmQduXk9JSGHUsA4UQ8ZO9m7xXJ6g=; b=otl+Rb5aZuwbwc
	8fKJ9BezZfNHQcN5bVi3T03RP3N2HEFWpsJpL42nkErgf2rM6VSOAfc4TX6KEkYwB0RlerDfr97lQ
	mT/iWX6Z+VKZcOg1O0vdhja2gVhzLAn0euv2azxW9dCR9Z8fdWrmIDZcJT7NSHNNqVIpect+f6H3o
	EiVXw8KV7O4k2jI959EqZH/nm5oS16hRrQGcrl4BLrR3MUFdR3lg50ATEjzhnMCKrQyrPTm+iFRf7
	D0JaOv13QmMTMF/Fjmj93BoiI9vGAXLlak3bwiyQJik7QNbThCq3/Wlo5SVAiaXvX5VfhEv2zNxeY
	u227l7Cr8uv/yxbStHGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gSo-00HM5X-Dw; Tue, 05 Jul 2022 11:11:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gSl-00HM3t-LJ; Tue, 05 Jul 2022 11:11:28 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o8gSk-0000Ch-BY; Tue, 05 Jul 2022 13:11:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 5.20 #1
Date: Tue, 05 Jul 2022 13:11:23 +0200
Message-ID: <14795241.VsHLxoZxqI@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_041127_724526_ABFB483A 
X-CRM114-Status: UNSURE (   8.24  )
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

The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.20-rockchip-dts32-1

for you to fetch changes up to e5a3cbe8b45b0a436a39cc969b7bcc8353248018:

  ARM: dts: rockchip: correct gpio-keys properties on rk3288-tinker (2022-06-22 21:04:38 +0200)

----------------------------------------------------------------
NFC flash node on rk3066a-mk808 and some dts styling fixes
(alignment and node names).

----------------------------------------------------------------
Johan Jonker (1):
      ARM: dts: rockchip: enable nfc node in rk3066a-mk808.dts

Krzysztof Kozlowski (3):
      ARM: dts: rockchip: adjust whitespace around '='
      ARM: dts: rockchip: align gpio-key node names with dtschema
      ARM: dts: rockchip: correct gpio-keys properties on rk3288-tinker

 arch/arm/boot/dts/rk3066a-bqcurie2.dts                 |  4 ++--
 arch/arm/boot/dts/rk3066a-mk808.dts                    | 18 ++++++++++++++++++
 arch/arm/boot/dts/rk3066a-rayeager.dts                 |  2 +-
 arch/arm/boot/dts/rk3188-bqedison2qc.dts               |  4 ++--
 arch/arm/boot/dts/rk3188-px3-evb.dts                   |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts                 |  2 +-
 arch/arm/boot/dts/rk3229-evb.dts                       |  2 +-
 arch/arm/boot/dts/rk3288-evb.dtsi                      |  2 +-
 arch/arm/boot/dts/rk3288-firefly-reload.dts            |  2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi                  |  2 +-
 arch/arm/boot/dts/rk3288-phycore-rdk.dts               |  4 ++--
 arch/arm/boot/dts/rk3288-popmetal.dts                  |  2 +-
 arch/arm/boot/dts/rk3288-r89.dts                       |  2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts              |  2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi                   |  4 +---
 .../arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi | 10 +++++-----
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi        |  2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts             |  4 ++--
 arch/arm/boot/dts/rk3288-veyron-pinky.dts              |  2 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi                   |  2 +-
 arch/arm/boot/dts/rv1108-elgin-r1.dts                  | 14 +++++++-------
 arch/arm/boot/dts/rv1108-evb.dts                       | 14 +++++++-------
 arch/arm/boot/dts/rv1108.dtsi                          |  2 +-
 23 files changed, 60 insertions(+), 44 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
