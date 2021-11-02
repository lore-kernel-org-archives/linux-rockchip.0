Return-Path: <SRS0=tLvN=PV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA6FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 21:40:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 83D2D603E9
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 21:40:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 83D2D603E9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vN0rcO2okzSVRWz80IhmxLrztQXPByblZOz7JVdKauE=; b=zf0w1eIuP3aURV
	LxrMFWV4w6Bh44xyjFXBV8VfbiZjNcc2cQhm6C9tD25xoKvVv1en5/4e6PLbzclVpGS8gOM5Z/1Ip
	ZVRHrtGlGG05+6tYiKPqO+8LeA8Ytvi0+s05VBFwwEoqJNKrnrkJtkR156CKgLOFdPW94vXolEqmo
	CSz7u7uJRkXaC9ILXXVspBk+5NtSO9uqeq2Fj2vRhKQawTvNqIHp+RIwwcEL3liwAu7XHWD1q7F8K
	zfzMBbO5/gK+84j16ixnl5nw9FEJA4M6ZYr+RY/6h37wZ7ON43uoC9Fkkifs0uC6ValJnebQRigF2
	1TlyXodU57Cxw2nkK+hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mi1WM-0034Iq-RU; Tue, 02 Nov 2021 21:40:42 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mi1WI-0034G7-LN
 for linux-rockchip@lists.infradead.org; Tue, 02 Nov 2021 21:40:41 +0000
Received: by mail-wr1-x42e.google.com with SMTP id o14so539224wra.12
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Nov 2021 14:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RRy2HKxizQGRbNFKYHU7Hj+PY9O55ysIFI9KaBWKaSA=;
 b=eqHIPKXJm1t0gcggH43OKyXXE4dxQf6kL354n9N4erFZ6vZfG/TIMx1Xtpa7kimEzJ
 IdnG5ZemJ84or97zTpkagOHIkCDa7oXYXwm713aJ14zdMt00g0u8dgyrsKOzCgEyGvm5
 VDOgO9njmkYW6dHoiCeefLSx2uQRrh5CpE7ETJkd86lb1omt/8NpwfK9LEU2sK2QX9bn
 RvI8YmFJGUGbIKmUWiAqNvlpR01C7zB2EOjPvJDZw0CnKKAqpFbL1mDSZ3o2PqSGs9xr
 bBbkXsELmFm7/8bhPV97vSjZaEDIcNfMsIkmvbcTq9Ly/KOJ4STkSH3SOwP/dqNMuqPV
 NhOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RRy2HKxizQGRbNFKYHU7Hj+PY9O55ysIFI9KaBWKaSA=;
 b=BRESk7LmRzHvEso1AVQ/Zc0SEDq6FLBMx+g2NuI/92hz8cZPClGOiJQhBo/YyQaPH1
 DD6tZH7rD79OEipFTaPPSrOw7Mx+6NbGUZjJ0n8ZsAfJxCPdAkG4jV1o0Mb7oQXIG5ZY
 w25Shz/5R6Pzjrzx/fd6AFAUDvenzvz8jFlhh7tDY7FwSyy0XSaxBcLwRtSeznRv55wB
 csrD7ceV8sk2kIr5tBPMnylKiJwi4FM4wUE182wbSOJ5pBu6sJmSmrPwH2CumyWRxs9C
 r98kaDm+ym/AQfsc/WOMDPBUzt3CWqzMMViD6Ye05FlW2iMV4V+0FIsqN81rlDyj9bIW
 zlpg==
X-Gm-Message-State: AOAM5312lisjRgioVOCfo56+c4jK8scy7k7OvcueRmMwnVm3BGuhoQhT
 uMITHb+Ykr3VXX5peokD8F799A==
X-Google-Smtp-Source: ABdhPJynKNEWhOofitXQB1sS8+qf4ZeclaLzHS7NkDhbro0v/6poqmdF9U094egDD0VH8W8f4CU1Qw==
X-Received: by 2002:a5d:4890:: with SMTP id g16mr51914613wrq.10.1635889233579; 
 Tue, 02 Nov 2021 14:40:33 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id p13sm4218448wmi.0.2021.11.02.14.40.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 14:40:33 -0700 (PDT)
Date: Tue, 2 Nov 2021 22:40:31 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Alex Bee <knaerzche@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, sboyd@kernel.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 "kernelci@groups.io" <kernelci@groups.io>,
 Collabora Kernel ML <kernel@collabora.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] clk: composite: Also consider .determine_rate for rate +
 mux composites
