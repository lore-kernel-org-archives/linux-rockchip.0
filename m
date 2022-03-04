Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0276EC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9YrcRhOpre7J95PC3kFZ3Qa04ydzkbbxvZelNXRjFY=; b=fY6RuNmk4V3tCD
	M4oUxPiXm/Iijf8p7rgUKmqgOQ9R2z2wKoM+SExQo6K3NQAehOU7rOuxd3wtXtWNRl70iyw+G+Ghr
	Dl79txcXXpQizVPdg03vldGLqjHd9hXfQsy5o86YWJFz1gZ8mLJWRW3I9OlLxOWwmIUNN5zOnmksu
	KHGVnLZhpNPQcZpKkEfwPHiNGBUehGQb7Wa/55ti9W52shiZdIjKi1xII+Ulpm9Kv2KdA8WtIGgoe
	c7P4GsVa3BB9jJsM+ITNx2cY4wdCxG+mWWw03ySFX8TB/kMPGlVtfwPsVzrpSxdKe7uELCuIbEgsG
	Ecf+6Kf7UyP8JskV/eBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBjG-00BL0o-8m; Fri, 04 Mar 2022 17:28:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBcm-00BGxN-Gr
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:21:54 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DC3DA51C;
 Fri,  4 Mar 2022 18:21:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414511;
 bh=6nrhRGagr9FFf1fLkq8/LvV/jOZr1PYzFncKJuUpiDc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PWhen/EexS/70Ti92+YZhfXcxk7wLckc8m7X5Fu6aWZ18MV9hqNRueecoNnE7P8/7
 a3Fg0lGOdI3dPr1bG2NL1zAYlBg7V6YJzjJdENYbeMMqKqpGbxuvJK3ZQQLBa3kDYA
 YGnQ58lcslhcE5A163jCzITi8shKTAkClN7K2c6I=
Date: Fri, 4 Mar 2022 19:21:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com
Subject: Re: [PATCH 0/2] Fix the rkisp1 userspace API for later IP versions
Message-ID: <YiJKooCwFiFuC+Ue@pendragon.ideasonboard.com>
References: <20210111234011.3642481-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210111234011.3642481-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_092152_755787_3C66A158 
X-CRM114-Status: GOOD (  15.69  )
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

Hi Heiko,

On Tue, Jan 12, 2021 at 12:40:09AM +0100, Heiko Stuebner wrote:
> This NEEDs to go into 5.11 while we can still adapt the uapi
> during its RC-cycle.
> 
> 
> When looking into supporting the rkisp1 of the px30 I noticed that
> some fields got bigger in the uapi, caused by bigger number of samples
> for example for histograms or gamma values.

As I don't have access to a PX30 platform, I was wondering if you could
read the RKISP1_CIF_VI_ID register and report its value.

> The rkisp1 was destaged with 5.11-rc1 so we have still time during
> the 5.11 cycle to fix that without big hassles.
> 
> This was discussed previously in a mail [0] and a rfc series [1]
> and this two-part series now splits out the important parts that
> really should become part of a 5.11-rc and thus the final 5.11.
> 
> 
> [0] http://lore.kernel.org/r/3342088.iIbC2pHGDl@diego
> [1] https://lore.kernel.org/r/20210108193311.3423236-2-heiko@sntech.de
> 
> Heiko Stuebner (2):
>   media: rockchip: rkisp1: carry ip version information
>   media: rockchip: rkisp1: extend uapi array sizes
> 
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++-------
>  include/uapi/linux/rkisp1-config.h            | 25 ++++++++++++++++---
>  3 files changed, 35 insertions(+), 13 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
