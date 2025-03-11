Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C13C2BA1B
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ0ayECJelXIHRqoWoaA8ldh5fdLlndDoF4kevPRs5c=; b=JlQ8c2AvpKrJsB
	J4vD6vNGAmcoXpVXysBTKm3o+Csgb2zN+dTNDsF3Z0NplMIoj5/jB1VxIuDh2405l8vQ2JJw5iH5j
	9vQ7jS45Woo/EiFutlEZ0ArPmHBUBf5erRrrFqq2SVQZCZ38ws+eq5g6Uf8/rNaW230LsFSAl1mSu
	ct1KYiQ+B3lJGLF7zB/4H7jietZSh1nZa4KbEa2ZcFu6HXq6WhkeAQenTz8YGrYaHtJ25aLQ710LZ
	0ncG5loD6GYAUKh/KZTxt+MLpTEXUmCFsHko08ZnqyYEpUFl5lZLsgEX1zVxOy2mvXH6V5BHhRnMF
	x2l+uC/OnVtdycKp7qJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts4DI-00000006bgn-2RJP;
	Tue, 11 Mar 2025 18:20:24 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts3zG-00000006YhS-0wCK
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Mar 2025 18:05:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5EC09A46100;
	Tue, 11 Mar 2025 18:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 016F2C4CEE9;
	Tue, 11 Mar 2025 18:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741716353;
	bh=UiJD4WfkyLfCbR2ZJLLU8WXPTcPUoC5Ue3GNIH9PRo8=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=AjA+qXP9Ju/93iEYW8zIT5GUGWy9J4D3JM44IsC5ht6nUGIvPwqPO6JJxu9ejSwpr
	 T2A5rrRI8U0/AOHDvZmFh1hfrz1dUtjEpcXBMzphk6zEcWcoZsMLoeK9mPl9Hz9lnT
	 9aUn/maga/AM6A31ExMIX5SNn+v8+URTXAHWc0OgggVaVhJT7kGl4AIvBtLtnyzL9q
	 zF+OrOjIwW4L7qpMpAmWHQrR33/4uVE8I0EIBQcg2Bimb2oVaKio1eVKEknU9Xt3kW
	 KYw5FxiEkOnMlGiP0ToOyxRstHpbdg09DkjPI9B7m+rxbGKuYnCXRyRV70zwMF6Q4m
	 Fd3TyVdbwVqrA==
Message-ID: <33a5e73e9c3919dd0554f9dcbee8b733.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <8574162.T7Z3S40VBb@phil>
References: <8574162.T7Z3S40VBb@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.15 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 11 Mar 2025 11:05:50 -0700
User-Agent: alot/0.12.dev8+g17a99a841c4b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_110554_332906_63E2EFF4 
X-CRM114-Status: GOOD (  10.28  )
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

Quoting Heiko Stuebner (2025-03-08 10:23:39)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock change for 6.15
> The new year started with a flurry of activity it seems :-) .
> 
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 2014c95afecee3e76ca4a56956a936e23283f05b:
> 
>   Linux 6.14-rc1 (2025-02-02 15:39:26 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.15-rockchip-clk1
> 
> for you to fetch changes up to f863d4cc79a7e2f8c734d1fac84dc275805f41c7:
> 
>   clk: rockchip: Add clock controller for the RK3562 (2025-03-02 17:51:51 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

Did you see this warning?

drivers/clk/rockchip/rst-rk3562.c:21:57: error: initialized field overwritten [-Werror=override-init]
   21 | #define RK3562_DDRCRU_RESET_OFFSET(id, reg, bit) [id] = (0x20000*4 + reg * 16 + bit)
      |                                                         ^
drivers/clk/rockchip/rst-rk3562.c:266:9: note: in expansion of macro 'RK3562_DDRCRU_RESET_OFFSET'
  266 |         RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_PHY, 0, 8),
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/clk/rockchip/rst-rk3562.c:21:57: note: (near initialization for 'rk3562_register_offset[173]')
   21 | #define RK3562_DDRCRU_RESET_OFFSET(id, reg, bit) [id] = (0x20000*4 + reg * 16 + bit)
      |                                                         ^
drivers/clk/rockchip/rst-rk3562.c:266:9: note: in expansion of macro 'RK3562_DDRCRU_RESET_OFFSET'
  266 |         RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_PHY, 0, 8),
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
