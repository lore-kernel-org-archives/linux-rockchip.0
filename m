Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4927C55162
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 12:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WK1Ly3zQuGWEnLYdokx0BRM+2NvLGCCyuWT7tRpkJNU=; b=fyTVksAOJDv4Cc
	nuzBn7Fdha0HEAJGEEeFBMMnwLy8uSHIoGuBLp3+PdQ3EuXel0wZrww959G2j4hYTTIXwLcVPRB0w
	YR2HrmSdA78CleX6To9LMr4t5UYffGFe8Dj7pFwDApfw4LJI/WyRHqP5OBZemGu85KFKASX6njtKN
	QYuE2CvpMxNbUrq4HLMxO1+SbLUL3gd1neo7yU6J0CaVZYCA3vh/Anb91EZQf7fuXHPSnkiN1Yj8T
	BdAM8FBJA3ReL8hMUpbiwIiXzOZOqpCaSN1TLVoJHY1y+NJanF/e2FCJfXgm1a/L9fAAZspoDSEYv
	9JJALXeJJg3vMDi3K2iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqUvk-0000000FbHp-3cOO;
	Sun, 02 Aug 2026 12:04:36 +0000
Received: from mail-yx1-xb12d.google.com ([2607:f8b0:4864:20::b12d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqUvi-0000000FbH1-2NQC
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 12:04:35 +0000
Received: by mail-yx1-xb12d.google.com with SMTP id 956f58d0204a3-660a40aac63so341104d50.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 05:04:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785672273; cv=none;
        d=google.com; s=arc-20260327;
        b=NtybzqhGV5+wrcovo4PwZ6Z9C4w9mZJVWrLnfXPWlBX39lvewNKnkMsZKkvELfrEDt
         GHONEyhXYzUQW4+VHi/izghbYkdzC8p4o71nuzYQPcQuGD24wmOwngcrxPZo1HkqoMvR
         WImHJmr8ovWNh/r1/ps5E6MHxdjcHK2DH/a89IymQRvc26cvY1Ezuh0UnWi7H9GIoYlm
         QZBRkGCI1gSs8wRjCbfdH/nNmJEBTNwCYYvVcySOa3I3VHkSzoPeL1tWHjMO6Sfb6WEy
         M/FEslCT1N0PKVdM7sGyqnAsdSIrY8aFJA+IqOcWp6EIKkLEAxxs7+HU81PSAmegTwLz
         sjDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ysVyBPkeqEskGPyKVTjEGSwLzPPY5AWDGGOshgfdzio=;
        fh=Idv9o72tYDTsLoyyZOhTYA0c+psr5rr6e/i5Q7BefNg=;
        b=AiFdoyEUY5GbJ1rlRzg3bQsdRWWc3E5BV1zj5nDXzoHzSp0tQ1wzYm41BDH3EeYjmZ
         RCqbgV7iqZI2DLfPAaB2HXCgEYzbd/ssiPuc8E/gZ80TC5544zVFXV4cHRqhpJRQLdvC
         OrLK9Z9UPY6BrPQhkir8wpAYRyuuNj5kj71oxVo4/2osupow72UGStO8g9vTIdwg3mkL
         u1+s5PobHBbRXMLFyxY7qGu6KCv9TFvb44CoKq4CZb/Vv7j7eC5zGVe0GW9iXmrmRAje
         M4VjSWBgivTw+/Hpje1mGIRlLJdxohiGktMfjd38FAPeKg3TgAg6/7PWUwOx9jQTdleU
         YPxw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785672273; x=1786277073; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ysVyBPkeqEskGPyKVTjEGSwLzPPY5AWDGGOshgfdzio=;
        b=HU2wOsY8TH8SVpj9zGms9G1J9uHrb8sfy3WaImqLiqiy6F+8h40pupD6qY3VSJYEUz
         ubDYgKN4wCEKQw6gjOCMd+5EnJlA0I3aE6GFvh2poAV2FqBuKBT9h2TLGXXMTpUNHzfn
         iLPVV/8GVQ8wuL+ml7aZcRYa58UTJFrv2T7WuUkkBMK8KZfl2BPFmkGZwQGulhF8Qwsf
         Q9BMFoDW2Th8jfcXzmAtQd08GRCCWGCgKVmA2T9hWmF4JmhbeyXl+kNHjOqAxOOjUWCc
         pWizMayPATc5Oxb9wn2GhW4yM6qzciEDqcp5H22j0tTdrqRAngz3M4FDUvquSQ0dqWW4
         CBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785672273; x=1786277073;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ysVyBPkeqEskGPyKVTjEGSwLzPPY5AWDGGOshgfdzio=;
        b=sKdI1joqGR5iByMPWFq4UhpEm58j4sYBg6MV1CJKdXRodI8M/bqSPX8bFnUQylmYOV
         B5M/ehufa9nr3ELs238u72ba/dDHU1YFCHWMEP8A7daa3ZBLaRQPcn0pbXMMZMMl411j
         Opoo5L/jWG2kntpGNl11xkvUagmLz4l3ps6z90g+lCC4aziJXKN3TBfcMfgk1SM4psS3
         NHrQ8wabqaFPHZMTgw2J2Jx4Gw8ABpF9xokQHB6zuBKYUaaQUHlmvzZfUAigz3AsMuro
         Zzdez5+uGJ1zEfeIagqCsUc6FIyIZjQzdRl8oDbgOLG0XInGD/sWJt0mP8MUZakUmMaR
         c1nA==
X-Forwarded-Encrypted: i=1; AHgh+RrUM0MUT3hBe+rxji3Vi+E0srNPyG2jdp5r8CLHg9Jy2vPSGX/BEcmRef5WH0aqtRH9aanJGBh2fyiQgMhwRg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJn1Xk+j2fVCEFCB5fzPObq239kthqNw/Jowej7L5jMXEgDmdZ
	Y/EL4pp6QklNo9Q8jojX5aERJhOLn29IpSAy6l2oEnN7PdubN6/ou3hV19XG+w3YXjOg2zP3h62
	+XI+VAWUsvJTLqo5e3JHb/ZpIAcp1YTo=
X-Gm-Gg: AR+sD11GNwCO1Gx5Fx0BUrN24FOCxULEF8An5a+OBMW06/tO3tPiyjq79cDZrcAEdLE
	15vBtbDyU3zBzKW56cTRx8A0eUbTvs+F9bwzyCTG7MpABd/oA6S/c2dRbttrcXQGQVWfKKy/hGa
	hAAooH1TZU/q0m7yy99s2sFVpKn3uPD/jQByS1nt5OlxQUS6scg+oSSi0VmzznNelqfh/7vxn6W
	wRTC7PybAjudGjfm3SVbdUQlKiXmONzWiK2dmf2gfsA4ZQWoZqrzjoCsxpcffNIJmYNdblCAX7G
	v1zTt8Oe56Hl4NTXDsvumM4RENyFaBHPPuCBPY+Mu9ng/mRPHIDnPIy7OAO2dEtCIIGUrdiJ+lv
	Myg==
X-Received: by 2002:a05:690c:19:b0:80f:3e90:f021 with SMTP id
 00721157ae682-81fd4c1e165mr85262697b3.4.1785672272829; Sun, 02 Aug 2026
 05:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260801131656.58450-1-royalnet026@gmail.com> <20260801193237.2539957-1-gahing@gahingwoo.com>
In-Reply-To: <20260801193237.2539957-1-gahing@gahingwoo.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sun, 2 Aug 2026 14:04:21 +0200
X-Gm-Features: AUfX_myQSl23x_z5DDTMRMYkim7ewNsbSwXYShTn0yIY_ENHwr8L-geTd22bE9M
Message-ID: <CAEWPSH7upAFGOxg5Eep9nXA16L7PWtXJtk1+5bsnJYNjxm7joQ@mail.gmail.com>
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and
 some numbers
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, diederik@cknow-tech.com, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_050434_628355_2C4311FE 
X-CRM114-Status: GOOD (  26.12  )
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

Hi Tomeu, hi Jiaxing,

I need to correct the measurements in my first mail. The conclusions I
drew from them do not survive better methodology, and since two of my
questions to Tomeu were based on those conclusions, I would rather fix
this now than have anyone reason from bad data.

Short version: the numbers were real, but they measured my interrupt
configuration, not the NPU.


1. What was wrong
=================

Each inference generates 41 interrupts on this driver (one per task,
more on that below).  All of them were landing on CPU0, a Cortex-A55
that was also entering its shallow idle state (exit latency 220 us)
between interrupts.  So every inference paid a large, frequency-
independent CPU-side cost, which compressed the differences between
NPU frequencies and produced the inversion I reported.

Three changes, none of them driver code:

  - NPU IRQ affinity moved to an idle A76
  - cpu-sleep (state1) disabled on that core
  - performance cpufreq governors during measurement

With that, the picture changes completely.  Even the fixed 200 MHz
baseline moves from 68.5 to ~91 inf/s - a quarter of the stock
performance was lost to configuration alone.  I should have caught
this; the per-inference interrupt count was in my own telemetry.


2. Corrected numbers
====================

Same rig as before otherwise: MobileNetV1 through Teflon, one inference
thread pinned to one A76, bit-exact sha256 oracle over intermediate
tensors on every deep-check, zero tolerance, oracle passed in every run
quoted here.  Kernel 7.0.0 + local devfreq for rocket.  Ambient
controlled, die temperature logged per row (all rows 42.5-45.3 degC).
Every row is an ~80 s run; key points were replicated 2-5x across the
day, spread within 1%.

  inf/s            800 mV    850 mV    950 mV
  200 MHz           91.1      90.7      90.8
  300 MHz          161.7     170.9     185.1
  400 MHz          187.3     196.2     211.4
  500 MHz          208.8     216.7     226.6
  600 MHz          221.1     227.9     236.5
  700 MHz          227.4     233.0     240.7
  800 MHz             -      232.2     241.9
  900 MHz             -      233.8     241.4
  1000 MHz            -      235.0     242.8

(The 800 mV column stops at 700 because my local safeguard refuses
higher OPPs on that rail.  The identical 200 MHz row across all three
rails is the negative control - at 200 MHz voltage headroom is
irrelevant, and the rig reproduces to 0.5%.)

Corrections to my three claims, in order:

a) "600 MHz is the optimum" - withdrawn.  The curve is monotonic to
   ~700 MHz and flat above it.  There is no inversion; the inversion
   was the A55 paying 41 wakeups per inference.

b) "Voltage does not help" - withdrawn.  At the same nominal clock,
   raising the rail 800 -> 950 mV buys +14% at 300 MHz and +7% at
   600 MHz.  Consistent with the clock being PVT-controlled: more
   voltage lets the PLL deliver a higher actual clock for the same
   nominal request.  (This also means the flat region above 700 is
   partly voltage-limited, not purely memory-limited: the per-chunk
   floor is ~72.5 us at 850 mV but ~69 us at 950 mV.)

