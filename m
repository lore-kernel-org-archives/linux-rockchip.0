Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BDC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 18:27:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 777C22311B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 18:27:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 777C22311B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=brMTS6yKh17F6daJwO5gRvklPnacqZR9uhkUysrwplw=; b=jjuTxNGdHAxYAGoTOAp9wzsv9g
	3SwfuBHsNvvroi1u455zN4YUeKBxjGMD4+n5pJ/TdVpzZMRuVmXVLlXOWn+EtlujDWSjMOXupU01R
	L/piWQCekanUiLPwASRBreg0hAiIM/5GQDaZVdFzDLL1+lJJ6CJ5ScJTiZS5ruJ9RPTY2zc8t+N5f
	NLwphHsfXfwzZt93MPYIcCrBBi0v/Ck1XqBHaMEJ5pBtFhLZ2IR7y39jy0sFBNLHzC4FDmDCm5N8+
	70Wc6nBff6KHaEzp2jO8HjzHAnzRLURQPQrT9Lr3u8u+oNP+wy4TzAAI9Jzs0tHGyUqhkNnpJJK3f
	9YMGWN7A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klyl7-0002g4-Ro; Sun, 06 Dec 2020 18:27:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klyl5-0002ff-Lc
 for linux-rockchip@lists.infradead.org; Sun, 06 Dec 2020 18:27:44 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1klyky-0003v5-Lx; Sun, 06 Dec 2020 19:27:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock changes for 5.11
Date: Sun, 06 Dec 2020 19:27:36 +0100
Message-ID: <5662766.lOV4Wx5bFT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_132743_722642_67EFAB84 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mike, Stephen,

please find below Rockchip clock changes for 5.11

Please pull, thanks
Heiko

The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:

  Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.11-rockchip-clk-1

for you to fetch changes up to caa2fd752ecb80faf7a2e1cdadc737187934675e:

  clk: rockchip: fix i2s gate bits on rk3066 and rk3188 (2020-11-29 20:10:45 +0100)

----------------------------------------------------------------
Added arch-dependencies for the newly added per-soc config symbols,
a unneeded redundancy removed and making i2s actually work on the
rk3066.

----------------------------------------------------------------
Johan Jonker (2):
      clk: rockchip: add CLK_SET_RATE_PARENT to sclk for rk3066a i2s and uart clocks
      clk: rockchip: fix i2s gate bits on rk3066 and rk3188

Robin Murphy (1):
      clk: rockchip: Add appropriate arch dependencies

Xu Wang (1):
      clk: rockchip: Remove redundant null check before clk_prepare_enable

 drivers/clk/rockchip/Kconfig      | 12 +++++++++++-
 drivers/clk/rockchip/clk-rk3188.c | 35 ++++++++++++++++++-----------------
 drivers/clk/rockchip/clk.c        |  3 +--
 3 files changed, 30 insertions(+), 20 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
