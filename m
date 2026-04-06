Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F17FB5173
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Apr 2026 23:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GXHev85foPq5a+FHCo/GXFcqHcyRIplDU2vib8F+fs=; b=YT/eKjI8pipuHA
	GUCEaWEatoUDrugfePSsf7FDP/iBGV3FJR9n/SPZGd1nrIDoTvMHVG9mcYupefSbN1n3/RD4VLWLP
	5Y7jpP9XntZs2UTB58ROe08AsG9M0eHQ8UvjHMqklyiV8pff4TMAa9XLrki9UqVJOvoyRdLgBYkM1
	1WTT0w/IbeiMYrBxm7IZAwyhhjfyyhh0rO+cw6yemWJrJDUdBmKQbB0riMweTbjzkKmDHaTmIAcYz
	y0RftDTaU66iPt6OO3pwURUpNEi0Xr54kfznCMLyDUd/hQWeoyjCM1WtuqmJc7cLYyvhyMSXIMR0G
	d8SuJPpPqvpR3rGpQ/bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9tmj-00000005dqI-1eEy;
	Mon, 06 Apr 2026 23:55:13 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9tmg-00000005dpV-2ibv
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Apr 2026 23:55:12 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2aaf59c4f7cso20136185ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Apr 2026 16:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20251104.gappssmtp.com; s=20251104; t=1775519709; x=1776124509; darn=lists.infradead.org;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=928edzxFlqN/Z48RQN0M8E84sJTAtb1fJmgV5h9KVWw=;
        b=zJKh3ul5AhOKXzx6FHia7OhzC4emE34hvV4vIuKrt3ltGIMftiTBX26kBBFszls/RV
         tUIkF+//jJplTR8Vl2ydm7imIsr4dtQgsTgLXHaPR7byKvwYyu3EuHFsIlHc2llhqy+V
         kvi0GmpLPo8i7umS/axqt8CQonhCETBh+9RImR877m6pf/MJY0Sohba4bIB/3PD8do6i
         gEUcnTfPK3R6jpVkspzdxE+eFtP5k1DcBUxc0lVQMp614+O3K9/V7tu6tYgAw9o5o/w2
         F5yKShDNu2suIPjX0jn/5qCpdwr0kqzPyBvyuE/Uq8f5l26TsyOjBnZL4iFOs+4VdyIl
         2tkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775519709; x=1776124509;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=928edzxFlqN/Z48RQN0M8E84sJTAtb1fJmgV5h9KVWw=;
        b=Awlc1XfCypnWqBbmlVqTwTFaC73uP72PRdwWMxMkBt+8E5N0kvz/UDaU1gifWGW0aY
         JbsIhsUPuhNa1/RmY1kkLupRg+xRT8uUd/Hjxk0ILscotN28441C7k3ZRXOauHJPe0Hk
         mA75rjNgoDse9BrEVtByuoyjVhzzzIgXw6dn07CA5GXYYVYbSDcy2m7h+aqv9REaIbbP
         uSCddetq1ZWFwbiK5nUp1wOD6g4MDYKIs9ePbdIySVgQOGb82h2/MnMpncaO1WDrjsY5
         17fpfCB4ARfSEk9mxc+IJT1JlPZF3WLq/h+KM3BUu/Qt2MLSkb83StzcKjDokCykZL9F
         vltw==
X-Forwarded-Encrypted: i=1; AJvYcCX7AidZWr4huF6EBVMr0RzJoH7mv4nVcCISouEUZwP/GGfFkDhkCV4Im6Zwu9jdCVyffAoWsOn/wpVfNCazTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFxYw7xHVbd6DIPRnGyErrSQjkGQrC2kEvVeg467EvL2z7qMEP
	/3VBqjQU+2ir7J1yqkuOxVHU0eZJWs364WmKQROY60CowUauncIDvNfh7ASo+YDAXrI=
