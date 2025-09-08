Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5CA1CAC585
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 18:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5y1u9PirvtGvR/Rnx0HOAI0B52cVaS/vDQ6urb5w9Go=; b=D1kcMchCtAFvpT
	+Zs3AEWMZ80lOjxOLJPkHnF6Qc0AKe3qELngo7yl+uk9+zOoHIhVLBeBIsM/JluHZjkzd/x7qW6+K
	RQ7MYqufVmJbvy/4CdJX3bmsm9oROl8PFy/sqql7MzjBrDIp7Qv6WkKSTdat9SlvnbuKY88cXLtu0
	G1kAjBMn5z4LWbRNJuYsmxlChWqAmoozuElhMKhLTBVTNp9MYATCA1ARZJXIlGH3hgcBuKgWPRU3r
	tsAJYvlEF2dvRIi5brsJ6781agifPjjs2QYsPPdnb3CKTEVf/MKWSR8bF7mmpP0b+ik2lgIXRixLu
	YwW22G5iEkzOptGSHF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvgUa-00000001V2A-0sXJ;
	Mon, 08 Sep 2025 18:21:28 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbhq-0000000HJHF-0IlN
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 13:14:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1757337274; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DNh13hbFAmkcsVoMBOYEI2azWoZts5Tloe+7VNBo6Kal0Rt8Ft0HNkSbk+CD6RugngB3pmFnR/A3s5jP8Ff/8QZS9GBzd/PSIb41LOFGp0AKolLTuT825FL9ELSftJivQtC+sNxkCGij9Vc2GaoiuteOJxyiwS2w2EP3S+adB7Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757337274; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pk0pPbbGzqsDwAb5KOUGSpgEXegsNBH0oucyp1ouJvs=; 
	b=bnADyuBiUpkfLxyDVSannBNIBHWRhcNPBgAaPrZgquGkCJfXdgJijdGOrVsQ8UamL8oWb1SKPa8HuQ5qmC5EzvIft/w6aMgLWZs2nfHJId3DH7lLZKFoRuPlhuCpnwt0sModYCw7v8aa9ymnkHSzUrU78+lhUiEMExIhwf7aIcU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757337274;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=pk0pPbbGzqsDwAb5KOUGSpgEXegsNBH0oucyp1ouJvs=;
	b=FQHB5ZAO3t8mFRAWbT4PhhvTQL8TZAZVnBRS5+l6VHAcG2epE5UTsZTH6Q0rHEE+
	7DXx+udKmcgHmrx1ExjnEJB4aVF4pFktKBdYHTgw87gYZzXJMMfIi2bZs2QQZ6YGXhZ
	gVgyeJR2nMC4d8y6mDUlaYCauRsNl39VXnVbqEi8=
Received: by mx.zohomail.com with SMTPS id 1757337272979795.5615319676068;
	Mon, 8 Sep 2025 06:14:32 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
Date: Mon, 08 Sep 2025 15:14:28 +0200
Message-ID: <1953725.CQOukoFCf9@workhorse>
In-Reply-To: <CAPDyKFpSY+FeKh7ocjQ_nGNZA5+3tWAL8e7ZNKXKNFP-yoiu_g@mail.gmail.com>
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
 <3556261.BddDVKsqQX@workhorse>
 <CAPDyKFpSY+FeKh7ocjQ_nGNZA5+3tWAL8e7ZNKXKNFP-yoiu_g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_061450_173477_220582EE 