Message-ID: <YYGwT0CKEd5Xu2jO@Red>
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
 <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
 <04a58d50-634b-fa20-95b4-eb6831f77e85@collabora.com>
 <CAFBinCAEt9_EfLYWZEzTBK6iN97+Wacho7pNd2LYDPX3+goMzg@mail.gmail.com>
 <b6468523-a730-6a44-f4b9-3fd5b9ea2354@arm.com>
 <3e42ae24-8db4-fb11-edf2-a25bca47ecae@arm.com>
 <49a0dda1-8d0f-580c-d92d-de759b51edb3@gmail.com>
 <31d462cb-1158-dd13-0ca8-46d54d2502f5@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31d462cb-1158-dd13-0ca8-46d54d2502f5@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_144038_751691_579DBF86 
X-CRM114-Status: GOOD (  36.05  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Nov 02, 2021 at 07:58:42AM +0000, Guillaume Tucker a =E9crit :
> +Kevin +Corentin
> =

> On 01/11/2021 22:41, Alex Bee wrote:
> > Hi Guillaume,
> > =

> > Am 01.11.21 um 23:11 schrieb Robin Murphy:
> >> On 2021-11-01 21:59, Robin Murphy wrote:
> >>> On 2021-11-01 20:58, Martin Blumenstingl wrote:
> >>>> Hi Guillaume,
> >>>>
> >>>> On Mon, Nov 1, 2021 at 9:19 PM Guillaume Tucker
> >>>> <guillaume.tucker@collabora.com> wrote:
> >>>>>
> >>>>> Hi Martin,
> >>>>>
> >>>>> Please see the bisection report below about a boot failure on
> >>>>> rk3328-rock64.
> >>>>>
> >>>>> Reports aren't automatically sent to the public while we're
> >>>>> trialing new bisection features on kernelci.org but this one
> >>>>> looks valid.
> >>>>>
> >>>>> Some more details can be found here:
> >>>>>
> >>>>> =A0=A0 https://linux.kernelci.org/test/case/id/617f11f5c157b666fb33=
58e6/
> >>>>>
> >>>>> Here's what appears to be the cause of the problem:
> >>>>>
> >>>>> [=A0=A0=A0 0.033465] CPU: CPUs started in inconsistent modes
> >>>>> [=A0=A0=A0 0.033557] Unexpected kernel BRK exception at EL1
> >>>>> [=A0=A0=A0 0.034432] Internal error: BRK handler: f2000800 [#1] PRE=
EMPT SMP
> >>>
> >>> What's weird is that that's really just the same WARN that's also
> >>> present in 'successful' logs, except for some reason it's behaving as
> >>> if the break handler hasn't been registered, despite that having
> >>> happened long before we got to smp_init(). At this point we're also
> >>> still some way off getting as far as initcalls, so I'm not sure that
> >>> the clock driver would be in the picture at all yet.
> >>>
> >>> Is the bisection repeatable, or is this just random flakiness
> >>> misleading things? I'd also note that you need pretty horrifically
> >>> broken firmware to hit that warning in the first place, which might
> >>> cast a bit of doubt over the trustworthiness of that board altogether.
> =

> The bisection has checks to avoid false positives, so tests that
> produce flaky results won't normally lead to a report like this.
> Then they're manually triaged, and there were 2 separate
> bisections that landed on this same commit.
> =

> >> Ah, on closer inspection it might be entirely repeatable for a given
> >> kernel build, but with the behaviour being very sensitive to code/data
> >> segment layout changes...
> >>
> >> ...
> >> 23:44:24.457917=A0 Filename '1007060/tftp-deploy-dvdnydcw/kernel/Image=
'.
> >> 23:44:24.460178=A0 Load address: 0x2000000
> >> ...
> >> 23:44:27.180962=A0 Bytes transferred =3D 33681920 (201f200 hex)
> >> ...
> >> 23:44:27.288135=A0 Filename
> >> '1007060/tftp-deploy-dvdnydcw/ramdisk/ramdisk.cpio.gz.uboot'.
> >> 23:44:27.288465=A0 Load address: 0x4000000
> >> ...
> =

> That is indeed where the remaining false positives are still
> likely to be coming from, when the infrastructure consistently
> causes test failures following particular kernel revisions.  I
> don't think there's an easy way to rule those out, but we can try
> to address them one by one at least.
> =

> In the case of colliding address ranges in the bootloader, we
> could add a check with the "good" revision and extra data in the
> kernel image to make it at least as big as the "bad" revision...
> =

> > could you try updating u-boot to more recent version: the ramdisk
> > address has been moved [1] to 0x06000000 in v2020.01-rc5.
> =

> Thanks for investigating this.  The board is in BayLibre's lab.
> =

> Corentin, Kevin, could you please take a look?
> =


Hello

I tried to update uboot on it but failed for today.
I found only how to flash sdcard (doiing it remotly), but the board boots S=
PI first (and I saw no documentation on how to flash SPI).
I need to have physical access to change this.
So probably later this week.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
