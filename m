Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C381076374
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 06:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x339jk6ILDNJKT5QVSeq381TTw6Z2HdYpUqCkyYUEPY=; b=FLL1unLaG92rcL
	qMNBJ1uPXmW+OZ2dVtrStT55CJUn3Mknt5Rmz9mheJKlMRe6CEZG04vqHpWcML3aXZGUe5aRx44hq
	twnLMnvVWJVrRRCRJdLmSDqwlKlMFGZfZJdQFPRarwjvg7SNDqX2eL1kel1P4yMia/kw78iscNX5M
	q7+pFvkPxDLUhpqjoKoHCHAKsNAOL6oTZEyff/q/KOkXP9DkJQpojDgrQhhrNnYECe0fJUjCA4Rvo
	JVkQmfvJmfFXRcLlb/sEAomhqbdVeWK/W4h+8pxowMFpQiShmE7sHjUqjWO1+yz8o2jtmV4vVCHL6
	cu6tjyWZaXo1EWK76zBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7opJ-0000000E5yx-2EAu;
	Wed, 01 Apr 2026 06:13:17 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7opG-0000000E5yF-1ZBV
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 06:13:16 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so4721788a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 23:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20230601.gappssmtp.com; s=20230601; t=1775023993; x=1775628793; darn=lists.infradead.org;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CFgZCEJ3fTGr4brRBt0JrAIRG/l0e3vOUBoKlYt/xZE=;
        b=DfHeVn+uGcbx/REGmdZR3txaCVHTPxGUaRUT5KJBJTIwEldOfA8R95Fmsl8b7UlwrB
         OsAFOo/ywW927G2JE04O5UoKkr0wAySACUIihI10ZHpPhh4DMpH2GkKKAYAyKKRNPHPV
         1C42TJn75iG0I52TrxmdI0SGlfFcrJk7ZouHSL6w9osWYBs1gWtdZOFSTr7rDxgiMEKW
         ztFBZv5hmwS5gzr89Rb5XVR6GtjucAgsAvyc48xCQhk+whOOTCMYWtcGPjmWt/XWf5O8
         uJNSm8nM/m7cW/quF2vb0BI6ZWm9jeHF1PFJ1bMzZlx9nur4khzfs9DChK2VIS4AjQ/I
         lnXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775023993; x=1775628793;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CFgZCEJ3fTGr4brRBt0JrAIRG/l0e3vOUBoKlYt/xZE=;
        b=gu+9/dPL4w+3SQDRYmoKIuiYfA4LdzfRousXb6Zwo/GXaeQgm0DX80KYtQDETZfRON
         Zun6sStJ1zEbnuq3uVJGdMau/uNDi0zcfe1/dvPGqPb5t94b/WiGO79Yg4ugjYiabUiJ
         zH54hHTF47sMPMA4OtQw+w4X4YKQJFzP4skVKrpQM4thkay4dFnEw6nGUnuGxNPpCAPO
         ZzX8eKFNUY2WJZy3kVkyaspxwYYcD7SBp94G45CNg+cr00QQNtWy7/svQMkC7RTG0hkf
         d5vbuor/gNpg5Ilul+MVbRIhYXjEIMtjTa+hFOW5i4O8K26ws3kmcjoMy6USmcSJ974P
         8zAA==
X-Forwarded-Encrypted: i=1; AJvYcCX3V0iw+HFJnfGJW8rPwL+fWXyYLDfEWSwtI94uIKU+SVfPotddcxhCOZDPkJpAxk2iUgMt01QzjP8WhUGpXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtrYbi4dEw8xA1BRl/B6pvVwOdS1llW4BeuOwccPN/eSUHOu8C
	TXKT67HU/XQXP79+VqxitHd0JYCuTZiw1gotX7htHhtumVo/FB3UqL+jvy80fcd7CBk=
