Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2D61C00A89
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 05:01:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DD21206B2
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 05:01:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rU+lpls9";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="in0+euyx";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/y2SWWh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4DD21206B2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GBlfonCPqhSY0qkGQmNsogYdc+LfHEeAicR3JJ2q5jA=; b=rU+lpls9UKU/wmhJ3WQDsJvAN
	cQKEc4NvGtbMD1ukoZqodv4f9jSF8QtpR3HVjSK9+dF5BXLMMasazljxPkZW8yKGDkrPig3rTu0eM
	nT4QAItfd7zzpoMMd1KgFqXDVdkV51I7u3M/KLX2LXLLBP7Fmgc4NHeTxk+4MiqiwRlc+csUJU7vQ
	RO3mABDdAKJp3ioJITYbSw0IBD69TmF6dG8PxLNAdcXWWSd6jTjGDGjt8mS+4CD+YYVlB/8efsd52
	EPtHt4iSoabB0yVIp81ssOtxE++vtalqrXRHs9WKysewrcHqyFStV55WGmOnEVlmBkj1RvehCHrkV
	JoUdTcE3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaXOf-0002x9-Qi; Thu, 05 Nov 2020 05:01:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaW3F-000145-Hv
 for linux-rockchip@merlin.infradead.org; Thu, 05 Nov 2020 03:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/71ABBKcrmuk1YYEeoWw8BppObhxvcb+S+aM7wq/fSU=; b=in0+euyxDHg2Wvxky8AOVzeyH7
 neFgRUSniaBmjEBXzOhrUxowD+yWiyXYOnJG5kblhLzCwiOo+G6SwT73fhzH4EBJNfHV4MlHzEOP5
 t6/iwcp0P19R9ZeKsDgkOmMZvoatddc7C0KH8lNonNmJP2tj6D5LnbonGagcMcQh65B9RVt0qPWcP
 EwR7E8CBnKoHPSrBkNGK1SqlvwyhFkR82HMt3n4dpH0rY9izUcxqF2737CNEEWxSOEG9GiGjOV8aR
 UU/SEOcH2Qq7OuVlMILMdaq8miT2DXgl2iQi4mzMHJGB4facelp9sAwE4xLjzexQkeCZBB+BTbq8U
 WG/00TQQ==;
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaTKA-00048P-Ew
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 00:40:25 +0000
Received: by mail-ej1-x641.google.com with SMTP id i19so77869ejx.9
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2020 16:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/71ABBKcrmuk1YYEeoWw8BppObhxvcb+S+aM7wq/fSU=;
 b=c/y2SWWhKYhSpwtv78mNH7n9jPMelncrQF0Hh/x8KoJM3fTZ5oALzNi312/6weAp0I
 O4vwhGwcnmBQBtJps6OHUHsn+DysFEyhvN5WaQJXA2+xWVwb9fokuhNNzwidv1jLQKNW
 rWtGdl5+74SEJLp7e0gsEJl8GyR0ThN4IUxD1D+jSUpwlhF8wOMIZ3g5hB7DrS7R4AnF
 6m5SvcCJloOWgHuDPXotcidoxAvA9IjnP8hrnatHk47SvgXnYEmrZqd5YIodh3buwOxB
 y+pclkog9PWo/yLJDiBVXNUmQqKI1CtAZ5/A6UEVQ2XuOEy1kJMv2s0tO0tuTKyvzr/8
 q+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/71ABBKcrmuk1YYEeoWw8BppObhxvcb+S+aM7wq/fSU=;
 b=gfUHaLLNczwYeXtXfquk9cgjUyJfIwYvxR3hg873SGVMCeKCgXlsiE0OUyxxCLWKbY
 I6mIfmjzIbsQhkTNaciI7DrhkTXTGUViD6xMXbqboloY8e0znilREdwkptXzxX08IQo6
 KPY/wyjpVsPYnPXco9jb+EhOlUX5CFDsBWl4YIS77y1Oo6P2Je7o9vkkBUMzMK98gvNC
 iR+wQLrEdHqjhDeEqabMQjC+zqyUKvX91Od+fFyj5HC527FpCnXWUqXGXJZ0UFAYVNiU
 jcrDA4RWoVo4nZjfiv3BEd01aof29vcPnz4Pvc2jYaSizuWj/hCkiATZUMSnDP9jCcxK
 O+2g==
X-Gm-Message-State: AOAM530ncfK5J7ezOUXXBBFzBgLiTDOfXkYuj0Nd2SFaiCXH+5ThAOwD
 cdT9Tfc2uwluC0h+NzdDdSIl1k/8heSySs7o1e0=
X-Google-Smtp-Source: ABdhPJzfPbpIYbLPWBMieCv7JNMFd9IjwR7oyst2heYkJBDFs00UU26HtUP/RTz8PRGfd/ojLJXK/7H9H9sSC7TGy1I=
X-Received: by 2002:a17:906:c357:: with SMTP id
 ci23mr653766ejb.311.1604536759559; 
 Wed, 04 Nov 2020 16:39:19 -0800 (PST)
MIME-Version: 1.0
References: <fa7f3fc5-c37a-ac49-e14a-45a1d2e0a942@gmail.com>
 <CAPDyKFq9vKOODDQEEE2W+Gsx69_R3XV_Hb-owMU-=qAMbv39kg@mail.gmail.com>
 <2ebdcb5c-1c52-08af-9233-16366c20820e@intel.com>
