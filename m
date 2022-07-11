Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 954CBC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 13:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xgJ4k9b8k/O29aahDrsLr3RV/7w8AOUfqeipVmvjLE=; b=GfDpLOCowhd6Hf
	7NPdgl/e8rKZODlGftUr/HG3NAAX/gHKSbL0GJ09nN5ZXTOpvPnTprBRTP9ZujmF6qonctcAgaYGt
	hzEgyOMs/dVk8j7/OhXy5N7qWbQXG0rkN5upe+w/MAwzC+wqPE02uj2HEFwG9kT1i5gQQObgVKCFq
	kNT1jEqpUlMbIJJme/by1u7ihL1M3JD3JcizY8Pl4UhqM6YeO8NUk/dnCtA3vHI59HGLRHPhpapF3
	+lAFFNzFxr4hzr2NpHMOxGSbF9XJafPvJ1Tqg/qc7ewKDwn9X2uRfClXtUfzfC3Bzd9wj0jk/eRDb
	Ox6z4WgmPW68psJuX/Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtde-001ysk-B7; Mon, 11 Jul 2022 13:39:50 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtdT-001ynC-F3; Mon, 11 Jul 2022 13:39:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3857C1596;
	Mon, 11 Jul 2022 06:39:37 -0700 (PDT)
Received: from monolith.localdoman (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22E803F70D;
	Mon, 11 Jul 2022 06:39:35 -0700 (PDT)
Date: Mon, 11 Jul 2022 14:40:08 +0100
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: Mark Brown <broonie@kernel.org>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
Message-ID: <YswoOE/sP088lius@monolith.localdoman>
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
 <Yswkb6mvwUywOTLg@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yswkb6mvwUywOTLg@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_063939_572300_65741EF2 
X-CRM114-Status: GOOD (  16.82  )
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

Hi Mark,

On Mon, Jul 11, 2022 at 02:23:59PM +0100, Mark Brown wrote:
> On Mon, Jul 11, 2022 at 02:05:22PM +0100, Alexandru Elisei wrote:
> > Commit a5450aba737d ("ASoC: rockchip: i2s: switch BCLK to GPIO") switched
> > BCLK to GPIO functions when probing the i2s bus interface, but missed
> > adding a check for when devm_pinctrl_get() returns an error.  This can lead
> > to the following NULL pointer dereference on a rockpro64-v2 if there are no
> > "pinctrl" properties in the i2s device tree node:
> > 
> > [    0.658381] rockchip-i2s ff880000.i2s: failed to find i2s default state
> > [    0.658993] rockchip-i2s ff880000.i2s: failed to find i2s gpio state
> > [    0.660072] rockchip-i2s ff890000.i2s: failed to find i2s default state
> > [    0.660670] rockchip-i2s ff890000.i2s: failed to find i2s gpio state
> 
> Please think hard before including complete backtraces in upstream
> reports, they are very large and contain almost no useful information

I'm at a loss here. Are you saying that those 4 lines represent a complete
backtrace and they are very large? Or are you talking about the panic log
that I've included in the commit message?

> relative to their size so often obscure the relevant content in your
> message. If part of the backtrace is usefully illustrative (it often is
> for search engines if nothing else) then it's usually better to pull out
> the relevant sections.

Would you mind pointing out what you think the relevant sections are? I
would also find it very useful (for future patches) if you can explain why
they are relevant, and why those parts you've left out aren't.  It's not
very easy to figure out what is relevant when you're not familiar with a
subsystem.

Thanks,
Alex

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
