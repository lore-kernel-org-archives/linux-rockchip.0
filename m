Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89A83C4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 14:24:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C7F220C09
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 14:24:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eHZmj4Yn";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4GhqNTL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C7F220C09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Aqz4XqElodRBYpoBiikyDz8MkpSp0zgkHbffuLXOHIw=; b=eHZmj4YnrYemT+f1L4btTHANt
	E/oAkdbAiynOctjbje01EVMoOJsUq0YdPjJDPE3uXIKA67//W6tEA1ky1UMH85CSpod//t6C5hJg3
	Re2uQp6XkSxNNCwo2NCQ7Aq4VxsrcAiRv2cHOdkIzgHuA1Wyxm9XlgTQGugCK7W0ArjJFwYCux1D6
	BjSoBDlweCoSOYFV4zYdSGYkqusGdQCIoUjiCgiHu3YsFfC5MhVbldf4snSnx6oowtyfgpCqI5FyM
	dCEGaoSqf/9JPTUiX+9hBjbTdivJMib1eDXEOSH8WHiX9AAJtxRYNVF0V3L1ren6tJs07HIgLSg0M
	JDnrmv/3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKjDg-0005qr-Sb; Tue, 22 Sep 2020 14:24:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKjDe-0005pi-0Y
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 14:24:35 +0000
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com
 [209.85.161.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 640F42395C
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 14:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600784672;
 bh=fyhGiT07YqgY1sX7H5cYuZEWhzgxX1cJqk4Q9y19gjs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=O4GhqNTLUyIkVNe1g35MNvHUi2N1TQP2CaB0iKDfqgMBCvw2bTHDR9akkw6s3alVj
 rte5MyJ4m9s6DATOviv0bJ9O4ed08Zub/j+0K/7dA5f1+zeN7EwZE9Ig+vmW+pWk38
 mYaaC98M2jlAgvbVJaFDroKt8yB8NkeISVNCFAWw=
Received: by mail-oo1-f46.google.com with SMTP id y25so4186017oog.4
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 07:24:32 -0700 (PDT)
X-Gm-Message-State: AOAM531kc3OeoRrd4sZ0V7pPSTVO2sGOjoVdx6BGM3yUxWuvv9GmzBZQ
 B3YXWcncoD2YOGKNE03zceHyOmQI4iD00D98Jw==
X-Google-Smtp-Source: ABdhPJzUFEuKoDPplE32fF2OW24xWYgi/9lL9nNZnKQwkQwBHwCVey8YSOKSt3310TZYoa/pm+iYTw1x55KM9sBA3qs=
X-Received: by 2002:a4a:b30d:: with SMTP id m13mr3077541ooo.50.1600784671655; 
 Tue, 22 Sep 2020 07:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-6-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-6-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 22 Sep 2020 08:24:20 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
Message-ID: <CAL_Jsq+qB=yUtHKKujiUWrsq+W-3ggM3B_SuuDzfYEheczn=8g@mail.gmail.com>
Subject: Re: [PATCH v5 5/9] media: staging: rkisp1: remove unecessary clocks
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_102434_325562_20ACBAAE 
X-CRM114-Status: GOOD (  24.14  )
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
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 22, 2020 at 9:56 AM Helen Koike <helen.koike@collabora.com> wrote:
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
>
> ---
> Changes in V5:
> - Use if/then schema as suggested by Rob Herring on
> https://patchwork.linuxtv.org/project/linux-media/patch/20200702191322.2639681-6-helen.koike@collabora.com/#119729
>
> Changes in V4:
> - update binding according to suggestion by Robin Murphy
> on https://patchwork.kernel.org/patch/11475007/
>
> Changes in V3:
> - this is a new patch in the series
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 50 ++++++++++++-------
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 ++-
>  2 files changed, 36 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index 62a6b9c959498..23c677d15037a 100644
> --- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -24,20 +24,10 @@ properties:
>      maxItems: 1
>
>    clocks:
> -    items:
> -      - description: ISP clock
> -      - description: ISP AXI clock clock
> -      - description: ISP AXI clock  wrapper clock
> -      - description: ISP AHB clock clock
> -      - description: ISP AHB wrapper clock
> +    minItems: 3

You need maxItems here too or it will always be 3.

>
>    clock-names:
> -    items:
> -      - const: clk_isp
> -      - const: aclk_isp
> -      - const: aclk_isp_wrap
> -      - const: hclk_isp
> -      - const: hclk_isp_wrap
> +    minItems: 3
>
>    iommus:
>      maxItems: 1
> @@ -116,6 +106,34 @@ required:
>    - power-domains
>    - ports
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: rockchip,rk3399-cif-isp
> +then:
> +  properties:
> +    clocks:
> +      maxItems: 4
> +      minItems: 3

For a single compatible you shouldn't really have a variable number of clocks.

> +      items:
> +        # isp0 and isp1
> +        - description: ISP clock
> +        - description: ISP AXI clock
> +        - description: ISP AHB clock
> +        # only for isp1
> +        - description: ISP Pixel clock
> +    clock-names:
> +      maxItems: 4
> +      minItems: 3
> +      items:
> +        # isp0 and isp1
> +        - const: isp
> +        - const: aclk
> +        - const: hclk
> +        # only for isp1
> +        - const: pclk_isp

Don't you need an 'else' clause. For not rockchip,rk3399-cif-isp,
there's no definition of what clocks there are.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
