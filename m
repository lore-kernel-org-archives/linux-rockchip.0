Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648EFC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 23:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ie/l7p8NLbaOs8wN8OjNgP9duFmhBRl/pcsqJToer5c=; b=DNcNKOTVXbIXqM
	+0IbulpMT3uCle6vLvY/zhhA2atqKEpRnqIu2qdNVHv4APy0E4Ef+U8hDchVdq8FzsBJeJ6FrIXrr
	DEu8g02tnrw88+uM5K2g9yg0/9AVRuefeis6Ybhj13GpN0uPrxZ7rMyqx88pAa4ORyqx5/BxtPm00
	Q8f2tRiH1Co7WPXwPoo/jBooTTfBtZw06Va1YDzStxrxK+hIv/fqg1bfbTzqrJ8ZGuf8jQNdT5Rg1
	3NSJf30dzhLnfinaphsZXJpNUcnXRz/UitiDW/xD0VfsQeK1gVO3J7QEDiqh+4iTN7QoevG+xuOtg
	+ktgdu1oMf8JoEoTNAqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDYdJ-00GELI-1W;
	Wed, 13 Dec 2023 23:27:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDYdG-00GEKL-2D
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 23:27:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D477DCE2166;
	Wed, 13 Dec 2023 23:27:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B882C433C7;
	Wed, 13 Dec 2023 23:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702510031;
	bh=M6tdt+BiuyB04nl0vTm8rispV+/AsHPHIKHuthhP4Hg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=IepUVHVzOe8R3dfrMvWLh5isQEwEZu7vRkz6m7rBBDxs2dT+sdcKd+rMUPuzzp6QJ
	 laKQJxzzuQFjHacr5iWThV3HCKALiRonoRx5LLciGevEEEFw9YXc9yeCQmIlQA+Mob
	 YZHzfQpHnrn6/p683dgw892CHTdhHc4g3o+aMOyWZwaPqea1qAyVIXoTzEAlYGMDlH
	 bUc6NT/gyGpXqjU+WGUaceeiIgaldo1lz09H0ycd++oo7lmggC5Pe6qkS8ztOMU/rk
	 C2fpE+sP54BZbggKMrCmW9IS4yxMRgcVAKY/4m+vQ7e50Dd1ACojkMEG7chGw+Ho+i
	 6ADl/95sF2Wyg==
Message-ID: <f994b83929b1493bddad0a45d6d47d70.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <5734430.DvuYhMxLoT@phil>
References: <5734430.DvuYhMxLoT@phil>
Subject: Re: [GIT PULL] Rockchip clock fixes for 6.7
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 13 Dec 2023 15:27:08 -0800
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_152714_981658_D0102416 
X-CRM114-Status: UNSURE (   8.73  )
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

Quoting Heiko Stuebner (2023-12-07 12:46:37)
> Hi Mike, Stephen,
> 
> for a change, this time I have some fixes that would be really
> good to have in the current 6.7 cycle.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:
> 
>   Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.7-rockchip-clkfixes1
> 
> for you to fetch changes up to 99fe9ee56bd2f7358f1bc72551c2f3a6bbddf80a:
> 
>   clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name (2023-11-28 10:30:59 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-fixes

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