c) "Should the OPP table stop at 600?" - wrong question, please ignore
   it.  The plateau is this board's memory (LPDDR4X-2112) plus the
   voltage effect above; boards with LPDDR5 should keep scaling
   further.  The table should carry the full vendor range and let each
   board cap via max_freq / thermal policy.

One methodological note that may be useful to anyone benchmarking this
hardware: the largest error sources I quantified today were, in order -
interrupt placement (+32% at stock clock), a busy desktop session
sharing the SoC (up to 18%), die temperature (~0.5%/degC via the PVT
loop), and an open browser (~1%).  The silicon was the most
reproducible part of the whole setup.


3. Jiaxing's points
===================

> Those lines list CLK_NPU_DSU0, but the clock the driver holds as
> "npu" [...] is <&scmi_clk SCMI_CLK_NPU>. [...] Worth a look at
> clk_summary first.

You are right about the identity, and thanks for pushing me to check
it properly.  Decoded from the live DT: "npu" is SCMI_CLK_NPU (SCMI
clock id 6); aclk/hclk/pclk come from the CRU.  The domains list
CLK_NPU_DSU0, which devfreq never touches.

I then took clk_summary snapshots idle, mid-benchmark at nominal 600,
and mid-benchmark at nominal 1000:

                    idle      during 600   during 1000
  clk_npu_dsu0      250 MHz   250 MHz      250 MHz
  aclk_npu0/1/2     250       250          250
  hclk_npu0/1/2     198       198          198
  pclk_npu_root     100       100          100

