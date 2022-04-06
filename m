Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D143C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 02:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXIXQQnJzSL8jFhCZ9kwpaQ0VTIjQWZP4ud0KPnZPS8=; b=2afYPFO67aEtFf
	nE0ETeENxc2lBYes7dCMcSrwOd9HoVUPjJOcYKDUJeVWT/0l5GA+7HpQ+EfN9dOyHDEJbcMejEuR6
	nXWDSBRFdhxW3T7UJfdU86OCe50DpS/Pg55Ls+r5PWCnsTq8tHCFzXOWJTTEgFQOHLkFxlcCn1+U3
	AuJkhFQ1PvSIavdHtYiEsOEQhaRFKqtlaF73WrDRcjiTnEqkHCEK8uNOps+p/WKrk2VxQBsZwsRHi
	P/DCYTjmdn/noX8Ju3m5FQsolRvdHYb4UULHQOFVzvhs1la3IBN/jBMMt6nw96JfzrT0HXEpNT8MW
	quxl1q+GZP+MQaxbJxKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbvNj-003Pyd-7M; Wed, 06 Apr 2022 02:26:51 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbvNY-003Puf-A7
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 02:26:42 +0000
Received: by mail-ej1-x629.google.com with SMTP id i27so1362757ejd.9
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 19:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L0kN2mvmwQNNtvPp2RShdfNb1tA7tCIbp7VBq6LYez4=;
 b=iPWy6+0V6Z7cYgmmqI81g4OAUUB8MRCno8hqy8BW/l7BT+hJFxKv+kJ1Pp2pI2iqOi
 zZHGQFsQesezNZsU4vTt3FAJeWqK8SEJaV27yBct6SWfpbWOQyF5AlxEeWean9Zu1Mxe
 pQBKHHykj8FBi66czv7qJa4Lf7zoYv5WNgJc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L0kN2mvmwQNNtvPp2RShdfNb1tA7tCIbp7VBq6LYez4=;
 b=Z2f913cDNtQvyfvMotoI748LeJ37uS4e9xEXch8g/R5wk5uC+Ne8HACC63FBZ1CRfh
 eNaiHeRl+6G0e4woJaNqAfz38qnvvuUy2g+gyghkV8G5FQUTm5gEzP9TIo1Bti4wn9O3
 MGlH4VRxbnjRnblZVu/iAu5ufyCKX3bbBeL9ShXq0o0Mt3FPZulB0GXHMLALNAvHvfb/
 mPPJAdewcybwNo7hg5tUsac8GvAKwFOWSMqkXYeBEGuxF1MnmDvze+OGYsp5bg10rbXs
 doQkxLmjQTMAX7BNOvvWDO0d0w7BxZjCKFTdZPED9h8SYVGU/8w9Hp/Iirp0uhVpiMWC
 zcXA==
X-Gm-Message-State: AOAM530T3ExKL5a4ZBB6NTNz6PBypDQeZv/GPvvqIQ6YZw6ZF2TRKcm4
 VxqkUYZBiUtgtLPVwyBWNnxVzu5CWkxBHqerbsw=
X-Google-Smtp-Source: ABdhPJxALwM/azlWB2HgzcWdTrS8nf84t5vvtOfXku3aM6knO8Pa3ybvibuhDLUn+WBjkJfeV1c7qA==
X-Received: by 2002:a17:907:3f10:b0:6da:818d:4525 with SMTP id
 hq16-20020a1709073f1000b006da818d4525mr6048569ejc.47.1649211996963; 
 Tue, 05 Apr 2022 19:26:36 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com.
 [209.85.128.51]) by smtp.gmail.com with ESMTPSA id
 j4-20020a509d44000000b0041cdc7ffda4sm2569330edk.59.2022.04.05.19.26.35
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 19:26:35 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso2771751wma.0
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 19:26:35 -0700 (PDT)
X-Received: by 2002:a1c:7518:0:b0:37c:7eb:f255 with SMTP id
 o24-20020a1c7518000000b0037c07ebf255mr5314285wmc.29.1649211994685; Tue, 05
 Apr 2022 19:26:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <20220405184816.RFC.1.Ib865f199d15221eab4ff77f70bd7e9e2eb04d32f@changeid>
In-Reply-To: <20220405184816.RFC.1.Ib865f199d15221eab4ff77f70bd7e9e2eb04d32f@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 5 Apr 2022 19:26:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xz+KLySeUBHe1CXEbMrjeT97HvCOdiRRG7wGcwbjQX8A@mail.gmail.com>
Message-ID: <CAD=FV=Xz+KLySeUBHe1CXEbMrjeT97HvCOdiRRG7wGcwbjQX8A@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] soc: rockchip: power-domain: Manage resource
 conflicts with firmware