X-CRM114-Status: GOOD (  47.48  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Friday, 5 September 2025 16:27:27 Central European Summer Time Ulf Hansson wrote:
> [...]
> 
> >
> > Okay so I believe I have found the root cause of the regression. UFS is
> > innocent, disabling UFS just happens to avoid it due to how the timing of
> > things works out.
> >
> > The real issue is that the NPU power domains on the RK3576, which are
> > currently unused, have an undeclared dependency on vdd_npu_s0.
> >
> > Declaring this dependency with a `domain-supply` and adding the
> > necessary flag in the rockchip PD controller to use it does not solve
> > he problem. This is because the rockchip PD controller cannot acquire
> > those supplies during probe, as they're not available yet and their
> > availability depends on the PD controller finishing probe.
> >
> > That's why it acquires them in the PD enable callback, but the NPU
> > PDs are never enabled because they're unused.
> >
> > This worked fine when unused PDs were still turned off quite early, as
> > this meant they were turned off before regulators. Now the unused
> > regulators are turned off before turning off the unused PDs happens.
> 
> I see, thanks for sharing these details. What a mess.
> 

Agreed :(

> >
> > I don't really see an easy way to fix this with a patch that's fit for
> > an rc cycle. We can't request the regulator early or even just add a
> > device link, as the regulator is not around yet.
> 
> Right, I will work on a patch or two that allows rockchip
> power-domains to opt-out from genpds new behavior and to keep using
> the old one.
> 
> I think we prefer to do it like this (should be quite a limited amount
> of code and okay for an rc), rather than reverting for everyone.

That sounds good to me.

> 
> >
> > Marking vdd_npu_s0 as always-on would be abusing DT to work around a
> > Linux kernel shortcoming, which is a no-no.
> >
> > What we need is either a way to register with pmdomain core that
> > certain PDs need a late init for additional supplies, which is then
> > called before any of the unused regulator power off functionality is
> > invoked by the regulator core.
> >
> > Any ideas?
> 
> Yes :-)
> 
> I would suggest implementing an auxiliary driver, along with the
> rockchip_pm_domain_driver. The main job for the auxiliary driver would
> be to get the regulator in its ->probe() - and if it fails because the
> regulator isn't available yet, it should keep trying by returning
> -EPROBE_DEFER. See more about the auxiliary bus/device/driver in
> include/linux/auxiliary_bus.h and module_auxiliary_driver().
> 
> Moreover, when the rockchip_pm_domain_driver probes, it becomes
> responsible for pre-parsing the OF nodes for the domain-supply DT
> property, for each of the specified power-domains. If it finds a
> domain-supply, it should register an auxiliary device that corresponds
> to that particular power-domain. This can be done by using
> platform-data that is shared with the auxiliary device/driver. See
> devm_auxiliary_device_create().
> 
> Furthermore we would need some kind of synchronization mechanism
> between the rockchip_pm_domain_driver and the auxiliary driver, to
> manage the regulator get/enable/disable. I think that should be rather
> easy to work out.
> 
> Do you think this can work?

This sounds similar to something Heiko suggested to me, and I agree
it could work. It does seem like a pretty painful solution though,
in terms of needed additional code and complexity to basically just
tell Linux "hey you can't get this regulator yet but please try
again later without our involvement".

To that end, I've tried working out a regulator-based solution to
it, where the rockchip_pm_domain driver registers a "proxy"
regulator for each power domain that wants a regulator, with its
supply set to the name of the real `domain-supply` regulator.

The logic behind this was that the regulator core runs a check
for whether every supply is resolved before it turns off unused
regulators. The hope was that if we register a proxy regulator
and enable it immediately in the pm_domain probe, then regulator
core will handle the actual dependency at precisely the right
time, namely before it checks to see whether any are unused and
can be turned off.

As I discovered though, this can't really work. The regulator
core will in this case just set the supply regulator to a dummy
regulator when it's enabled in our probe function, and later
supply resolving passes are then content that this supply is
resolved even though it is a dummy supply. There does not appear
to be any way to opt out of getting this dummy supply.

So knowing that this doesn't work, I have another idea, but I
feel like both the regulator subsystem and the pm-domains
subsystem will hate this: explicitly create an order between
the pmdomain idle check and the regulator idle check to make
sure that the pmdomains idle check runs first.

This would set in stone how the kernel worked previously for
kernel users that relied on this, but is a conceptually
unpleasant cross-subsystem dependency.

> 
> Kind regards
> Uffe
> 

Kind regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
