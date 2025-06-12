Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28E7CC7114B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emxeiC4NBdTOvBRNP3uVOB4VNULob+SWVBGtvmLuhF0=; b=Ymm66XS79ha7hL
	VsfQOpiR+ZC2H2tjbdqKAnCjR1q7lyJ38t2MrEnrQ5+6u76wqaofVZtzEyKSPbeLBeas1GC4NDs1f
	C0GNMvMjXjPZk84N8UKysPZd9u8E7JGXMcqzkerznx0J4rRlYZHsG5Zw21r3tbvKY1H8NHlBgSav7
	utKTAYJ7fZy81vGqWvFjnJkIqnhZtUbDdhkSU1d1+ib+Wr1lVgC6yUUmMhulMNA73ssLIiE8jxCO1
	np6b7U2rmS8J4SBr9lbQ40FRuKkxH1AzzeS8iVt7lCz3JLl4sCCqJpH918Knj4PzcmFbNrKS7SrOB
	+chvqCYwMKa8rtVU4iGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnuS-0000000EP9r-3GJG;
	Thu, 12 Jun 2025 19:48:24 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnIJ-0000000ECBr-1FBC;
	Thu, 12 Jun 2025 19:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=U0UHRZVFR/9o1BtZeDpkFOYGrW0/3kxtp0aIw6uYvBY=; b=2DdGMCY/Cmy+VC5+/1czoZCXwX
	OlxZReGzj+bxOuaZXkgBDZrb3ccbqYemF5q+lgf/TFl+gC5MGNjNPxSKZWBSsh1u6tXQFprca/pM2
	qq32uiR7T4l57K4w7SEePztfoxdtwPDhIAasxSLOe0zhxNJHyCzvSg9HCEmjYin5vlIE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uPnHg-00FaEs-Pw; Thu, 12 Jun 2025 21:08:20 +0200
Date: Thu, 12 Jun 2025 21:08:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Yury Norov <yury.norov@gmail.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH 15/20] net: stmmac: dwmac-rk: switch to HWORD_UPDATE macro
Message-ID: <5947475f-ef38-44cb-857e-0c7378023ccd@lunn.ch>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-15-f4afb8f6313f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612-byeword-update-v1-15-f4afb8f6313f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_120859_330527_6A9A7C1E 
X-CRM114-Status: GOOD (  16.38  )
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

On Thu, Jun 12, 2025 at 08:56:17PM +0200, Nicolas Frattaroli wrote:
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
> 
> Like many other Rockchip drivers, dwmac-rk has its own HIWORD_UPDATE
> macro. Its semantics allow us to redefine it as a wrapper to the shared
> bitfield.h HWORD_UPDATE macros though.
> 
> Replace the implementation of this driver's very own HIWORD_UPDATE macro
> with an instance of HWORD_UPDATE from bitfield.h. This keeps the diff
> easily reviewable, while giving us more compile-time error checking.
> 
> The related GRF_BIT macro is left alone for now; any attempt to rework
> the code to not use its own solution here would likely end up harder to
> review and less pretty for the time being.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Please split this out into a patch for net-next. Also, Russell King
has just posted a number of patches for this driver, so you will
probably want to wait for them to be merged, so you post something
which will merged without any fuzz.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
