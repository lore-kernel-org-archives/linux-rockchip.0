Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7F31C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Mar 2022 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wx7nhewaYWxvFFDaj7OUCurse1HzY1/VFjQjXMdSJWw=; b=cEzkBNVERUR9cX
	p+/aHz2piGrUuvTUf3Hd6QhV8F/4Y9fcVNkFEn22oZuV5+ZOAtNuKVMQtZs1iRs7pNXstO1s/MHa/
	60H2aG2bBAtoEOTozmxJrwteHlG6YxfQSjDetfMKlNjUv+RPSa/OhgANluEqeihYkX0xS+n7UEPhv
	bgV1vj7sQGsBXZNnIvm7u0jqJgXsLjNAt8fmiK2PGL1UOoqBTMEYIJtGLUVXgxDhWsW7Egx/ATmm8
	ueZ5lAVqKvrpYsCzZk3MIYvRECMB50mcVKBbSYDcO1dJqQ7OrNBy16RRvY9QM18o9uEKibvAiDN1o
	WsemJrJtM+BkLCRQFYYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUpDq-00G4V4-St; Thu, 17 Mar 2022 12:27:18 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUpDl-00G4TO-8C
 for linux-rockchip@lists.infradead.org; Thu, 17 Mar 2022 12:27:16 +0000
Received: by mail-yb1-xb33.google.com with SMTP id v130so9830043ybe.13
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Mar 2022 05:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LdctqbxEVDhQYvXDWmmeebZ0ThVF6Vvf++/7X2JTCJ8=;
 b=NgegS/3xXWHhJZ+h+d8E8O7udktNPpwoJowIpEdN96EYhMXLEjnwxKuqGxuZnjG4++
 q7+4YWF/NHhqwBcf5RwJjrhS50aacDBu9FmkptgQ7Z7cMKaxs3UvgaQmT3M96RTERk4P
 pYF5uSGmWJcdg9weIdBYJHpd57sZrC4rwyOmp2med4PO8AgZinm46X3xCvMCXzmVWSNO
 bUnfN74fXkB3dF4tsbIiuYpxP1ufITYwwx3sfW0kQbJ1IfefFnDcoPArd7qgKhWuBgjX
 RxzRNZ1GoAGJOv1rirRl0ELuAfiPHyZHIibdTGi4fc2OSdkAXz65xr4IJ1bs8l2DOcxm
 N+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdctqbxEVDhQYvXDWmmeebZ0ThVF6Vvf++/7X2JTCJ8=;
 b=oTnpnvVmVxDXgAxHXcGH/jFXJ/UlwyAhQI5jTDuUbrRq1rqwSrPwnn5EiQubtAA/Pi
 6GIWNWvIMBQRB+9Dke5hHBpTXBUfdexl8V1fzPpd1Pbf9AWg6MA+GTP6enI2+0k+DV2e
 Abl7BfYD2C0jJtdW7UTDoBNC/wGtOH9UWAOgDF+Ll2ybdgaNXbvyjp5oo3HFd+nho3+0
 GTnT90RnW6Y+UX0hhGVDMsAXFYi6sgrdDajC5fMNbnLrbwiJ/dnqVjWS12w7XBBiN9To
 Nvua4GbeaHMEjo+0ALZ0hKJBPqaOudcj7ZPHDGmJvBvxQuZFVU4Yj+NqMQhbNavRPSDo
 sUbw==
X-Gm-Message-State: AOAM533I5ubdB3AQnsvuJ/3VFaDRLXG68SoqgcSrGIEdDTPw4rKZMxMc
 6dSHJC5oABuMIEavd0p9kiNf2e6d/2B4om7NndE=
X-Google-Smtp-Source: ABdhPJwCBKSWEr+iQJyBYOMQKOUXfv83u9thixxmY/S06ul6Wpnil+dZXTcHg6YAnmKn3zkYeTVHkEQstFwI206YOGU=
X-Received: by 2002:a25:bc87:0:b0:633:806d:9c7d with SMTP id
 e7-20020a25bc87000000b00633806d9c7dmr4784082ybk.232.1647520031959; Thu, 17
 Mar 2022 05:27:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYptw9L=5SECtVkNZruTT-x57+03vj0A+5efvq8cESzLyQ@mail.gmail.com>
 <CADnq5_NXmRr_Q7JuWZxJAjmavVkvJjNcWayQ1x8LhfcX5CS0uA@mail.gmail.com>
 <CAMdYzYoamh-igvBbKaLSJ6bSc3wA29=8mooJDLMJkj9YQ=wj0A@mail.gmail.com>
 <CADnq5_NXFZPA_z6413FDgr8WRObhCB+HdkHE5P=PAAMV4FiWiA@mail.gmail.com>
 <20dffd4d-fa54-5bc3-c13b-f8ffbf0fb593@arm.com>
 <599edb94-8294-c4c5-ff7f-84c7072af3dd@gmail.com>
 <546bf682-565f-8384-ec80-201ce1c747f4@arm.com>
 <8afb06c4-7601-d0d7-feae-ee5abc9c3641@amd.com>
 <CAMdYzYqH57HuqMMydMtQw2Ep2A_Qhjg3N_gTw6GuO6Kuxd9chQ@mail.gmail.com>
 <c3bd7c08-f7e3-153e-8445-8e867916d03c@arm.com>
