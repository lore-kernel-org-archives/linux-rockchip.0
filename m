Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AD9C6498F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 15:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeAUmAk6YR5PckfYgxcJGQUK+2h9dXLegPP+n90yGHQ=; b=sA9iW5WIRRoblQ
	enuIolDtN0D9bQPXekmuFjJktNoeI8/Ou+mb0f2sWyNOX7wLTwCEJQDxxyWP7GhXAg/4lq0pyzGjC
	a/XrkalHKa0tB8iAxY4mqWxdBCnaK+9R6CR+DzHK4J5qmTwddVChxb5FWUi9KB6WUoofcZHI/104P
	fJRAZx2YxTONdvhbb5qf6GRGPLSC0u4s3sOuwXKl7/UFQ3GqrRLzkiPJTSe6YQ5lxVDraqpsKhSdt
	EbzwMdatV+AghJSwfWt90M0dkPfiGBkldXF4X/D00k38NYU19fgmtOewJjHxYz7NRd4I4Hvhk6a3Y
	HeaJZGD2rrEAICiZfk6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oREcm-00FdRJ-U2; Thu, 25 Aug 2022 15:18:28 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oREcj-00FdOO-4G
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 15:18:27 +0000
Received: by mail-ed1-x533.google.com with SMTP id b44so6292464edf.9
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 08:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc;
        bh=LR+ftCEuqGGlJGbieRZTMPUW+OKd3Cv5TGWT0UDVsQ0=;
        b=mSY8/kwQjbQefRboOZq1NtBa7P5KH4ZGMTal7wYL2jkcCwAPEfHe1lt7A5DiR+8slj
         SOKJPNvtuvJzJu1cJjkCsvHMDNZZef7aeTqnhdOOx6ZvAujEDz824afBM/YR33JoY2QO
         VqasciQAY217h3hXMDN52Vv4W8jGtTFR2D6/BCIFZD0jDn2v8eRLdHUBi6ApCuN0CbyN
         7VNXJoN0ip2rGviSReV7ikqQT8snVw+AK8+5OSgz+r9/U4Q+OOP7dygSyRVD5n8Kq4EM
         Aiu3F737lTWTz+C8ezaOXkFjIgpDbbLBXMtYgFAR8nrKdEBU9vAO47tYTiM1SmdnxBVW
         9XPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc;
        bh=LR+ftCEuqGGlJGbieRZTMPUW+OKd3Cv5TGWT0UDVsQ0=;
        b=kp92q7oA6fdvHXLzwqz9iSTwqItCMmt1GiafJLCBFUohrCWlim+HQPF5rIIhXYN6MN
         ZIoa/yF4BjLoZ/nXd+H2JiahupA7Qy7+yFWDRR+Ec9vBOX2PGDHQVYWwxNPZqsFKT2bc
         02oVtdc7RyCIe806UjEVIUYA1QiVBdZV1kQpodNThtcMeISzJpicPXRslsReV/LVGxug
         jMXU3y289sQTLDWFayi3kNBREDs8Xf5PDs4e5it0EoBArtLOXb3djfqd4+AVwOy0OOfb
         fFrko9it69Fr/jMm1aiJiUysfYpVN5s26uQGGLxERY8zul6xK+hZ7ysCmoLojeBhS9n7
         E7tA==
X-Gm-Message-State: ACgBeo3j1B9G3MAs2BKBe0oWMFfLY2N9lePmjZ1WOyedIq5/t8AbF2Xy
	1tZ/uu4jfvInOKSh2DP/nASVwA==
X-Google-Smtp-Source: AA6agR6rXtjTOoklgiguMLmicVUBp31e6BzGWHAVb2e5NQ7FaAnGL6R1cn29JpOEB3X37ujNdkRkAg==
X-Received: by 2002:a05:6402:134e:b0:445:d389:266e with SMTP id y14-20020a056402134e00b00445d389266emr3702755edw.97.1661440702387;
        Thu, 25 Aug 2022 08:18:22 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id cx26-20020a05640222ba00b0043e35ae2610sm4987369edb.27.2022.08.25.08.18.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Aug 2022 08:18:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v4] regulator: core: Resolve supply name earlier to
 prevent double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <a78822d5-f0a1-6c42-8269-e8168ea5cd5b@samsung.com>
