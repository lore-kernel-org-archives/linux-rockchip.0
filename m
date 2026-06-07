Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A513BCD8C90
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 21:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fkFI4xRMXW5EuzVpF7v2r1iwXCrJAK+a877mJMjnY/8=; b=eMYxY7QhamlX32
	xJQYyrP98Qg5JGl8aQiJNP2GctdUwSzIOPgH2OvdTkdrdIgCiYg/bF5I56dqsMp8hEYnahLT+nXYn
	XVoeqzr1uQNsvYMe+gG01aUCb0ASUde5KWFehXZ/ehZCp61yxmzGeEjTA8mc/QZkT0JDyUxJAnCrF
	lA2KgNRAIvWPabgK9UO74Uk3XsciO42MfgttzQddYq3YZxNYUKLTB7nOyYdIuls+EcXP473KwzVCv
	Vo0zTqePvjcZl0JHbzLayCUfiYtxOkv6QfFmXVYgA7r5cPtPO57hUvhO2ud3rENO/p+OR/lrjNuDk
	mwzvHpEXQjFRNsItNOZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWKas-00000002URc-2NvH;
	Sun, 07 Jun 2026 20:59:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWKap-00000002URH-25QI
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Jun 2026 20:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=4NlgDV4TsT6w9EnMlZlG3KYV9Ye7aOC12HGWEXLPzwQ=; b=n5Rqs+xqbCzLFNuTJer3hO90nJ
	PeXBBvCoE4xYqlA5LO7HDyVAr001Eqwy2y04czk9f4rzcwad02QjMzJjxcvkRsiRChLo++MDQDCs4
	9Nyth6SopWz9WnDPHH1WffXLwSbalB/WtcT46NAkObiFDQeVfBXEXaQA/rBq9Jo+YrGdguwZHfNq5
	Cv4KRaxI/pjwm0kfLMPtOQfiXCMt8QHoVFBrhZYWwWXl3i190Ih3MtiLFXPXX+meJ/k0jXQp2yqzV
	ljBr8JyLS9r4aljgBCIS7fJVBcegmXY+VliNVaZ9JN4t+xmUaJaNEM6GULDO/VTMhq6OxU8VzWyax
	XsUysyJQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 7.2 #1
Date: Sun, 07 Jun 2026 22:59:31 +0200
Message-ID: <4272848.9fHWaBTJ5E@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_135939_604437_664846CA 
X-CRM114-Status: UNSURE (   8.43  )
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

Hi Mike, Stephen,

please find below a pull-request with a Rockchip clock change for 7.2

Please pull.

Thanks
Heiko


The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:

  Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.2-rockchip-clk1

for you to fetch changes up to 7edfb7fb58ee058298e18fde76a6077ef17d19d8:

  clk: rockchip: allow COMPILE_TEST builds (2026-05-13 12:35:57 +0200)

----------------------------------------------------------------
gate-clocks for i2s outputs on rk3588 and allowing compile-tests
for the whole clock driver.
The sparse warning when the Rockchip clock is compiled on M68K gets
fixed by:
https://lore.kernel.org/lkml/b55e9bd0532c0cad519809c86e0a8400060d75a1.1780559561.git.geert@linux-m68k.org/

----------------------------------------------------------------
Daniele Briguglio (5):
      dt-bindings: clock: rockchip,rk3588-cru: add I2S MCLK output to IO clock IDs
      clk: rockchip: allow grf_type_sys lookup in aux_grf_table
      clk: rockchip: add helper to register auxiliary GRFs
      soc: rockchip: rk3588: add SYS_GRF SOC_CON6 register offset
      clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK output to IO

Heiko Stuebner (1):
      Merge branch 'v7.2-shared/socids' into v7.2-clk/next

Rosen Penev (1):
      clk: rockchip: allow COMPILE_TEST builds

 drivers/clk/Makefile                            |  2 +-
 drivers/clk/rockchip/Kconfig                    |  2 +-
 drivers/clk/rockchip/clk-rk3588.c               | 16 ++++++++++++++++
 drivers/clk/rockchip/clk.c                      | 25 +++++++++++++++++++++----
 drivers/clk/rockchip/clk.h                      |  3 +++
 include/dt-bindings/clock/rockchip,rk3588-cru.h |  4 ++++
 include/soc/rockchip/rk3588_grf.h               |  2 ++
 7 files changed, 48 insertions(+), 6 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
