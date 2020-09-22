Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 404DCC4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 13:35:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 315EB207C3
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 13:35:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lzw3CuwH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 315EB207C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cEF9bDCq1vRkSDLztVLPMnpkgNQs0S+agT2RTw0F35c=; b=lzw3CuwH+I6jc2ao4KGDgQcqF
	If5EvAGLjXa9wuXvNIf0CDfRGKK8a3wFBT51P8oyEp3byZtcw4b82lskx8DEBWVLH2rTCF1JUYvWu
	ogppzEfWuqJDCGY93EEAepwoh2308oz4c+Ksplq2yDsXfoILJxnWBRQuEsw4LiqoHoSoki3x7GEy0
	8bNPeq+en0zRifAy0DOUYsIwDgt/km8DN92jt7t6K+COg6ERR4qbu1mEhysASQoeW87N92pJndRR5
	7kI+DIcNthmra627e6jDoEQOotYEIrlbVkkK/aNJW0aITlHJhO/zDGOwxDhP5b6sPQMlSX7B4buZK
	pU7tNGKXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKiSI-0007fT-J6; Tue, 22 Sep 2020 13:35:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKiSE-0007ex-HN
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 13:35:37 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kKiSC-0000Mu-4V; Tue, 22 Sep 2020 15:35:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v4 0/6] clk: rockchip: Support module build
Date: Tue, 22 Sep 2020 15:35:30 +0200
Message-Id: <160078161850.2368325.2980207509081000555.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200914022225.23613-1-zhangqing@rock-chips.com>
References: <20200914022225.23613-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_093536_376545_32CA354A 
X-CRM114-Status: GOOD (  14.09  )
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
Cc: huangtao@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 xf@rock-chips.com, sboyd@kernel.org, linux-kernel@vger.kernel.org,
 xxx@rock-chips.com, kever.yang@rock-chips.com, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mturquette@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 14 Sep 2020 10:22:19 +0800, Elaine Zhang wrote:
> Export some APIs for module drivers.
> Fix the clock config to support module build.
> Fix the clk driver init, add module author, description
> and license to support building RK3399 SoC clock driver as module.
> 
> Change in V2:
> [PATCH v2 1/6]: remove "clk",and check "hw" isn't an error value.
> [PATCH v2 6/6]: store a function pointer in the match data.
> 
> [...]

Applied, thanks!

[1/6] clk: rockchip: Use clk_hw_register_composite instead of clk_register_composite calls
      commit: 63207c37eac4f15fdebac14685a315c259c0a780
[2/6] clk: rockchip: Export rockchip_clk_register_ddrclk()
      commit: f73907de3493b94d80af5122bcacc98f0e7b295b
[3/6] clk: rockchip: Export rockchip_register_softrst()
      commit: 37353491d1a8c207685c138c3640bd43864b70d9
[4/6] clk: rockchip: Export some clock common APIs for module drivers
      commit: ea650c26611dd61adfcc8647d6144f2c9f453d90
[5/6] clk: rockchip: fix the clk config to support module build
      commit: 4d98ed1e126495016f2a3ef4db6379855c4aacf2
[6/6] clk: rockchip: rk3399: Support module build
      commit: 70d839e2761d22eba6facdb3b65faea4d57f355d


I did some minor tweaks:
- in the Kconfig texts "Rk" -> "RK"
- made the rk3399 entry bool in patch 5
  so that it stays correct when a bisection lands between
  patches 5 and 6
- made in tristate in patch6 which adds the rest of module
  elements


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