Date: Thu, 25 Aug 2022 17:18:20 +0200
Cc: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>,
 wens@kernel.org
Message-Id: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
References: <YvorNPDQQr2SH/NF@sirena.org.uk>
 <20220818124646.6005-1-christian@kohlschutter.com>
 <CGME20220825113251eucas1p247c3d57de823da148ca4790975a4aba8@eucas1p2.samsung.com>
 <58b92e75-f373-dae7-7031-8abd465bb874@samsung.com>
 <YwdpOX0xCzYwhjmx@sirena.org.uk>
 <a78822d5-f0a1-6c42-8269-e8168ea5cd5b@samsung.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_081825_420878_15A35074 
X-CRM114-Status: GOOD (  23.62  )
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

> On 25. Aug 2022, at 16:23, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> 
> Hi Mark,
> 
> On 25.08.2022 14:21, Mark Brown wrote:
>> On Thu, Aug 25, 2022 at 01:32:50PM +0200, Marek Szyprowski wrote:
>> 
>>> This patch landed recently in linux next as commit 8a866d527ac0
>>> ("regulator: core: Resolve supply name earlier to prevent double-init").
>>> Unfortunately it breaks booting of Samsung Exynos 5800 based Peach-Pi
>>> (arch/arm/boot/dts/exynos5800-peach-pi.dts) and Peach-Pit
>>> (arch/arm/boot/dts/exynos5420-peach-pit.dts) Chromebooks. The last
>>> message in the kernel log is a message about disabling 'vdd_1v2'
>>> regulator. This regulator is not used directly, however it is a supply
>>> for other critical regulators.
>> This suggests that supplies are ending up not getting bound.  Could you
>> perhaps add logging to check that we're attempting to resolve the supply
>> (in the
>> 
>> 
>> +       if ((rdev->supply_name && !rdev->supply) &&
>> +                       (rdev->constraints->always_on ||
>> +                        rdev->constraints->boot_on)) {
>> 
>> block)?
> 
> 
> I've spent a little time debugging this issue and here are my findings. 
> The problem is during the 'vdd_mif' regulator registration. It has one 
> supply called 'inb1' and provided by 'vdd_1v2' regulator. Both 'vdd_mif' 
> and 'vdd_1v2' regulators are provided by the same PMIC.
> 
> The problem is that 'inb1' supply is being routed to dummy regulator 
> after this change. The regulator_resolve_supply(), which is just after 
> the above mentioned check, returns 0 and bounds 'vdd_mif' supply to 
> dummy-regulator. This happens because regulator_dev_lookup() called in 
> regulator_resolve_supply() returns -19, what in turn lets the code to 
> use dummy-regulator. I didn't check why it doesn't return -EPROBE_DEFER 
> in that case yet.
> 
>> I'd also note that it's useful to paste the actual error
>> messages you're seeing rather than just a description of them.
> 
> There is really nothing more that I can paste here:
> 
> [   32.306264] systemd-logind[1375]: New seat seat0.
> [   32.331790] systemd-logind[1375]: Watching system buttons on 
> /dev/input/event1 (gpio-keys)
> [   32.550686] systemd-logind[1375]: Watching system buttons on 
> /dev/input/event0 (cros_ec)
> [   32.570493] systemd-logind[1375]: Failed to start user service, 
> ignoring: Unknown unit: user@0.service
> [   32.750913] systemd-logind[1375]: New session c1 of user root.
> [   35.070357] vdd_1v2:
> 
> --- EOF ---
> 

I can reproduce these findings (also see the difference in "cat /sys/kernel/debug/regulator/regulator_summary")

The check "if (have_full_constraints())" in "regulator_resolve_supply" is called even though regulator_dev_lookup returned -ENODEV (-19).
Since my patch now calls "regulator_resolve_supply" twice, the first round should really treat ENODEV as "defer".

I propose adding a boolean defer argument to regulator_resolve_supply (with defer=true in the first, opportunistic run, and false in any other situation). I'll have a patch ready later tonight.

Thanks!
Christian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