To: Brian Norris <briannorris@chromium.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
 LKML <linux-kernel@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Linux PM <linux-pm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_192640_389222_59A059E7 
X-CRM114-Status: GOOD (  34.85  )
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

Hi,

On Tue, Apr 5, 2022 at 6:49 PM Brian Norris <briannorris@chromium.org> wrote:
>
> On RK3399 platforms, power domains are managed mostly by the kernel
> (drivers/soc/rockchip/pm_domains.c), but there are a few exceptions
> where ARM Trusted Firmware has to be involved:
>
> (1) system suspend/resume
> (2) DRAM DVFS (a.k.a., "ddrfreq")
>
> Exception (1) does not cause much conflict, since the kernel has
> quiesced itself by the time we make the relevant PSCI call.
>
> Exception (2) can cause conflict, because of two actions:
>
> (a) ARM Trusted Firmware needs to read/modify/write the PMU_BUS_IDLE_REQ
>     register to idle the memory controller domain; the kernel driver
>     also has to touch this register for other domains.
> (b) ARM Trusted Firmware needs to manage the clocks associated with
>     these domains.
>
> To elaborate on (b): idling a power domain has always required ungating
> an array of clocks; see this old explanation from Rockchip:
> https://lore.kernel.org/linux-arm-kernel/54503C19.9060607@rock-chips.com/
>
> Historically, ARM Trusted Firmware has avoided this issue by using a
> special PMU_CRU_GATEDIS_CON0 register -- this register ungates all the
> necessary clocks -- when idling the memory controller. Unfortunately,
> we've found that this register is not 100% sufficient; it does not turn
> the relevant PLLs on [0].
>
> So it's possible to trigger issues with something like the following:
>
> 1. enable a power domain (e.g., RK3399_PD_VDU) -- kernel will
>    temporarily enable relevant clocks/PLLs, then turn them back off
>    2. a PLL (e.g., PLL_NPLL) is part of the clock tree for
>       RK3399_PD_VDU's clocks but otherwise unused; NPLL is disabled
> 3. perform a ddrfreq transition (rk3399_dmcfreq_target() -> ...
>    drivers/clk/rockchip/clk-ddr.c / ROCKCHIP_SIP_DRAM_FREQ)
>    4. ARM Trusted Firmware unagates VDU clocks (via PMU_CRU_GATEDIS_CON0)
>    5. ARM Trusted firmware idles the memory controller domain
>    6. Step 5 waits on the VDU domain/clocks, but NPLL is still off
>
> i.e., we hang the system.
>
> So for (b), we need to at a minimum manage the relevant PLLs on behalf
> of firmware. It's easier to simply manage the whole clock tree, in a
> similar way we do in rockchip_pd_power().
>
> For (a), we need to provide mutual exclusion betwen rockchip_pd_power()
> and firmware. To resolve that, we simply grab the PMU mutex and release
> it when ddrfreq is done.
>
> The Chromium OS kernel has been carrying versions of part of this hack
> for a while, based on some new custom notifiers [1]. I've rewritten as a
> simple function call between the drivers, which is OK because:
>
>  * the PMU driver isn't enabled, and we don't have this problem at all
>    (the firmware should have left us in an OK state, and there are no
>    runtime conflicts); or
>  * the PMU driver is present, and is a single instance.
>
> And the power-domain driver cannot be removed, so there's no lifetime
> management to worry about.
>
> For completeness, there's a 'dmc_pmu_mutex' to guard (likely
> theoretical?) probe()-time races. It's OK for the memory controller
> driver to start running before the PMU, because the PMU will avoid any
> critical actions during the block() sequence.
>
> [0] The RK3399 TRM for PMU_CRU_GATEDIS_CON0 only talks about ungating
>     clocks. Based on experimentation, we've found that it does not power
>     up the necessary PLLs.
>
> [1] CHROMIUM: soc: rockchip: power-domain: Add notifier to dmc driver
>     https://chromium-review.googlesource.com/q/I242dbd706d352f74ff706f5cbf42ebb92f9bcc60
>     Notably, the Chromium solution only handled conflict (a), not (b).
>     In practice, item (b) wasn't a problem in many cases because we
>     never managed to fully power off PLLs. Now that the (upstream) video
>     decoder driver performs runtime clock management, we often power off
>     NPLL.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  drivers/soc/rockchip/pm_domains.c | 118 ++++++++++++++++++++++++++++++
>  include/soc/rockchip/pm_domains.h |  25 +++++++
>  2 files changed, 143 insertions(+)

I've already done several pre-review of a few versions of this, so at
this point I'm pretty happy with where things are. Feel free to add:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
