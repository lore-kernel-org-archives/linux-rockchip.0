Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68FBC04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 00:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5AZLB6cj3BhMh8//5Qg5oG9k+G0sopypodP3YpNJas=; b=Iivi89Q0t2CbjM
	Erz1v6RnVTdFNSNglen1fbz1Ftr7B0caeMKjUJsGt9OgDcLOsVO79C6od9wPZqAsgmI2F+lnXs3FG
	CN5HNGcW80nMoKoZ5m4bqlwsfB/K45YiMCYNaR8IaquRQgX0UpJ11MFmouTwFo4DjcGJOANI8dYQK
	TG71dwA/wkssc/m+YNiWJl4b4PVMucVwtbsKUQdY65GObFY3GN6Ng1mm8DQg8nwTLKEKnYqVINHs+
	ikuFofSSLbGNsOWhhqdISUXjen2pepARjIYa+ImvY5HLirIo/pCXK4D7Q54x096/L2rM4zVUslDpd
	WQq/HUJrArrYQyngamgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1b2K-00000004XKk-33S2;
	Tue, 30 Apr 2024 00:07:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1b2G-00000004XKB-1xgw;
	Tue, 30 Apr 2024 00:07:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EFED3CE09B8;
	Tue, 30 Apr 2024 00:07:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79B9BC113CD;
	Tue, 30 Apr 2024 00:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714435668;
	bh=vhMJowDwRuHTlntrjfGcVCQMNqbpSZQLuzucFeDjBg8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YCQ7Y/lGUacL2IZijCKBlGObESxVjjzsNASBP6BpxH7vYi0yR/wJ2unwlXZKOgThD
	 Bq45bgnTPaVF7espT+Nhd5rEHV2F1W1XQ9W3pUqNK7HsrhdCigz5URD9um1NcrO07A
	 9Rru4vTA2LWW2s0BlH+12gPtJCa4vWrNjg//+P5CooPJo1vEZWZRaw561F6OuM5n9B
	 HptYENweRlTg8pMcX2pRffTkhIH4rQCk7KUu4bLw5KlYtCMK4LKva2NYtjvccX2h9y
	 bCa2bYiIjdF3covsdemMsir4FU94t25zzA82/eE7zzn5O+wmQGg1yi3ETGyQAfGXFt
	 MPE8NlBvInCdA==
Date: Tue, 30 Apr 2024 02:07:45 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mips@vger.kernel.org, linux-omap@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 00/15] i2c: use 'time_left' with wait_for_*
Message-ID: <cscisecgo547dngzcpmcvertywekxtctyxv6hwhnmi5dq4azh2@4lpq6a4qga3s>
References: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_170752_715676_BB09C4D4 
X-CRM114-Status: GOOD (  14.31  )
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

Hi Wolfram,

On Sat, Apr 27, 2024 at 10:35:52PM +0200, Wolfram Sang wrote:
> There is a confusing pattern in the kernel to use a variable named 'timeout' to
> store the result of wait_for_*() causing patterns like:
> 
>         timeout = wait_for_completion_timeout(...)
>         if (!timeout) return -ETIMEDOUT;
> 
> with all kinds of permutations. Use 'time_left' as a variable to make the code
> self explaining.
> 
> This is the I2C part of a tree-wide series. The rest of the patches can
> be found here (slightly WIP):
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/time_left
> 
> Because these patches are generated, they need manual audit. So, I will
> send them step by step. This is part 1 and also a call for opinions if
> this is a desirable change. But at least in the I2C realm, I really want
> to have it proper.
> 
> Build bot is happy with these patches and I also compile tested them
> (except two). No functional changes intended.

It all looks good, I will give people a few days more for reviews
and comments and then I'll take it in.

Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
