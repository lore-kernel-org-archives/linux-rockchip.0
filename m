Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB9CBC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jul 2022 09:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVlOldC7Ei4NzK2HQu71JeZgXRtDBLy0UxCAFoI7sfA=; b=d71gn0bxPEtMZP
	A819DBVeVHo2soyyea4hHZvThbRLgN59x2XHutP9WgDeO5gwDpjJljyK9doSZGM/6U1XP6fMbH0/I
	mfwEJlL6jKMPgX93XbhLNIbJYwByfz4sBnRQI89VoqxUou3IFLWjIGKqiU2Bw2hYwXX3lYZk1lhQi
	hAfsiWjpTGTocojhne3UXJzOS32jk4GsXjFg8nyeUQOCTbd5nJlc3jRZ9569fU/aO2oblc2RRUrKR
	swDWljsDa8u9t3LQpp5f/cRyZTf+EM0u+NBasaHbKQRyvi4Oo60tZmP+cFOmXldo/HOXyAJXCS3yh
	TJmV2ggmKDSM0j6bhAIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBC9Z-009DtY-JR; Tue, 12 Jul 2022 09:26:01 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBC9W-009Dpf-12
	for linux-rockchip@lists.infradead.org; Tue, 12 Jul 2022 09:26:00 +0000
Received: by mail-yb1-xb36.google.com with SMTP id y195so13005496yby.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Jul 2022 02:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d1s8GrTnsNja2UVMETHzEYbNsXWuG59DZYYujxZ0uNM=;
        b=E7s9MG7R2vyOdYv+DyJTyP9qvDF861Hg8UVSKuu7fPfKiJcUf0T4+5rqWBOAwiFT5m
         s71YczqnCk9QoXFJsxY2iPajEPVHRKjzLDLNfN78+HPcOlx5GCAg4lTAcA9AQpp1P7ks
         xOvaswgiroGepfMq6tz8Iodj/oB/xEYuKHK/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d1s8GrTnsNja2UVMETHzEYbNsXWuG59DZYYujxZ0uNM=;
        b=kANlQtPNsFgTzW2b+yrOVvHqCb23uHJXojcEKia9YjDm6rS7krJBa0ROZfMZO1soJ6
         WBZzsvi1BEZMVQNIIH23/66s09zSEQsC9v+ZuM6aJBkWp0hbBo/RMa/rSZ/etR3eo0gQ
         9+1vxA4EW0gX6RZmALkMn6qoAN0t5vK21yNyZDebdDtSxnVRVOzgPvxL/ELkIYUxwb1Q
         jk7/qwBGsgstuyiiJ5xV9BH1EUBLmyVHKa71Db+Z7+yC7RjRLvqT6A9xRni3ZLMaRlB6
         3zc3ZnYyAUM+D9ianVfIcblHt6VTFhvQIphzbjpJFA0Jwp7m9ph8OPMbLDkkQBjEvT4N
         yIrA==
X-Gm-Message-State: AJIora8cSidnVftrPJFmavU4O/UEUkLmBNxvGFERlezXaOtJAv77L7jC
	+CbaSXJDw6ohmPYEpl/Hq8UvLCr++8jHSO4SxTafzQ==
X-Google-Smtp-Source: AGRyM1s+8nCq65TcIOsDHs7Q7KKeErUSUAooT/HwPjUkoNu7g19Wcn3E28+svjZ6gcqJgvvsQ3k/cHQJeodj0Uih8+Q=
X-Received: by 2002:a25:81c5:0:b0:66d:55b5:d250 with SMTP id
 n5-20020a2581c5000000b0066d55b5d250mr20396849ybm.501.1657617954174; Tue, 12
 Jul 2022 02:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
 <CAGXv+5HyD63MSmnNSoHX6euR2qpnqh-Fn9rdRYRYz4Ci90+w8Q@mail.gmail.com> <Ys00vczqcIGzOadV@monolith.localdoman>
In-Reply-To: <Ys00vczqcIGzOadV@monolith.localdoman>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 12 Jul 2022 17:25:43 +0800
Message-ID: <CAGXv+5G=YvDkm8a=Wyui4mqSskqPq-kQJfU4HGNXSGzz0hXiqw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, 
	heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_022558_115608_35430220 
