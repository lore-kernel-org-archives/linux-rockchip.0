Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AE0EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 22:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TP02QOOxJfQGZNtGmBnSFmh2xdPJjfLBAGTOVJTpNWo=; b=U5GY9Q032zUANI
	PsRtpXn5pSkzL7Dbp3qkdOVtY84zqdbxxfAPcxxJCBuHDxdvPgJj0ZNukHsizMjdB0WgceNfg9Ukp
	NveVKJHfb09c51NIT3R/RHeSNBkX0mqI6L+0aYaTX8FeVIyH+Y/JAQa2LjQz7luCG8KxG47JdZ0Q1
	xXr03oe4GZbhGmgqntIhpePaQFKMaid90zEZWI4iECT04KwuydfnfaNj4E5GZm05n/bFLowDi/VdY
	mRfHb8jSDb4niAP2oHIVTe273uhb9EZYVmUS43EsHH9eKDFIm5qRfyQOw2aV7B/kBoe81V5S0+JGM
	ryK0a4dNPGoV3wM01ysg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr5Y7-00G6eQ-9n; Tue, 17 May 2022 22:20:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr5Y5-00G6cs-4M
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 22:20:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A07E061182;
 Tue, 17 May 2022 22:20:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07254C385B8;
 Tue, 17 May 2022 22:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652826010;
 bh=Hm6hGfPLWJYm61EHZ6aIWw45gmrr1esWofkKxNx8RPc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=FmNLSV4DRYIpWd5uUfa90jMjHCEGZzyUWKVLpipaIP1mABdKdhWpZZjx4G8lN/Ac8
 /rotbcRyorSK7GDloyY6OpygPJyKNG6D85cLuDrUKUdpIV6ghwLDXOqZDrNHq3f0rN
 gqrhjXzTRE6aLYGT4aKMF/wMFwHuLz8O22+Y3t2l+2NzC5rjO+a/QK4xlfxaxh9/RK
 yyGFAqfseAmttxb3iPqC5WBYtexiWZ9GG7js6uph7vhdr/lVZUAOGuhsBFufyp6BTu
 CBN2ZX/odYfB23khL9Kt24H5jbkxvEJAFusx5wMYWrzKbXsbefJ4fUN64elugd4zYw
 JCk0fBaHcek7A==
MIME-Version: 1.0
In-Reply-To: <5781991.QJadu78ljV@phil>
References: <5781991.QJadu78ljV@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.19 #2
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 17 May 2022 15:20:08 -0700
User-Agent: alot/0.10
Message-Id: <20220517222010.07254C385B8@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_152013_304918_6930BEE7 
X-CRM114-Status: GOOD (  16.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Heiko Stuebner (2022-05-17 12:31:15)
> Hi Mike, Stephen,
> 
> please find below a pull-request converting a number of Rockchip
> clock controllers to yaml, which shound go on top of the previous
> pull request.
> 
> In the discussion Stephen had comments about the optional clocks, that
> have a circular dependency (xin24m -> cru -> i2c -> rtc -> xin32k -> cru) .
> After everyone put in their argument, the discussion itself just stopped.
> 
> I've picked up the conversion patches anyway, as this is the status-quo
> in terms of modelling clocks on Rockchip, so the yaml conversion doesn't
> change anything in either direction and just transforms what is in the
> kernel right now into the yaml format which will improve devicetree checks
> a lot and also reduce the number of warnings emitted by the checker.
> 
> So hopefully please pull :-)
> Thanks
> Heiko
> 
> 
> The following changes since commit b21445db9818ccb9fa1c0ba81fd3705eb8d347e3:
> 
>   dt-binding: clock: Add missing rk3568 cru bindings (2022-05-14 12:40:41 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-clk2
> 
> for you to fetch changes up to 32a214cd8ccbc361319bcd00b0b1b05a6b53bc61:
> 
>   dt-bindings: clock: convert rockchip,rk3368-cru.txt to YAML (2022-05-17 21:05:43 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next. I skipped the previous pull and just took
this one and combined the messages.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
