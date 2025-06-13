Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1421C71136
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 16:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezYtJnVw3FpieooXuteD5wJZH0gBcFCpFg+ef6pBiIc=; b=w+8xbVYU1suKDA
	eOpTxZ6mamuBnnwJ03tv89YqpHFD30Rvw4eZaPiGck4lv5yRpuSgFr0Ov+L7S4lYxqJ51015TAT8+
	LGzqqTG+mS47IWebAqLX5pPrBPntWXGDdpTlZqh+faaelQ9ApWjiExL9/0muaTkK+MOsCou/PwdS1
	5+vLzK0Hd30tbqk8UH2jbKOqB3iTKL4XSHjVdEt8tqIXy+hhGC3ktZ8ucH6gAh4+xL7wDxWBHRWz/
	Ly9mDdCVo5BhfyV45M5yVGUV/akA/pAKIxokq+6WWgsNoYSnV9qqGpWFWA9/xPXIJuBkDI/hYiZfF
	BgtIvkdG4VbHOxCzuy5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ75W-0000000H1l1-1aJJ;
	Fri, 13 Jun 2025 16:17:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5sF-0000000GnUL-2Gn2;
	Fri, 13 Jun 2025 14:59:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C201F62A03;
	Fri, 13 Jun 2025 14:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B5AC4CEE3;
	Fri, 13 Jun 2025 14:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749826758;
	bh=Wi+mKmakmDEwMoqmItZexeO6A0PyjaxcjaKR+n0fu14=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jjgtPYEw+i0FlOE979WCYV8vcgpJYvTigzyODqm9N9rVd6tiEbmCZhta15yZ/LFTR
	 Tiew59WLUQlbwv+Tv0cb0bBSKpTQS4ui3rvnk1Zo/ic9w1Ncre7NZWLnTXKWYp9ZpC
	 nZ4pMbNAw213uGy+U23KSpNj8D9Zyg+/N8nHmk+2Sc5vcDOjwasOyp9bEFQ1bwF2oV
	 akxrQZmEEq3jmbATpowqgpBjP+0xuK+zfS++q4uBMcjIqYUEboLmRdEVetQDDrTE7l
	 OxBXQ3C5alTjHsSffqsPeu1Ni7G3j7gUgmCREAWl2K/drbRh0bOKnGlsK37Vm431fW
	 JdEoJas+Vh+0w==
Date: Fri, 13 Jun 2025 07:59:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yury Norov <yury.norov@gmail.com>
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <20250613075915.302ba742@kernel.org>
In-Reply-To: <aEwZcM_leVvB0Cju@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
	<20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
	<5493fd6017de3f393f632125fad95945d1c4294c@intel.com>
	<3683577.irdbgypaU6@workhorse>
	<aEwZcM_leVvB0Cju@yury>
MIME-Version: 1.0
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Tvrtko Ursulin <tursulin@igalia.com>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, llvm@lists.linux.dev, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Alexandre Torgue <alexandre.torgue@foss.st.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Eric Dumazet <edumazet@google.com>, Bill Wendling <morbo@google.com>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, kernel@collabora.com, David Airlie <airlied@gmail.com>, linux-stm32@st-md-mailman.stormreply.com, Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>, Simona Vetter <simona@ffwll.ch>, Jaehoon Chung <jh80.chung@samsung.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>, linux-clk@vger.kernel.org, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, Michael Turquette <mturquette@baylibre.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Paolo Abeni <pabeni@redhat.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Mark Brown <broonie@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Bjorn Helgaas <bhelgaas@google.com>, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Qin Jian <qinjian@cqplus1.com>, Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org, linux-mmc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>, "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew+netdev@lunn.ch>, Vinod Koul <vkoul@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Justin Stitt <justinstitt@google.com>, Andy Yan <andy.yan@rock-chips.com>, Shreeya Patel <shreeya.patel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 13 Jun 2025 08:28:40 -0400 Yury Norov wrote:
> > > And perhaps that (and more potential users) could persuade Jakub that
> > > this is not that weird after all?  
> > 
> > I will operate under the assumption that Jakub's opinion will not change
> > as he ignored the commit message that talks about multiple vendors,
> > ignored the cover letter that talks about multiple vendors, and ignored
> > my e-mail where I once again made it clear to him that it's multiple
> > vendors, and still claims it's a Rockchip specific convention.  
> 
> As far as I understood, he concerns not about number of drivers that
> opencode HIWORD_UPDATE(), but that this macro is not generic enough
> to live in bitfield.h. And it's a valid concern - I doubt it will
> be helpful somewhere in core and arch files.

Exactly.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