In-Reply-To: <c3bd7c08-f7e3-153e-8445-8e867916d03c@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 17 Mar 2022 08:26:57 -0400
Message-ID: <CAMdYzYpt1vOCXiDUHCnuVRKnQ51Qissj9-w75FB6nVrFWS-9iw@mail.gmail.com>
Subject: Re: radeon ring 0 test failed on arm64
To: Robin Murphy <robin.murphy@arm.com>
Cc: Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Alex Deucher <alexdeucher@gmail.com>, "Deucher,
 Alexander" <alexander.deucher@amd.com>, 
 amd-gfx list <amd-gfx@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220317_052713_339758_B0478FE5 
X-CRM114-Status: GOOD (  39.67  )
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

On Thu, Mar 17, 2022 at 6:37 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-03-17 00:14, Peter Geis wrote:
> > Good Evening,
> >
> > I apologize for raising this email chain from the dead, but there have
> > been some developments that have introduced even more questions.
> > I've looped the Rockchip mailing list into this too, as this affects
> > rk356x, and likely the upcoming rk3588 if [1] is to be believed.
> >
> > TLDR for those not familiar: It seems the rk356x series (and possibly
> > the rk3588) were built without any outer coherent cache.
> > This means (unless Rockchip wants to clarify here) devices such as the
> > ITS and PCIe cannot utilize cache snooping.
> > This is based on the results of the email chain [2].
> >
> > The new circumstances are as follows:
> > The RPi CM4 Adventure Team as I've taken to calling them has been
> > attempting to get a dGPU working with the very broken Broadcom
> > controller in the RPi CM4.
> > Recently they acquired a SoQuartz rk3566 module which is pin
> > compatible with the CM4, and have taken to trying it out as well.
> >
> > This is how I got involved.
> > It seems they found a trivial way to force the Radeon R600 driver to
> > use Non-Cached memory for everything.
> > This single line change, combined with using memset_io instead of
> > memset, allows the ring tests to pass and the card probes successfully
> > (minus the DMA limitations of the rk356x due to the 32 bit
> > interconnect).
> > I discovered using this method that we start having unaligned io
> > memory access faults (bus errors) when running glmark2-drm (running
> > glmark2 directly was impossible, as both X and Wayland crashed too
> > early).
> > I traced this to using what I thought at the time was an unsafe memcpy
> > in the mesa stack.
> > Rewriting this function to force aligned writes solved the problem and
> > allows glmark2-drm to run to completion.
> > With some extensive debugging, I found about half a dozen memcpy
> > functions in mesa that if forced to be aligned would allow Wayland to
> > start, but with hilarious display corruption (see [3]. [4]).
> > The CM4 team is convinced this is an issue with memcpy in glibc, but
> > I'm not convinced it's that simple.
> >
> > On my two hour drive in to work this morning, I got to thinking.
> > If this was an memcpy fault, this would be universally broken on arm64
> > which is obviously not the case.
> > So I started thinking, what is different here than with systems known to work:
> > 1. No IOMMU for the PCIe controller.
> > 2. The Outer Cache Issue.
> >
> > Robin:
> > My questions for you, since you're the smartest person I know about
> > arm64 memory management:
> > Could cache snooping permit unaligned accesses to IO to be safe?
>
> No.
>
> > Or
> > Is it the lack of an IOMMU that's causing the alignment faults to become fatal?
>
> No.
>
> > Or
> > Am I insane here?
>
> No. (probably)
>
> CPU access to PCIe has nothing to do with PCIe's access to memory. From
> what you've described, my guess is that a GPU BAR gets put in a
> non-prefetchable window, such that it ends up mapped as Device memory
> (whereas if it were prefetchable it would be Normal Non-Cacheable).

Okay, this is perfect and I think you just put me on the right track
for identifying the exact issue. Thanks!

I've sliced up the non-prefetchable window and given it a prefetchable window.
The 256MB BAR now resides in that window.
However I'm still getting bus errors, so it seems the prefetch isn't
actually happening.
The difference is now the GPU realizes that an error has happened and
initiates recovery, vice before where it seemed to be clueless.
If I understand everything correctly, that's because before the bus
error was raised by the CPU due to the memory flag, vice now where
it's actually the bus raising the alarm.

My next question, is this something the driver should set and isn't,
or is it just because of the broken cache coherency?

>
> Robin.

Thanks again!
Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