X-Gm-Gg: ATEYQzy6Kf/Tb2PvlO6ubWMGvidFHOwbuxpBxSzKALHS+L9bPI30Px7PY6wYl8zpFET
	/NI9XzBUfeiVgi+XYU5bnuoKzCoEZ2+6vqty/DD2YotIx3yAqeKfSbBEcEEJDSCimhymftw1ecp
	CaGboyQzhpJXI/7y6azAR3I6wLa+JlhQAaig/6TOSmJsocj4IDlOo9LttReTpHtBPeESZ9c1EJD
	xaYcmcxx7QFboj/Z5Rscj3WvMCqzkqbyZs422fhUwOuGFKGNcVThRy4tNW90/tC2njbJNlz5tYt
	VJhyDeXOU0nL1K6bYi4/1hffMfLDqyjZd4xb0tXH3dpL9Yn143qj9jOdV+VJ02IYpAiQj25BpsF
	ulLgluYGVbS0vqzY8dGCA4qtok3N+c5el0JuOqgGoNWTfg5jSlt1UzS0vWwsVGD5M4P1DGcvJ3a
	QcXZ+rI7CvFcGIECcxXzfeAuBemAY+x+5bMek99ITQYhTOXDAo0sZjvbOgNEj5s+9eaIXLSLII
X-Received: by 2002:a17:90a:d406:b0:359:15c8:e8e1 with SMTP id 98e67ed59e1d1-35dc6f62026mr1887773a91.25.1775023993473;
        Tue, 31 Mar 2026 23:13:13 -0700 (PDT)
Received: from claude-dev ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dbb840a36sm1802998a91.4.2026.03.31.23.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 23:13:13 -0700 (PDT)
Date: Wed, 1 Apr 2026 06:13:12 +0000
From: Daniel Bozeman <daniel@orb.net>
To: shawn.lin@rock-chips.com, ulf.hansson@linaro.org, heiko@sntech.de,
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
Message-ID: <acy3eP0dZBx6A950@claude-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fc6f00fa-10b0-44c8-d8b4-694f8ff3b9ea@rock-chips.com>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <CAG+Ngm+xJCCQMPddZx8AbPEeH3rUrn3GKF575zXpGPJrnELvMw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_231314_685078_FC3C17A7 
X-CRM114-Status: UNSURE (   9.89  )
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

<fc6f00fa-10b0-44c8-d8b4-694f8ff3b9ea@rock-chips.com>

I ran additional tests to gather evidence:

Test 1: Patch 2 only (skip EPROBE_DEFER), no patch 1.
Result: kernel panic. The idle-only domains register
successfully, but genpd_power_off_work_fn attempts to power
them off and crashes in rockchip_pmu_set_idle_request:

  Internal error: synchronous external abort: 0000000096000010
  CPU: 0 PID: 59 Comm: kworker/0:3
  Workqueue: pm genpd_power_off_work_fn
  pc : regmap_mmio_read32le+0x8/0x20
  Call trace:
   regmap_mmio_read32le+0x8/0x20
   _regmap_bus_reg_read+0x6c/0xac
   _regmap_read+0x60/0xd8
   regmap_read+0x4c/0x7c
   rockchip_pmu_set_idle_request.isra.0+0x94/0x1b4
   rockchip_pd_power+0x378/0x604
   rockchip_pd_power_off+0x14/0x34
   genpd_power_off.isra.0+0x1f0/0x2f0
   genpd_power_off_work_fn+0x34/0x54

Test 2: No kernel patches, PD_GPU disabled via
status = "disabled" in DTS to avoid EPROBE_DEFER entirely.
Result: same kernel panic. The idle-only domains register
but crash identically when genpd tries to power them off.
Same call trace as above.

So the crash is not caused by probe ordering or
EPROBE_DEFER -- it happens whenever idle-only domains
(pwr_mask == 0) are registered and genpd attempts to
power them off. The QoS register access in
rockchip_pmu_set_idle_request faults on these domains.

Regarding S2R: you raise a valid concern about skipping
QoS save/restore. However, these idle-only domains cannot
actually be powered off (pwr_mask == 0), so
rockchip_do_pmu_set_power_domain already returns early for
them. The QoS save/idle/restore cycle in rockchip_pd_power
has no effect on these domains since the power state never
changes -- the save and restore are paired around a no-op.
Skipping the entire sequence for pwr_mask == 0 should be
safe for S2R as well.

Both patches are needed:
- Patch 1: prevents the QoS crash on idle-only domains
- Patch 2: prevents probe teardown from making things worse

Tested on NanoPi Zero2 (RK3528) with all four scenarios:
both patches (boots), patch 2 only (panic), DTS workaround
(panic), both patches + E20C regression test (no issues).

The board DTS that triggers this (GPIO-controlled USB VBUS
regulator on GPIO4/PD_RKVENC) can be seen at:
https://github.com/dboze/openwrt/blob/add-nanopi-zero2-clean/target/linux/rockchip/patches-6.12/102-arm64-dts-rockchip-Add-FriendlyElec-NanoPi-Zero2.patch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
