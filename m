Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0D40ECE58B
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 21:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3NgKMze00m+9tqRUgLz4qrtkxqKtbnhtPwylcAHeO8=; b=rjBoFRPDJTt62z
	0Oc2gfccPQyh2ONWTtCe8yoRxaHmYFd66q7Wz3cTEo/JlbRBgk0NimhdAFphvGD/pSMD+535K7DnF
	ZmM9cMeBPwpZfBFI3087SoXEOEewi+/ogk5RoH17chECFmuZd/tyKe64+Aliv7ib/bO+f8r6+aHGt
	T7bwnTf+o/uM3oSjmvl8a+nAZyF2S2olqDqRFMboBFPz7yvW0UrVtAjHpjIuOgFocENdSGo04dTXV
	4fpiST9Q1r6B/OzhFXQXNeAJevtZ+/0FnoM9HCDY3zDGHmkd+m+NIsTJR8iUtJc6Jl+GjV1mZ+NMC
	sJqMv4jPUd/WDN1afK4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlfj-00000003Kdw-0fRr;
	Mon, 09 Sep 2024 21:11:43 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snleg-00000003KXE-3KfE;
	Mon, 09 Sep 2024 21:10:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6D979A43E05;
	Mon,  9 Sep 2024 21:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7133AC4CEC5;
	Mon,  9 Sep 2024 21:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725916237;
	bh=MrtANQVha9P9Lvw9CKpcpRx9xPN484pTQpV1GPE55pg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=c4h6DKHmlCr0T/qOShqLVJP/Kvyd2M5/1qtoReBDD/dRwJfzgbmcqVRXvHd8T+Ilq
	 xz8XHZYVxeN0SAy/WS28yczlCiCUHivOWFGRxR6fSLVxApWDA1wZKe/dwPyvT2cbkm
	 361kZB3x+A5ucP6YIV/PgLamWC4Eb5OAXFqlkEbsf6gh27rnZ/MIRxqbSvAEa0K6Pj
	 F4LdOAiwo5evOLOELkhoU0dIfH9qrjlnjXuFsIfm8/QtjmFKqKRRHU/GzMfK2f9dPq
	 3lcBEW2ene9zeFGRHaozo7puHbqGVxEyDUgyHFbiOD5WRigj9jM3GMjyRovP9K/GzL
	 Vt8v1wP2i321A==
Message-ID: <a487389540a0dd6c981257b4939c001a.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240909121116.254036-1-arnd@kernel.org>
References: <20240909121116.254036-1-arnd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: remove unused mclk_pdm0_p/pdm0_p definitions
From: Stephen Boyd <sboyd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Elaine Zhang <zhangqing@rock-chips.com>, YouMin Chen <cym@rock-chips.com>, Detlev Casanova <detlev.casanova@collabora.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: Arnd Bergmann <arnd@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>
Date: Mon, 09 Sep 2024 14:10:35 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_141038_922486_7E0D2276 
X-CRM114-Status: GOOD (  12.14  )
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

Quoting Arnd Bergmann (2024-09-09 05:11:05)
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When -Wunused-const-variable is enabled (not the default),
> there is a warning about two definitions in this file:
> 
> In file included from drivers/clk/rockchip/clk-rk3576.c:14:
> drivers/clk/rockchip/clk-rk3576.c:334:7: error: 'mclk_pdm0_p' defined but not used [-Werror=unused-const-variable=]
>   334 | PNAME(mclk_pdm0_p)                      = { "mclk_pdm0_src_top", "xin24m" };
>       |       ^~~~~~~~~~~
> drivers/clk/rockchip/clk.h:564:43: note: in definition of macro 'PNAME'
>   564 | #define PNAME(x) static const char *const x[] __initconst
>       |                                           ^
> drivers/clk/rockchip/clk-rk3576.c:333:7: error: 'pdm0_p' defined but not used [-Werror=unused-const-variable=]
>   333 | PNAME(pdm0_p)                           = { "clk_pdm0_src_top", "xin24m" };
>       |       ^~~~~~
> drivers/clk/rockchip/clk.h:564:43: note: in definition of macro 'PNAME'
>   564 | #define PNAME(x) static const char *const x[] __initconst
>       |                                           ^
> 
> Remove them for the moment. If they are needed later, they can
> be added back at that point.
> 
> Fixes: cc40f5baa91b ("clk: rockchip: Add clock controller for the RK3576")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
