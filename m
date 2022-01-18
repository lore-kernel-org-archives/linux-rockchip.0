Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EF4C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 15:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/Dgyy2Uh+xWlceryhTSvwq4lFbcbNzrg5ADEGI0rdk=; b=xz0mOtI9q6GDO1
	tAtNwInzZ8WokD3GqPBh+SMOidc02ADTqXB6ADAsBXsj/E0hrPCi19IUPMSSk/zn7KZuuyS56t9fK
	s4eqzUPNq0hy59QPbisQ1TWtUfbrLrWH5VD4to+dus1KqbLYDhnpBOd6+J618hRcG0x1EkU+hvITT
	L+HPLrMRCpcYf7rLnJcm3f1fUj4bK0oNwfUhkQOcmA7Ob4D9whEH+8Ssclfuxw66TTwjitGEq19pd
	sTXCVoNGBsBrpe/2lw+OXC5XuuuoH+FAMlOf+L2kfDJP4Mlm7vams3Mk0I8Am9keeyMEHGkaPx4ON
	Wu8DU99yUik+kg2QBc4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9qGO-0023ah-Kc; Tue, 18 Jan 2022 15:19:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9qGG-0023UH-QT; Tue, 18 Jan 2022 15:19:06 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1n9qG7-0006C3-8I; Tue, 18 Jan 2022 16:18:55 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 0/4] add GPU for RK356x SoCs
Date: Tue, 18 Jan 2022 16:18:54 +0100
Message-ID: <6645896.O1m7UbTlE4@diego>
In-Reply-To: <20211126151729.1026566-1-knaerzche@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_071904_916038_6F8D057C 
X-CRM114-Status: GOOD (  23.43  )
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

Am Freitag, 26. November 2021, 16:17:25 CET schrieb Alex Bee:
> This is a respin of Ezequiel's series which adds GPU for RK3568 [0]:
> 
> > I've decided to split the GPU off previous series:

do you plan on a respin for Rob's comments?

Thanks
Heiko

> >
> > https://lore.kernel.org/linux-rockchip/2147216.TLkxdtWsSY@diego/
> >
> > This series now contains only the GPU support, as the VPU
> > needs a tiny rework.
> >
> > This is compiled tested only, in this case. Similar patches
> > have been tested on a v5.10-based kernel, so I'd say it's good
> > to go.
> >
> > The mesa side is merged https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10771
> > and can be tested without a display, using something like weston --backend=headless-backend.so,
> > which provides an environment for GL to work.
> 
> I hope to have resolved all DT-binding issues and added cooling map and trip points
> which can make the GPU a cooling device.
> 
> Tested with mesa 21.3.0 on quartz64-a board.
> 
> [0] https://patchwork.kernel.org/project/linux-rockchip/list/?series=526661
> 
> Alex Bee (2):
>   dt-bindings: gpu: mali-bifrost: Allow up to two clocks
>   arm64: dts: rockchip: Add cooling map / trip points for RK356x' GPU
> 
> Ezequiel Garcia (2):
>   arm64: dts: rockchip: Add GPU node for rk3568
>   arm64: dts: rockchip: Enable the GPU on Quartz64 Model A
> 
>  .../bindings/gpu/arm,mali-bifrost.yaml        | 20 ++++-
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  5 ++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 77 +++++++++++++++++++
>  3 files changed, 101 insertions(+), 1 deletion(-)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
