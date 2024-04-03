Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5CCBCCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tD5+zqxulWP4VNffEnzuFr1a7F1KIU5cpfPQ2or4xL4=; b=wqtA0WiCGLEQnv
	8FkwqiakcjmLWZMrCGEOFtizCDQZQ+r7Daf131Jl+t9Zd76l3t2R/DWvAZPPkIHKtxeQjbqkp45mZ
	U8NyEcJZECaoSPK/oRIQonga5mpVaZ6L0jU1cKi/RiY64J6aVVlJ3ubIdit2WsGF6IratBYjGQhFh
	URIvWigGZR+VDQSS4s86yAkBjfnagf5v33T3HuGvQ6EgJYqJ+abMfm6tfNWtz9axfj0kaK4HvagRa
	ByHmrRXPeXumV+sjlGlWZ288wzvdndxm5P5fLXRVsFyvLhkVAfdChqmVWhyFcmhsYaHrg68tEYcNB
	NxOnWECpUk8rqPatXeKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoni-0000000DLqg-3oco;
	Mon, 20 Oct 2025 12:15:46 +0000
Received: from mail-4018.proton.ch ([185.70.40.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2Vx-0000000GjG7-3AkR;
	Wed, 03 Apr 2024 15:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1712158011; x=1712417211;
	bh=9SQXRgCUecFeWBFD17xwAybx00ZfUI80tkTt7oEpgbI=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=mIu1yPYh/SOnPiPmfVQR14NLuXoTecAhyJ/uF7ffGscpgsXDkMJC3hEm7La/4034R
	 bpc1LYk2unCxUXeq64HUDzDoBB6XEidI2YoKgij6T8unAAu4Z8Q9fLzAlnZXWT6+Ut
	 IEho6xr3UisETLI5ymHomXVD7rS7rnaRGPLKiuuVHEvkTh+a84zX/YkGgtZhMpJXO8
	 UAoHc47elTv7sNf3LqD+s7eN4wHBRDtYl2xiMBDItM+Q+nGKkyayRNB6AcIX2WFq7U
	 kw58Zu4myk6mAjyRVgjFz3gZsRbg692KNeQqfYOVr7Ta35HUAtS92kRpVh97RgmNij
	 wpN+qWpcPXNRQ==
Date: Wed, 03 Apr 2024 15:26:44 +0000
To: Sebastian Reichel <sebastian.reichel@collabora.com>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: Saravana Kannan <saravanak@google.com>, Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, regressions@lists.linux.dev, stable@vger.kernel.org
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
Message-ID: <D0ALCT8IOMGQ.105ELHD701M4F@thefossguy.com>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_082701_969411_07980ADD 
X-CRM114-Status: GOOD (  24.16  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:15:44 -0700
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

On Wed Apr 3, 2024 at 7:22 PM IST, Sebastian Reichel wrote:
> Hi,
>
> On Wed, Apr 03, 2024 at 01:03:07AM +0000, Pratham Patel wrote:
> > > > > Also, can you give the output of <debugfs>/devices_deferred for the
> > > > > good vs bad case?
> > > >
> > > > I can't provide you with requested output from the bad case, since the
> > > > kernel never moves past this to an initramfs rescue shell, but following
> > > > is the output from v6.8.1 (**with aforementioned patch reverted**).
> > > >
> > > > # cat /sys/kernel/debug/devices_deferred
> > > > fc400000.usb    platform: wait for supplier /phy@fed90000/usb3-port
> > > > 1-0022  typec_fusb302: cannot register tcpm port
> > > > fc000000.usb    platform: wait for supplier /phy@fed80000/usb3-port
> > > >
> > > > It seems that v6.8.2 works _without needing to revert the patch_. I will
> > > > have to look into this sometime this week but it seems like
> > > > a8037ceb8964 (arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s)
> > > > seems to be the one that fixed the root issue. I will have to test it
> > > > sometime later this week.
> > >
> > > Ok, once you find the patch that fixes things, let me know too.
> >
> > Will do!
>
> FWIW the v6.8.1 kernel referenced above is definitely patched, since
> upstream's Rock 5B DT does neither describe fusb302, nor the USB
> port it is connected to.
>
> We have a few Rock 5B in Kernel CI and upstream boots perfectly
> fine:
>
> https://lava.collabora.dev/scheduler/device_type/rk3588-rock-5b

Hmm, weird then. I can confirm that v6.8.1 doesn't _always_ boot. It
boots some times but still fails a majority of times. There is a
2 out of 10 chance that v6.8.1 will not boot. If you keep rebooting
enough times, you might get it to boot but the next boot is
likely to be borked. :(

That said, v6.8.2 might still have the same issue, but the probably of a
failed boot might be _lesser_ than v6.8.1 (from what I saw). I will
verify that behaviour sometime tomorrow or day after tomorrow.

>
> So it could be one of your downstream patches, which is introducing
> this problem.

I thought so too. So I built a vanilla kernel from the release tarball
of v6.8.1, using GCC + arm64 defconfig. I also tried using LLVM just in
case but noticed the same result.

 -- Pratham Patel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