In-Reply-To: <2ebdcb5c-1c52-08af-9233-16366c20820e@intel.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Nov 2020 19:39:08 -0500
Message-ID: <CAMdYzYoFCfVkz7zwbfQ=ZoirNTymRrRyg8FCabVVEQSKRnoOEA@mail.gmail.com>
Subject: Re: [BUG] cqe unable to handle buggy cards
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_004022_663189_6DA80A5D 
X-CRM114-Status: GOOD (  24.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, nuumiofi@gmail.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Ritesh Harjani <riteshh@codeaurora.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Manish Narani <manish.narani@xilinx.com>,
 Asutosh Das <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Nov 2, 2020 at 11:32 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 2/11/20 4:54 pm, Ulf Hansson wrote:
> > + cqhci maintainers
> >
> > On Sat, 31 Oct 2020 at 13:54, Peter Geis <pgwipeout@gmail.com> wrote:
> >>
> >> Good Morning,
> >>
> >> We are seeing an issue on the rk3399 with certain Foresee emmc modules
> >> where the module reports it supports command queuing but fails in actual
> >> implementation.
> >>
> >> Unfortunately there doesn't seem to be any method for the mmc core code
> >> to detect this situation and disable command queue automatically.
> >> There also appears to be no way to disable it at runtime.
>
> Since v5.5, if you know how to use SDHCI debug quirks there is
> SDHCI_QUIRK_BROKEN_CQE
> e.g. kernel command line option sdhci.debug_quirks=0x0x2020000

Thank you, we will test this.

>
> >>
> >> Certain modified kernels have added a patch to enable runtime disable of
> >> command queue entirely, but this will affect mmc core as a whole and not
> >> just the buggy card.
> >>
> >> Does anyone have any insight into this issue?
> >> Thank you for your time.
> >
> > Unfortunate, not me personally. I assume the issue is either be card
> > specific or host specific. Before looking at a disable option, we need
> > to know more about what goes wrong, I think.
> >
> > Kind regards
> > Uffe
> >
> >>
> >> Very Respectfully,
> >> Peter Geis
> >>
> >> [   64.472882] mmc2: cqhci: timeout for tag 2
> >> [   64.473349] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
> >> [   64.474057] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
> >> [   64.474763] mmc2: cqhci: Config:    0x00000000 | Control:  0x00000000
> >> [   64.475468] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000000
> >> [   64.476172] mmc2: cqhci: Int sig:   0x00000000 | Int Coal: 0x00000000
> >> [   64.476875] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
>
> TDL base cannot be zero, so the register values have been lost.
> Could be a reset issue like this one but for sdhci-of-arasan.c :
>
> https://lore.kernel.org/linux-mmc/20200819121848.16967-1-adrian.hunter@intel.com/

Excellent, we will see if a similar implementation makes a difference
here for us as well.

>
>
> >> [   64.477578] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
> >> [   64.478281] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
> >> [   64.478984] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
> >> [   64.479687] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
> >> [   64.489785] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
> >> [   64.499774] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
> >> [   64.509687] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
> >> [   64.519597] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
> >> [   64.529521] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
> >> [   64.539440] mmc2: sdhci: Argument:  0x00010000 | Trn mode: 0x00000010
> >> [   64.549352] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
> >> [   64.559277] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
> >> [   64.569214] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
> >> [   64.579061] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
> >> [   64.588842] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
> >> [   64.598671] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> >> [   64.608446] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
> >> [   64.618161] mmc2: sdhci: Cmd:       0x00000d1a | Max curr: 0x00000000
> >> [   64.627801] mmc2: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x642017d7
> >> [   64.637376] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
> >> [   64.646855] mmc2: sdhci: Host ctl2: 0x00000083
> >> [   64.656080] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
> >> [   64.665445] mmc2: sdhci: ============================================
> >> [   64.674998] mmc2: running CQE recovery
> >>
> >> [  125.912941] mmc2: cqhci: timeout for tag 3
> >> [  125.921978] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
> >> [  125.931200] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
> >> [  125.940389] mmc2: cqhci: Config:    0x00000001 | Control:  0x00000000
> >> [  125.949499] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000006
> >> [  125.958527] mmc2: cqhci: Int sig:   0x00000006 | Int Coal: 0x00000000
> >> [  125.967486] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
> >> [  125.976260] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
> >> [  125.985065] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
> >> [  125.993698] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
> >> [  126.002244] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
> >> [  126.010716] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
> >> [  126.019159] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
> >> [  126.027525] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
> >> [  126.035955] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
> >> [  126.044258] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
> >> [  126.052396] mmc2: sdhci: Argument:  0x00000001 | Trn mode: 0x00000010
> >> [  126.060370] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
> >> [  126.068241] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
> >> [  126.075978] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
> >> [  126.083552] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
> >> [  126.090937] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
> >> [  126.098219] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> >> [  126.105403] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
> >> [  126.112649] mmc2: sdhci: Cmd:       0x00003013 | Max curr: 0x00000000
> >> [  126.119700] mmc2: sdhci: Resp[0]:   0x00400800 | Resp[1]:  0x642017d7
> >> [  126.126594] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
> >> [  126.133334] mmc2: sdhci: Host ctl2: 0x00000083
> >> [  126.139652] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
> >> [  126.146008] mmc2: sdhci: ============================================
> >> [  126.152361] mmc2: running CQE recovery
> >>
> >>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