X-CRM114-Status: GOOD (  41.49  )
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

On Tue, Jul 12, 2022 at 4:53 PM Alexandru Elisei
<alexandru.elisei@arm.com> wrote:
>
> Hi ChenYu,
>
> On Tue, Jul 12, 2022 at 02:17:32PM +0800, Chen-Yu Tsai wrote:
> > On Mon, Jul 11, 2022 at 9:06 PM Alexandru Elisei
> > <alexandru.elisei@arm.com> wrote:
> > >
> > > Commit a5450aba737d ("ASoC: rockchip: i2s: switch BCLK to GPIO") switched
> > > BCLK to GPIO functions when probing the i2s bus interface, but missed
> > > adding a check for when devm_pinctrl_get() returns an error.  This can lead
> > > to the following NULL pointer dereference on a rockpro64-v2 if there are no
> > > "pinctrl" properties in the i2s device tree node:
> > >
> > > [    0.658381] rockchip-i2s ff880000.i2s: failed to find i2s default state
> > > [    0.658993] rockchip-i2s ff880000.i2s: failed to find i2s gpio state
> > > [    0.660072] rockchip-i2s ff890000.i2s: failed to find i2s default state
> > > [    0.660670] rockchip-i2s ff890000.i2s: failed to find i2s gpio state
> > > [    0.661716] rockchip-i2s ff8a0000.i2s: failed to find i2s pinctrl
> > > [    0.662276] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000005
> > > [    0.663061] Mem abort info:
> > > [    0.663317]   ESR = 0x0000000096000004
> > > [    0.663658]   EC = 0x25: DABT (current EL), IL = 32 bits
> > > [    0.664136]   SET = 0, FnV = 0
> > > [    0.664171] mmc2: SDHCI controller on fe330000.mmc [fe330000.mmc] using ADMA
> > > [    0.664409]   EA = 0, S1PTW = 0
> > > [    0.664415]   FSC = 0x04: level 0 translation fault
> > > [    0.664421] Data abort info:
> > > [    0.666050]   ISV = 0, ISS = 0x00000004
> > > [    0.666399]   CM = 0, WnR = 0
> > > [    0.666671] [0000000000000005] user address but active_mm is swapper
> > > [    0.667240] Internal error: Oops: 96000004 [#1] PREEMPT SMP
> > > [    0.667742] Modules linked in:
> > > [    0.668028] CPU: 5 PID: 1 Comm: swapper/0 Not tainted 5.19.0-rc6 #300
> > > [    0.668608] Hardware name: Pine64 RockPro64 v2.0 (DT)
> > > [    0.669062] pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > > [    0.669689] pc : pinctrl_lookup_state+0x20/0xc0
> > > [    0.670110] lr : rockchip_i2s_probe+0x1a8/0x54c
> > > [    0.670527] sp : ffff80000a17bb30
> > > [    0.670829] x29: ffff80000a17bb30 x28: 0000000000000000 x27: ffff8000097c04c8
> > > [    0.671480] x26: ffff800009871060 x25: ffff800009871078 x24: ffff000001c11368
> > > [    0.672129] x23: ffff8000092dc850 x22: ffffffffffffffed x21: ffff8000096f7e98
> > > [    0.672776] x20: ffffffffffffffed x19: ffff000001d92480 x18: ffffffffffffffff
> > > [    0.673423] x17: 000000040044ffff x16: ffff0000f77db2d0 x15: 0764076e07690766
> > > [    0.674070] x14: 0720076f07740720 x13: ffff800009e129f0 x12: 000000000000038d
> > > [    0.674717] x11: 000000000000012f x10: ffff800009e6a9f0 x9 : ffff800009e129f0
> > > [    0.675364] x8 : 00000000ffffefff x7 : ffff800009e6a9f0 x6 : 80000000fffff000
> > > [    0.676011] x5 : 000000000000bff4 x4 : 0000000000000000 x3 : 0000000000000000
> > > [    0.676657] x2 : 0000000000000000 x1 : ffff8000096f7e98 x0 : ffffffffffffffed
> > > [    0.677304] Call trace:
> > > [    0.677531]  pinctrl_lookup_state+0x20/0xc0
> > > [    0.677914]  rockchip_i2s_probe+0x1a8/0x54c
> > > [    0.678297]  platform_probe+0x68/0xc0
> > > [    0.678638]  really_probe.part.0+0x9c/0x2ac
> > > [    0.679027]  __driver_probe_device+0x98/0x144
> > > [    0.679429]  driver_probe_device+0xac/0x140
> > > [    0.679814]  __driver_attach+0xf8/0x184
> > > [    0.680169]  bus_for_each_dev+0x70/0xd0
> > > [    0.680524]  driver_attach+0x24/0x30
> > > [    0.680856]  bus_add_driver+0x150/0x200
> > > [    0.681210]  driver_register+0x78/0x130
> > > [    0.681560]  __platform_driver_register+0x28/0x34
> > > [    0.681988]  rockchip_i2s_driver_init+0x1c/0x28
> > > [    0.682407]  do_one_initcall+0x50/0x1c0
> > > [    0.682760]  kernel_init_freeable+0x204/0x288
> > > [    0.683160]  kernel_init+0x28/0x13c
> > > [    0.683482]  ret_from_fork+0x10/0x20
> > > [    0.683816] Code: aa0003f4 a9025bf5 aa0003f6 aa0103f5 (f8418e93)
> > > [    0.684365] ---[ end trace 0000000000000000 ]---
> > > [    0.684813] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> > > [    0.685500] SMP: stopping secondary CPUs
> > > [    0.685995] Kernel Offset: disabled
> > > [    0.686310] CPU features: 0x800,00105811,00001086
> > > [    0.686736] Memory Limit: none
> > > [    0.687021] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b ]---
> > >
> > > Check that i2s->pinctrl is valid before attempting to search for the
> > > bclk_on and bclk_off pinctrl states.
> > >
> > > Fixes: a5450aba737d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
> > > Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
> > > ---
> > >
> > > Full log at [1], config at [2] (pastebins expire after 6 months).
> > >
> > > I'm not familiar with this part of the kernel, I did my best to come up
> > > with an explanation and a fix for the panic.
> > >
> > > Read Documentation/devicetree/bindings/sound/rockchip-i2s.yaml, which has the
> > > definition for the i2s nodes with the same compatible string as the i2s@ff8a0000
> > > that is causing the panic (which is, "rockchip,rk3399-i2s"
> > > "rockchip,rk3066-i2s"). There's no mention there of a "pinctrl" property, maybe
> > > I'm reading the docs wrong, or maybe the board devicetree also needs fixing.
> > >
> > > [1] https://pastebin.com/vuRVDsKk
> > > [2] https://pastebin.com/3yDMF7YE
> > >
> > >  sound/soc/rockchip/rockchip_i2s.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
> > > index 99a128a666fb..c9fedf6eb2e6 100644
> > > --- a/sound/soc/rockchip/rockchip_i2s.c
> > > +++ b/sound/soc/rockchip/rockchip_i2s.c
> > > @@ -808,8 +808,11 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
> > >
> > >         i2s->bclk_ratio = 64;
> > >         i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
> > > -       if (IS_ERR(i2s->pinctrl))
> > > +       if (IS_ERR(i2s->pinctrl)) {
> > >                 dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
> > > +               ret = PTR_ERR(i2s->pinctrl);
> > > +               goto err_clk;
> > > +       }
> >
> > This would break audio for HDMI audio, which uses an I2S interface
> > to feed the HDMI controller and does not need or have pinctrl, but
> > here you make pinctrl a requirement.
> >
> > See https://lore.kernel.org/alsa-devel/20220621185747.2782-1-wens@kernel.org/
> > for my fix, which is merged for 5.20.
>
> For what it's worth, I've tested the fix and the board boots just fine.

Check if your HDMI audio card probed correctly or not?

ChenYu

> Thanks,
> Alex
>
> >
> > Maybe your patch (which Mark already applied) and commit a5450aba737d
> > ("ASoC: rockchip: i2s: switch BCLK to GPIO") should just be reverted from
> > the for-5.19?
> >
> > Mark?
> >
> >
> > Regards
> > ChenYu
> >
> > >
> > >         i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl,
> > >                                    "bclk_on");
> > > --
> > > 2.37.0
> > >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