X-Gm-Gg: AeBDievjqPg/bc8nl5DorSSRvvmLTB7Z0br2FUF0vx3MiNLcsU68JGs+Iy/m8vd3yVE
	kjW7wYT5IFJpOeKZcUnovz51tQAG98vnzIkKncp5wrE7zHzlHM7NvS2ZPtkAWYaIYoC7VCuI3QV
	FSgR9dGbuNb+MRllAY8y36AAkVgaZBt6kwE0CEDRIKg2mZls08HMSQrJDRRIvBZtOdaG0pd48Tv
	FBoEYR1NA9Wx7/9AukjDv4QhXD8FWh7bhRG4lWkDXVKl9nMS/8ra0XN7X1Q+UBn9YcmBvyOcCIJ
	NBgZMGkg0XyPiM0NhnZWkEU2jdTfKunK63KCJkD/6ZlpPsRUogs9zHxTmPSTb7UCLvPmMXH8lHO
	pJ9Ibb3c0Uv93sn/wu8OYT3NZsUMwZ1iyeYZ1OW76XWPaUCVIZmIZPTsYpO9Q1RhFZOAcSFral8
	vZ7gt3WdayUiGu+OQW84DG0GVuNovyPEEVGodfcXZ+l/Z0cLGyelvCiqsiQ5e4PUzqN4ksIHgN
X-Received: by 2002:a17:903:2f08:b0:2b0:67fa:dbf8 with SMTP id d9443c01a7336-2b2817e97b9mr152039645ad.41.1775519709263;
        Mon, 06 Apr 2026 16:55:09 -0700 (PDT)
Received: from claude-dev ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b2749cbc58sm155836415ad.78.2026.04.06.16.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 16:55:08 -0700 (PDT)
Date: Mon, 6 Apr 2026 23:55:07 +0000
From: Daniel Bozeman <daniel@orb.net>
To: shawn.lin@rock-chips.com, finley.xiao@rock-chips.com, jonas@kwiboo.se,
	ulf.hansson@linaro.org, heiko@sntech.de, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
Message-ID: <adRH235mv00OdOsb@claude-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <693c6c27-6ff2-4ab0-994f-3821e5ffcec8@kwiboo.se>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
 <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
 <693c6c27-6ff2-4ab0-994f-3821e5ffcec8@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_165510_966774_D5CB29F3 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
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

Hi Jonas,

Thanks for digging into this and identifying the GENPD_FLAG_NO_STAY_ON
connection.

I tested on your next-20260403-rk3528 branch (7.0-rc6) with the
NanoPi Zero2.

Your conditional NO_STAY_ON patch alone results in a NULL pointer
dereference crash in run_timer_softirq during boot:

  Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
  CPU: 3 PID: 0 Comm: swapper/3
  pc : run_timer_softirq+0x258/0x2c4
  Call trace:
   run_timer_softirq+0x258/0x2c4
   handle_softirqs+0x18c/0x1d0
   __do_softirq+0x10/0x18
   ...
   do_idle+0x94/0xa0

The crash is caused by the EPROBE_DEFER teardown in
rockchip_pm_domain_probe(). When PD_GPU's clock lookup returns
-EPROBE_DEFER, the entire controller probe fails and tears down
all successfully registered domains. This corrupts timer state
and crashes in run_timer_softirq on the next tick I think.

Adding the following on top of your fix results in a clean boot
with USB working:

  for_each_available_child_of_node_scoped(np, node) {
      error = rockchip_pm_add_one_domain(pmu, node);
      if (error) {
          if (error == -EPROBE_DEFER) {
              dev_dbg(dev, "skipped node %pOFn, ...\n", node);
              continue;
          }
          ...

This skips domains that defer and continues registering the rest.
Skipped domains have NULL entries in the provider, causing their
consumers to defer until the clock dependency is available.

I also tested on 6.12 with backported RK3528 support (OpenWrt).
There, GENPD_FLAG_NO_STAY_ON does not exist, but marking idle-only
domains with GENPD_FLAG_ALWAYS_ON prevents the genpd_power_off
crash. The EPROBE_DEFER fix is needed there as well -- without it,
the probe teardown/retry produces a timer warning in __run_timers.

Test results on NanoPi Zero2:

7.0-rc6 (next-20260403-rk3528):
- Your NO_STAY_ON fix only: crash in run_timer_softirq
- Your NO_STAY_ON fix + EPROBE_DEFER skip: clean boot, USB works

6.12 with backported RK3528 support (OpenWrt):
- GENPD_FLAG_ALWAYS_ON only: boots with __run_timers warning
- GENPD_FLAG_ALWAYS_ON + EPROBE_DEFER skip: clean boot

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
