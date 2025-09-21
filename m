Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B5DACAC59A
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 22:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQZFJ5dSW+X4pRzzq/pB+cPhTfpfDxD8GNS/BDTH050=; b=u8GyAy/l2JK/ij
	fzag+GHm8seaEWuMeq18GXcuuVl5F9SkWzq3PdqEOzoVlj3vouYsfqb5CP51PHsbBG0mEdxEY5znZ
	PL6L+GlsxLuW6LcFG2I+GDJjn/ZhBhI7sJ/EQANKpgpN7E/h2WBcVVcg4OAHa4ttYxO1rcbkdAlYL
	JJ48nUaMltb6duqFLf8e3JlBkhhknDeOT4IZrAbqO4b0qOPfyNlfsgiSmrvwoZsnrpH1ogHx/zKyj
	fC44aQyeRKqzGPYFOyMd/Nz6+Ckur8+OSMOiGgOdUVTm21RpIordne5X6PCFeKKyUU0hKWISI6udD
	FbxYPzZU/s45DHwODVDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0SZ9-00000008LPY-0BTN;
	Sun, 21 Sep 2025 22:29:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0SZ5-00000008LPB-3YxQ
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Sep 2025 22:29:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 86E8F416D6;
	Sun, 21 Sep 2025 22:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45D43C4CEE7;
	Sun, 21 Sep 2025 22:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758493791;
	bh=t3M/HHaQ1LdJyfOFRrtusW7jDfV1vsfN6PQ9v2tBdIQ=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=S/HiWiQgimVDNPWriwiE+Zajl8ymdN7j0xlpWfoFbGJhRnNGCFtCPSeBRuwxEfx4z
	 Tx8PL3HBxzuSYwYSZ6E3B83LGdthHWG2XY+UxbDuzp7dVpU0InQb4qz3R9v8qrsk7j
	 wlJRqNZu3I2vHbtPqjq/3JpkPlImj1kd21e+436+IUSSq1Q2smiesVsEO8VmB1gjuL
	 VUGHqXwQX2oJZPIHoOiX5nIQxQ8BW4l7kDznDzn49vCGlO0z1Lp1R4d0reFUnAArN3
	 b6rkKvIcvwgBpZ74ERimnEPdV1USlHKy+rkZuj7nWLgrwewln2drMMoh16uLjlQhbf
	 3xL1u+VcO3BXw==
MIME-Version: 1.0
In-Reply-To: <1897877.QZUTf85G27@diego>
References: <1897877.QZUTf85G27@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.18 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Sun, 21 Sep 2025 15:29:49 -0700
Message-ID: <175849378973.4354.1911356302020699433@lazor>
User-Agent: alot/0.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_152951_908501_02182215 
X-CRM114-Status: UNSURE (   8.04  )
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

Quoting Heiko Stuebner (2025-09-21 13:59:39)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock change for 6.18
> Just a single newly exported clock for an older SoC.
> 
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585:
> 
>   Linux 6.17-rc1 (2025-08-10 19:41:16 +0300)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.18-rockchip-clk1
> 
> for you to fetch changes up to 77111b2c22ef5b368da5c833175b6f7806b39ccb:
> 
>   clk: rockchip: rk3368: use clock ids for SCLK_MIPIDSI_24M (2025-09-03 14:17:54 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
