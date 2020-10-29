Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCF05C4742C
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 20:04:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55AE520791
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 20:04:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pjHQXwL8";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9pSr6O/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 55AE520791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=smsSAM3OUsQmganI2r0+dbTWYN9xK/Js1HFpU2bPhl0=; b=pjHQXwL8wySB80cCtxRI+rWFG
	7WKH/Dafy+yiDn7xqA8aY0wrYz7UI81sBlxtJqqFKo9YkZQmpYLLaTY4sirQGWmG7eyJS1x8zpO7v
	V3mcx4yc0k9gxs8s2OMiTgBCXS3DGgB45IvF1tRj3VcOC2DbA9McPNunXsI322WE+Oj8lZbI/cnZB
	h6BKu+xzN3ppIlAzoVMc3F7zGVEXH7ZEfhPsN9ZrXPUrBzd5eghCcrncLOxj2oGxhNrUHmQs4oyb+
	xlcjStOWvLQ+j/pXP1HMECOPd00sDtvb+6N8bltPXuK4ZZ6D149q4RADN5p+oEtOoNvjPEmO8Dcko
	Qsamr0ZSw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYE9x-0003oV-9R; Thu, 29 Oct 2020 20:04:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYE9u-0003n4-3m
 for linux-rockchip@lists.infradead.org; Thu, 29 Oct 2020 20:04:31 +0000
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com
 [209.85.161.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64B4820838
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2020 20:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604001868;
 bh=AOvWudq0ZqsWRnN/qXnDh5LtmEQC83i+z8hhzYFp75c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E9pSr6O/G6YE5XFNmqJqljbHx3wSzq6bVnhYgluqrf/H7wEGt4aAL9MLa6Ef2g5bE
 4w5Ruk1xZvDR0sd7whf/fLVhUkTVh6Yvbg+wvF3ZK42Y28B6ivLMgvYklEgjEcZcBs
 SnRh+ePJ2S1j6tL012nn1pFY9GPKgLLRWuNt5q28=
Received: by mail-oo1-f51.google.com with SMTP id j41so1025028oof.12
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2020 13:04:28 -0700 (PDT)
X-Gm-Message-State: AOAM530AzHFptk3R9BhAs1vnE6hxjSymJ7ItjD3fXfaaaqkuoXaunA5k
 3O7YJt8hq6SP9l1/huPoh15FCYP55yG8ki3BmQ==
X-Google-Smtp-Source: ABdhPJzY69332/TXD/GEbGo1Phdkm8uP9368uPwVctCb5SZBvuiMltO4sKY7UEYa7BklecuGbw5fafj/oTXoXLnSFpE=
X-Received: by 2002:a4a:dcc8:: with SMTP id h8mr4529803oou.81.1604001867553;
 Thu, 29 Oct 2020 13:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <20201020193850.1460644-1-helen.koike@collabora.com>
 <20201020193850.1460644-6-helen.koike@collabora.com>
In-Reply-To: <20201020193850.1460644-6-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 29 Oct 2020 15:04:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK3xhPHscbB+waDqEjKeRoeZ0MNu88fp70g9CSC02Qopw@mail.gmail.com>
Message-ID: <CAL_JsqK3xhPHscbB+waDqEjKeRoeZ0MNu88fp70g9CSC02Qopw@mail.gmail.com>
Subject: Re: [PATCH v6 5/9] media: staging: rkisp1: remove unecessary clocks
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_160430_394686_2BE67C0A 
X-CRM114-Status: GOOD (  19.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Robin Murphy <robin.murphy@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Oct 20, 2020 at 2:39 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> aclk_isp_wrap is a child of aclk_isp, and hclk_isp_wrap is a child of
> hclk_isp, thus we can remove parents from the list.
>
> Also, for the isp0, we only need the ISP clock, ACLK and HCLK.
> In the future we'll need a pixel clock for RK3288 and RK3399, and a JPEG
> clock for RK3288.
>
> So with the goal to cleanup the dt-bindings and remove it from staging,
> simplify clock names to isp, aclk and hclk.
>
> Assigned clocks are meant to refer to the full path in the clock tree,
> i.e. the leaf in the tree.
> For instance, in RK3399, the clock responsible for ACLK (ISP AXI CLOCK)
> is aclk_isp0_wrapper.
>
> For reference, this is the isp clock topology on RK3399:
>
>  xin24m
>     pll_npll
>        npll
>           clk_isp1
>           clk_isp0
>     pll_cpll
>        cpll
>           aclk_isp1
>              aclk_isp1_noc
>              hclk_isp1
>                 aclk_isp1_wrapper
>                 hclk_isp1_noc
>           aclk_isp0
>              hclk_isp1_wrapper
>              aclk_isp0_wrapper
>              aclk_isp0_noc
>              hclk_isp0
>                 hclk_isp0_wrapper
>                 hclk_isp0_noc
>  pclkin_isp1_wrapper
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Reviewed-by: Tomasz Figa <tfiga@chromium.org>
>
> ---
>
> Changes in V6:
> - Define clocks in the top level, and use if/else schema to define how
>   many for each compatible as sugested by Rob Herring on
>   https://patchwork.linuxtv.org/project/linux-media/patch/20200722155533.252844-6-helen.koike@collabora.com/#122626
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 44 +++++++++++++------
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++--
>  2 files changed, 33 insertions(+), 19 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
