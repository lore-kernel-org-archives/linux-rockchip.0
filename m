Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18CE3C5B56A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 18:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/QEFAIISOeBzLqMkay3LWxKNlKWNCUrr5vfXkqwgUU=; b=MZqaDCTJOsrihW
	tzZBJpE7iLXz41gu3s7ieqZP7W12rTMUxyEindlW5jA+N2xScy6LWgHlYcHrak+aGdle+NOXKWfSd
	9jFERtzv+fm1++aQrSEHuFqShtrTvZadJixIS09cg8uGfuj1PbDBEO1QmKodxeKylA/LcLslingPL
	XHAhQLwWVga2uzcO91j38iHEh6F5qpyPQKpZTkrjMQjgKgf/ykE1gsTw9u/mmWIzH/DaxHjBVGA6+
	BeqvKYmKtpnTzCLVnioUDnRZTZEk8WFyj16r/92wPksN8E9z0D81WUE72DGHYh/LupVxCRmIVyAvc
	YqC656AnK2MyIMJceqXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtr2C-0000000EjeY-2SFu;
	Tue, 11 Aug 2026 18:17:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtr2B-0000000Eje3-2xRS
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 18:17:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2F03C43255;
	Tue, 11 Aug 2026 18:17:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 007831F000E9;
	Tue, 11 Aug 2026 18:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786472227;
	bh=W5XrBpVUKV4WztTo9vZTmfxGGynuFCcPzm8dMsNd63I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date;
	b=FTlTf5C9VwZHaZyoE2bJfPm9L9zCOH6zIOk8URKsvyGH1xmaAcBlRwEw2Sh6PB5A2
	 3RVeJLWuT0ZGtPsSCqXF+I+2RzB3oug8Ti6IFIWfxxlqIc9Lj6ldeN/eUn+n8eYIp9
	 +JfHU4IDvDtGjWR5qCc895Rcct1h+3QDno9QH1xrTpd6RmIDHwTZZMr8sLQETvzlvk
	 D4GKlRA/TSHrHCWd8aVANYMArOnZmPN48/tyemDbZAaubDkQwFIe1eU1SiLaW+3xVg
	 WbIt53XYxzvJnH0DHh8iVL7JXD7zDx+hFDUvASzK7qvNaf9bVbgS9iYnzibwFPeyNP
	 v9EHiiI3G5Xzw==
MIME-Version: 1.0
In-Reply-To: <1912648.b8e9qBsS6s@diego>
References: <1912648.b8e9qBsS6s@diego>
Subject: Re: [GIT PULL] Rockchip clock fixes for 7.2-rc
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 11 Aug 2026 11:17:05 -0700
Message-ID: <178647222530.5862.1116308311544793627@lazor>
User-Agent: alot/0.12
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

Quoting Heiko Stuebner (2026-07-23 15:33:43)
> Hi Mike, Stephen,
> 
> here is one of those seldom PRs for a needed clock-related fix for the
> current development cycle, which fixes a regression by keeping
> newly added clocks on, if they're not handled by a driver.
> 
> 
> So, please pull :-) 
> 
> Thanks a lot
> Heiko
> 
> 
> 
> The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:
> 
>   Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.2-rockchip-clkfixes1
> 
> for you to fetch changes up to 946352b2f88fd2378f0341312e47dff1e8dc2fac:
> 
>   clk: rockchip: rk3588: don't disable unused I2S MCLK output gates (2026-06-28 21:09:50 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-fixes

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
