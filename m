Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 477CEC4453E
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P7/O4fGAlHQ6o+OK7IP8b2KURLLrgZdCI/ScY3Q3AaM=; b=P7y6L1Gsixv6Ax
	TT/BTvgJ3NG4IoDfeW7pIfyUh9a7rQOqX5l/g5RquoeSEFjIJKT5/QJ25LiLOEpgVRGUAZzvn383T
	WQ+nRgrGi47gLZ7sporSRtSHdnI+PbNVMFbKwaOktbkHpMPjTU/m+Tr2CbHJAh1PNDJd6+vt5EGOL
	SBIwHxmKCAoW+u1eaXSnO/XCeJ5qDAzgaRzC7o+qXbPf++Mo5yUilHkBjP1uJoHIfTUbECH77xzUY
	eTXFD+NxfPhU6dq0KmCsLDQPV4SEfSGoapm13N4K1n4YwoqUXXdC6+twHThLYAFoTmnQsrMt3FzTg
	sh1FL6QR0On4fcMj1dgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQw-00000001VGt-2niq;
	Thu, 09 Jul 2026 08:48:38 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7lhE-0000000Drgi-1Zcb
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 02:52:46 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-824c9da9928so4079060b3a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 19:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20230601.gappssmtp.com; s=20230601; t=1775011963; x=1775616763; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=20Mz45WcJH9ziI7hDt00QqO2FOFl1B6yMCjToNQfBoc=;
        b=09U2Tad4e/8T9WI939s1XP1D/8uB8Ghid2p6mS3UUfldGcoJsEq7cjBw4V/mA+5kY6
         8+yymEiNT9cZJV3Zus3ZvhmABieUEdrWfI02D2qbJozKL2g5N0xlQUhAUERCsQj7HvON
         h/Dt6m8tY1rZC3JKadc8lk/XCDtk4L6HfIwGgS6TCL9HVz1n81dgzXDcdxFFvwOuyIoK
         SlSJtWav1ZAqZSNmP1o7Qf2PO7vQlyHLxXTghivqw+qBzzOU/K38VGNM6V9pFSz4RKPa
         tPz6An21vYG82/g7eYYlojRS4Zh/8MvI4hPoiA8oriKwjSHzK7v/R9I+yUuyx+C8Y92O
         iKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775011963; x=1775616763;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=20Mz45WcJH9ziI7hDt00QqO2FOFl1B6yMCjToNQfBoc=;
        b=sfqPl3fTk4p1w/vOvXuLdv74Or54emXgnWDF6x5XdfnQXZhKeZ+xXYnkTt7U/SGGLh
         Asbni0GRTpkJw/oN0Q51o9Gak98gjdjOd/Aixq8SbP46UIuusKs72Y/gnVXCfaE+bkOH
         QSpCPow5k9e6/AcIH0BNpf41Ih5F7RfNwE0NTFgzsQlG1+4aWWNup/DihmRdtrV9VS4U
         wcgovpEsKCPmwU3xpZbWPIfudORRNhVJtvxRcHuDE36n9KsJnQmkvCyTJuL20VCu4RqC
         88qFfwo/FBnf3DW/sfgOGmjXC+M57cv87EWHSVdr1JAf/3RkGi8PIgELBLg4FZm8k6ja
         roow==
X-Forwarded-Encrypted: i=1; AJvYcCWjsmS7wCpxTMz95QCZjIexAODn0SHTrF8z61ymY6Nb7GUdWfuFgOgJTVFz4opZxyyzpm8EB+yt3CEb46Af8g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYKAnBkmVIS8IcjO8NB2mVaO0xbf5dK1a1cahjmgvLZR/4b91x
	T0GtKMoPQbEsHOyys2hubWDgdqFBvQBlGsIEtGh5U16giXga1lPuEl/phS/NQ6EW8rk=