So the handshake-side clocks never move - this driver already does
exactly what your vendor sample shows (compute clock scaled, dsu/aclk/
hclk parked at boot rates).  And yet the domain transition still fails
whenever the SCMI compute clock is raised, reproducibly.  So the
constraint tracks the compute clock itself, not the DSU clock, and
"pick a clock outside the domain lists" unfortunately does not exist
here: the only rate anyone scales is already outside them.

Whether the mechanism is a PLL inside the domain remains my hypothesis
- the TRM's NPU chapter is silent on PVTPLL and I still have not risked
reading its registers.  The constraint itself is empirical.

A caveat worth passing on: clk_summary reports SCMI_CLK_NPU at
200 MHz even mid-benchmark at nominal 1000 - the CCF cache is stale for
firmware clocks, so clk_summary genuinely cannot answer this question.
I verified the actual rate two ways: clk_get_rate() (which round-trips
to firmware), and the per-chunk NPU time scaling 236 -> 69 us across
the sweep.

> your plateau looks memory bound [...] Maybe worth one compute dense
> model before cutting the table there.

Fair, and the answer is a few lines up: I am no longer proposing to cut
the table anywhere.  I did run the compute-dense model you asked for:
InceptionV1 (quant), same rig, 850 mV.  One caveat first: on this stack
Teflon leaves ~79% of an Inception inference on the CPU (many more ops
fall back than for MobileNet), so total throughput barely moves with
clock and the honest metric is the NPU-side time per inference, which
the harness separates out:

  nominal     NPU-side per inference    total
  300 MHz     7.2 ms                    43.7 inf/s
  700 MHz     4.16 ms                   50.5 inf/s
  1000 MHz    4.17 ms                   50.2 inf/s

