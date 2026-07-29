Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48BB1C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 11:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6e+LR/TF5RUEfm9/axOR6egJoG84MtfbRKbh+pfvKQ=; b=c5YViAzjVZbfMF
	v6HB9WRntBdmjGs3xYjkVmu2jKIZwr29BmAaaLc16fjeSVrvVRIJGI9QRsqFbRC5Ka14XBNSTnflR
	UkwKKVtK9Ego25/OJA9CfeZ5xIYFVXo4iwhQzxRP7lFyen5PMbV2/LhZfWlEWTEfnMW7ytTHpEMHp
	taQVddT4D8JcHzdzxLZ2xt1aCXckIbvfwyDLEH21sTzrUSYW5lE+uDI+o2lUFPgrOGfbsKjjHAVUm
	26QoIJIr88H1R7rseqiAi4W/hrlhnoWeQSvDObeBv2Vm5q3WUcQE/h4DdLdWxlVi1Z3W8laMkqvt1
	qjwoCACgUiytWXlVeVMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2CX-00000007grC-328Y;
	Wed, 29 Jul 2026 11:11:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2CV-00000007gqG-19SB;
	Wed, 29 Jul 2026 11:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BAPnhnAqDRA9bNdTJA6WEATxjymwtLXJIvPEHhgnOfc=; b=TVdQyTYVGtUTSqA4YYJcqNtzX6
	Ym3d5G2PPJI3JUyfnbwcKnJ98Gkf0lp3Vboq/FzZo1yi5QRRUnhUx7Y2ptGUpt+47YaE0/WNMRjDd
	+oVMQ5eKSkq3KUfxp7y5+kzIEXIdTohcMvYBCsmvXZq+w3O4LoJRfAvEJu4BMtXv1uzgThSYXR9NG
	93TkXulFjbvqKanseqzDhjaSirk5k+h7MqaZmmgDOVuKfU76uatSvIWLZ+U4zFPoYMzBHSa2+5plr
	j0RAuHKujHlOI2wlKBzJWL8cSHsVR+WAngFqVg8G6r2hguxjl3445I7nGweAJLQ9uYN30Imh+6dxH
	O3Xo7qJw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	YouMin Chen <cym@rock-chips.com>,
	Wyon Bi <bivvy.bi@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Liang Chen <cl@rock-chips.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Fix RK3576/RK3588 fractional PLL rate calculation
Date: Wed, 29 Jul 2026 13:11:35 +0200
Message-ID: <178532348703.455945.4872478819710322236.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260723-rk3588-fracpll-v2-0-3adfb9dda235@flipper.net>
References: <20260723-rk3588-fracpll-v2-0-3adfb9dda235@flipper.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_041151_313845_7A814EAC 
X-CRM114-Status: GOOD (  11.61  )
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


On Thu, 23 Jul 2026 14:21:57 +0400, Alexey Charkov wrote:
> Fractional PLL rate recalculation for RK3576/RK3588 doesn't correspond to
> what the hardware actually does due to two issues: wrong denominator for
> the fractional component, and wrong signedness of the fractional
> component. The result is the kernel-visible PLL rate being off by about
> 2 MHz for the two affected PLL rates vs. what the hardware produces.
> 
> While this fixes a real bug it's not a regression, as the issue was
> introduced in the same commit that added the RK3576/RK3588 support.
> 
> [...]

Applied, thanks!

[1/2] clk: rockchip: pll: Fix the fractional part denominator on RK3588/RK3576
      commit: 52aef653c3d0c24013dfa9eccf692594eacdbe17
[2/2] clk: rockchip: Fractional PLL coefficient on RK3588/RK3576 is two's complement
      commit: 5814788834774ed6ad1a27ae91b44eeca80cd27f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
