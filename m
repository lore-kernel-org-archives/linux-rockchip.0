Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E00C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 23:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UcDSXVhh3+X2mtes/iQSuFLESLkQwGC7quLeu4JQ7c=; b=zd9kkKa2wZErQF
	cWpCwTrHgPlePV7uImuNqbUEAxSBtTmo2saitfu3IEv/whbaMhdDhrgHz+65zJDgqDTNctEAS9F+M
	UCrv4oI1J48eyylHR5WlL1JvyYesNJDxiS8lAcX/fPZvHNyFWDfvt9xpNspEfKrdh9IHTbmwHVjHh
	DRiSQl60RK2x+5YAQzRlD2/rttZ1mAp9gs5XQ/5QlQP1A64jRhkIVfOFOudCmGQSxrqe4ey5+MjOz
	UC1c6jP75uithbulZRncpL8iBF6GC8J3byKRHboSf8Ec3a0bZq4eDaTweyhtTiPm5g6Hy+A4x0W/D
	oZTNXLl4TC9Dj8c2Yg2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPr31-0000000EpxF-1kFp;
	Thu, 12 Jun 2025 23:09:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPpzS-0000000EigK-2TJ7;
	Thu, 12 Jun 2025 22:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4c23EVlBRbC0Sh2HVGAeTrWF8ckuRzyb3wIApq3EJ0Y=; b=h6wLkimhFec7hdQM4CTw2rMDJX
	kdl+DSJKc1iueVzrXKO1M0S85F0SyOo8W9g0GYez0cTdbWzpmzuf1Pq6gseF21O0N0csAWpkkF9F/
	a4lQepPrT0jiamp2nNkzVIZfT9NdznUZGKqPvkehNBTBc4CQ0BgEWTOb9nwlwfzOzSpsSCGB4flCj
	aHlfIfIKAQMAfRqiOgxI0kc1vCTCUmg1KTPEvybfOAZM5U4edQKjuWPwpe0Wab+yfu//aM2o+3KXu
	esxjIS2qc2zHKVZrF/KhbBz5hFVDy4DVh4PhR4ix+AEMvzNJ5YSz/g0DP6QZUiatVtop9v4kWkRQk
	IuzrzLqQ==;
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPpzP-00000002k2x-3zwf;
	Thu, 12 Jun 2025 22:01:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2D614A52192;
	Thu, 12 Jun 2025 22:01:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E14DC4CEEA;
	Thu, 12 Jun 2025 22:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749765693;
	bh=4c23EVlBRbC0Sh2HVGAeTrWF8ckuRzyb3wIApq3EJ0Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=pyPMHD+jhG+UTqABmIsWKlZaWpYwYT8yRbeTaj6af6mv0CScs81OZC14hEgpOQpqo
	 RxUjx7u0c04zWdOWA3HP8r3YCxfTUGgt7/6IXy+olWrZBlDDPCnHfJ2v85tlNdrCRD
	 UXqXIBSfdaqN7b2Zw9ekGq/d+2TWFahI8NypgSV/iEUgbik9cuIv4+7KQ4X2/YGiui
	 ToRHQcO0nLaHP41ty5z3+YlPdDtFsHUjqfXoXCbBt0r8dFq6GTqY/uU3iMpROb1OVO
	 RPp4P9+AYRiUOFuciFsilpSUhTCO/Q80c3PWR/d5rsYLxFbYNnCdfYj4zHkbScfKyp
	 +9szYBH1OtjOA==
Date: Thu, 12 Jun 2025 15:01:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yury Norov <yury.norov@gmail.com>
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <20250612150130.36b01844@kernel.org>
In-Reply-To: <aEs0PVkwFN9uRgU0@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
	<20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
	<20250612124415.3399e26b@kernel.org>
	<22744779.EfDdHjke4D@workhorse>
	<aEs0PVkwFN9uRgU0@yury>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_230140_373695_8A0A5C0B 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, llvm@lists.linux.dev, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Alexandre Torgue <alexandre.torgue@foss.st.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Eric Dumazet <edumazet@google.com>, Bill Wendling <morbo@google.com>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, linux-phy@lists.infradead.org, kernel@collabora.com, David Airlie <airlied@gmail.com>, linux-stm32@st-md-mailman.stormreply.com, Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>, Simona Vetter <simona@ffwll.ch>, Jaehoon Chung <jh80.chung@samsung.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>, linux-clk@vger.kernel.org, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, Michael Turquette <mturquette@baylibre.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Paolo Abeni <pabeni@redhat.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Qin Jian <qinjian@cqplus1.com>, Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org, linux-mmc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>, "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew+netdev@lunn.ch>, Vinod Koul <vkoul@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Justin Stitt <justinstitt@google.com>, Andy Yan <andy.yan@rock-chips.com>, Shreeya Patel <shreeya.patel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 12 Jun 2025 16:10:37 -0400 Yury Norov wrote:
> I don't think that that having HWORD_UPDATE() in bitfield.h is a wrong
> thing. Jakub, if you do, we can just create a new header for it.

Yes, I'd prefer to contain it. This looks very much like a CSR tooling
convention of Rockchip's ASIC developers. IOW this is really about how
CSRs are access for a specific vendor, not a generic bitfield operator.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