X-Gm-Gg: ATEYQzwqog4i9qcooTKnikg6Mjg2YShQD4WAMXY8JoR0uqvrXKx57x+pX03h+MbyK5n
	i/CPeko6bBvvSakqKOTBMlAENHpa+0CF1X8Dh3fCBH8TSvZL8mAOVEUay1EYTk+dZw/D354NZ8f
	nQKB1r0i2XTCqp5wNkHgZ0kXgeZjxe0n+Mzr8XAMcSxSszi8luUq3zQUAMXai/Jy0TPkv0YRtrK
	DhLA+XgfyOJbSzu6TF44GUAtxiVvduc8ENMxv74ex104HOPAI5uUspENeIiejyId7Nc/v88LKCQ
	n66I2berVNYmt1uN5WbAMHHR4t1ltMLQx2tbT+n8jCNBEYvDoabsveaa26iDiFZ/5DpsbemTi7t
	vNneqLbKytFhHr+Rt9eri70fPA+2MI2aXKb2YffsPArYwwMRUwEsz2wopgjzXIwjzI24HB7qVos
	0/lW+5DkiwyJRMFASOJttV9gehVoNFpqga5mAuzrgP3Yq5VKSWegRwt45KH9PMznXlMX4dBT2i
X-Received: by 2002:a05:6a00:2e94:b0:827:441a:c970 with SMTP id d2e1a72fcca58-82ce88ea395mr2028303b3a.6.1775011963217;
        Tue, 31 Mar 2026 19:52:43 -0700 (PDT)
Received: from claude-dev ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82ca846e08dsm11917878b3a.24.2026.03.31.19.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 19:52:42 -0700 (PDT)
Date: Wed, 1 Apr 2026 02:52:42 +0000
From: Daniel Bozeman <daniel@orb.net>
To: ulf.hansson@linaro.org, heiko@sntech.de, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
Message-ID: <acyIejuwoFau_i7i@claude-dev>
MIME-Version: 1.0
Content-Disposition: inline
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_195244_445318_C4CC00FA 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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

The NanoPi Zero2 (RK3528) kernel panics during boot when a
GPIO-controlled USB VBUS regulator is defined on GPIO4 (which
is in PD_RKVENC). The goal of this series is to make USB host
power work on boards that use GPIO4 for regulator control.

The root cause is a probe ordering issue. On RK3528, the power
domain controller's first probe attempt fails because PD_GPU's
clock lookup returns -EPROBE_DEFER (CRU hasn't probed yet).
The driver then tears down all domains, including PD_RKVENC
which would have registered successfully (it has no clock
requirements). During this window, the USB regulator driver
probes and requests GPIO4, which is in the now-unregistered
PD_RKVENC -- this triggers a synchronous external abort.

With patch 2 alone (skipping deferred domains), the idle-only
domains register successfully. But the genpd framework then
attempts to power them off via genpd_power_off_work_fn. This
calls rockchip_pd_power(), which does QoS save and idle
requests on domains with pwr_mask == 0 that cannot actually
be powered off.

To your question about why QoS registers become inaccessible
on idle-only domains: I have not root-caused that specifically.
What I can confirm is the crash trace below, which occurs when
patch 2 is applied without patch 1. The abort happens during
rockchip_pmu_set_idle_request on an idle-only domain:

  Internal error: synchronous external abort: 0000000096000010
  CPU: 2 PID: 60 Comm: kworker/2:3
  Workqueue: pm genpd_power_off_work_fn
  pc : regmap_mmio_read32le+0x8/0x20
  lr : regmap_mmio_read+0x44/0x70
  Call trace:
   regmap_mmio_read32le+0x8/0x20
   _regmap_bus_reg_read+0x6c/0xac
   _regmap_read+0x60/0xd8
   regmap_read+0x4c/0x7c
   rockchip_pmu_set_idle_request.isra.0+0x94/0x1b4
   rockchip_pd_power+0x37c/0x608
   rockchip_pd_power_off+0x14/0x38
   genpd_power_off.isra.0+0x1f0/0x2f0
   genpd_power_off_work_fn+0x34/0x54

The two patches work together: patch 1 prevents QoS access
on idle-only domains, and patch 2 prevents the full probe
teardown when a single domain defers.

Tested on NanoPi Zero2 (fixes panic) and Radxa E20C (no
regression).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
