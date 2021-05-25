Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC40C4707F
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 23:03:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7D8E61284
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 23:03:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7D8E61284
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZ2z69hpCR+2CnRQqXbY/xmv7+gfAyH22jDOR90nTlE=; b=ZZF84+PYE2HctB
	xza37uPqisRkIk6pcAdULMpeRJRe3XqQYiZ04TKz8HU7LsWKQJiWZYtOp0gLw071sJn6ul3XWmCkW
	Rip9+E2e/7yc8psJ4xdu6Tc3dZV+pWyN8M3bMGB8xMPW+4DGrLrgRLcUC6B8dhm9xrz2p+qnImwKD
	/07aQWQoNSpsL8eQjVlRmsHKyJOd0K092a9GUJeG1tb+B3X3z3lhJHvAMWAbbh5vkyHsmlzyBxSW6
	HbDs7ptvmmZFPGRcNYed5gwVEfW9J0SWvZwmhWZtA9Rj58otxszETdmfulhthhq631pfk7wRiHMkM
	nSkeRK2QMXxxX70amnjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llg5X-0092bY-LK; Tue, 25 May 2021 23:03:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llg3g-0091Zp-0W; Tue, 25 May 2021 23:01:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1llg3b-00070s-VH; Wed, 26 May 2021 01:01:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 00/10] Add support for older Rockchip SoCs to V4L2 hantro
 and rkvdec drivers
Date: Wed, 26 May 2021 01:01:51 +0200
Message-ID: <38327082.10thIPus4b@diego>
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_160156_086153_0BA4DD32 
X-CRM114-Status: GOOD (  23.03  )
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

Hi Alex,

Am Dienstag, 25. Mai 2021, 17:22:15 CEST schrieb Alex Bee:
> Hi list,
> 
> this series adds support for older Rockchip SoCs (RK3036, RK3066, RK3188
> and RK322x) to the existing V4L2 video decoder/-encoder drivers - namely
> hantro and rkvdec.
> They can be used as-is or with very little modifications.
> 
> In preparation to that patches 1-3 add power-controller support for RK3036
> and RK322x, since both drivers rely on pm. The drivers for them exist
> already in the common Rockchip pm driver, they just haven't be added to
> the device trees yet.

on first glance, looks good. Just a small ordering nit, if you need to resend
the series for other reasons:

Please try to order patches like:
(1) dt-binding - compatible addition
(2) driver patches
(3) devicetree node patches

That makes it way easier to keep track of dependencies when glancing at
the series. Like for patches 1+2, I need to wait for Lee to apply (or Ack) the
binding addition in patch 3.

Same for the hantro devicetree additions, that need to wait for both
bindings (and driver) changes to get applied to the media tree.

Thanks
Heiko


> 
> Thanks for your feedback,
> Alex.
> 
> Alex Bee (10):
>   ARM: dts: rockchip: add power controller for RK322x
>   ARM: dts: rockchip: add power controller for RK3036
>   dt-bindings: mfd: syscon: add Rockchip RK3036/RK3228 qos compatibles
>   media: hantro: add support for Rockchip RK3066
>   media: hantro: add support for Rockchip RK3036
>   ARM: dts: rockchip: add vpu nodes for RK3066 and RK3188
>   ARM: dts: rockchip: add vpu node for RK322x
>   media: dt-bindings: media: rockchip-vpu: add new compatibles
>   ARM: dts: rockchip: add vdec node for RK322x
>   media: dt-bindings: media: rockchip-vdec: add RK3228 compatible
> 
>  .../bindings/media/rockchip,vdec.yaml         |  10 +-
>  .../bindings/media/rockchip-vpu.yaml          |  33 +++-
>  .../devicetree/bindings/mfd/syscon.yaml       |   2 +
>  arch/arm/boot/dts/rk3036.dtsi                 |  51 ++++++
>  arch/arm/boot/dts/rk3066a.dtsi                |   4 +
>  arch/arm/boot/dts/rk3188.dtsi                 |   5 +
>  arch/arm/boot/dts/rk322x.dtsi                 | 139 ++++++++++++++-
>  arch/arm/boot/dts/rk3xxx.dtsi                 |  12 ++
>  drivers/staging/media/hantro/hantro_drv.c     |   2 +
>  drivers/staging/media/hantro/hantro_hw.h      |   2 +
>  drivers/staging/media/hantro/rk3288_vpu_hw.c  | 165 ++++++++++++++++++
>  11 files changed, 414 insertions(+), 11 deletions(-)
> 
> 
> base-commit: 5d765451c2409e63563fa6a3e8005bd03ab9e82f
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