It scales 300 -> 700 and then flattens at exactly the same knee as
MobileNetV1 (whose NPU-side time goes 4.54 -> 3.00 -> 2.97 ms over the
same points).  So on this board the plateau is the platform, not
MobileNetV1's memory profile - consistent with the LPDDR4X explanation,
and it does not change the conclusion: full table, per-board cap.
Boards with faster memory may well keep scaling; mine cannot test that.

(Two incidental data points from the same runs: Inception jobs get
scheduled across two NPU cores here - 33+27 interrupts per inference
against MobileNet's 41 on one core - and the bit-exact oracle passed at
every frequency for this model too.)

On your RK3576 SCMI experiment (zero jobs, 83 timeouts): one cross-data
point - on RK3588 the SCMI/PVTPLL path is what we use successfully for
the GPU (Mali-G610 at 1 GHz via SCMI, measured and stable), and the NPU
compute clock here is SCMI-routed and scales fine while the domain is
up.  So the SCMI plumbing itself can work on this family; whatever
failed on RK3576 may be specific to that port rather than the approach.


4. Thermal, update
==================

The missing NPU cooling chain from my first mail is now running here
end-to-end: #cooling-cells on the NPU node, a passive trip at 85 degC
with a cooling map, and devfreq_cooling registered by the driver - the
kernel bound them together without manual intervention.  So the two DT
patches are ready whenever the driver work lands; they need nothing
beyond what devfreq already provides.


5. Where this leaves the questions to Tomeu
===========================================

The two RFC questions that survive unchanged: whether you want DVFS
for rocket upstream at all, and whether the genpd-notifier shape is
acceptable.  The OPP question is answered above (full table, per-board
cap).  The code cleanup questions stand as written.

Sorry for the noise, and thanks to Jiaxing for the push to verify the
clock tree - the numbers are better for it.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
