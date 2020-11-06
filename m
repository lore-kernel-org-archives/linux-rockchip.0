Return-Path: <SRS0=pTeD=EM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3684C55178
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 20:54:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D77D20B1F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 20:54:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="SU9wRdhE";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Asy4yxME"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D77D20B1F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ar2Ai/Wz5Pq9a6NprkaMI4WLuZqMPzO7sBwT5q+whmE=; b=SU9wRdhEVdYlXMtJ1hPme9rRt
	Z+zcp8JVDMt0xkU3lDR2jB7W2L2MsZf43Nes9Rqi0+ah1IE4/3quelvjfKbLf1PPFCskA8fQ6TVUh
	mtUFJ46Kx3FjTMGOlwb1AWXqG/kw9Lvuqf7hpchkSfCh+KjSt5zUC6dR7dIJpHLbOMlhxwAc6y8w+
	MTWqCY8+BZXSoiMONFVZ3PQfWNcxhxENYCHKZf2oc2D6ZrsQe2ttIud5Dby6adBE+Obx8bDGoTW3Q
	hpf1pkuXP8CygyczskyJ9g9ZNcr1rB2xYKFi6TsB2Zw5dXoaiWm7AGffpYop3QeOUS7fpgkw5pqEN
	VFTDSCwiQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kb8ku-0008T0-Eh; Fri, 06 Nov 2020 20:54:44 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb8kr-0008SZ-Hd
 for linux-rockchip@lists.infradead.org; Fri, 06 Nov 2020 20:54:42 +0000
Received: by mail-ej1-x641.google.com with SMTP id za3so3772580ejb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 06 Nov 2020 12:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uq+Se9A4U/9VrkR03NfJ0lqhku5hviFsGds5G4jqrCc=;
 b=Asy4yxMEe1/08xUTccFmPDfnqP8hmpjsAzGUwm8RuJp+nrYiRkzy6EYU5Kp4WH73eG
 lppa31YOPW3dI4wqHcjNC8tS78ov+/LFfgtqBto7p5zHYhqgRTzlQjPjwf0xeefYSIC7
 szA3B3Eru2W+G+bdheAmn/OAAA1OTjRIrGk3O36VKdm5HCHQhpjtrknoPXhRLD/CIfMw
 wM7zUELA+74+rbMcV+gijJLEVClM9wVAhXH8oqgU9ERilXyeckbiA4TqhplYbo/7GowD
 5pTmCI61r71btSx1GXP/HO3k19KTIBf0aqZuXMfg16yq9KqSpBUEUr8GXsnJkVVZCAKA
 c4aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uq+Se9A4U/9VrkR03NfJ0lqhku5hviFsGds5G4jqrCc=;
 b=blspYrnjFry4IX1f2kCz7xvK3uFHXVDkbEExYIM5B8Jmh2IhC1x833k2TQ8C8Kocob
 yORDctsccGGVAtFzMyCAbE2gpU5QOpW2Di+61++Fgn//U+Odb+r9pmijJP0drlBzrezd
 vVRmaOL/uanPelb0LULNfhM3ctGBtke6wVsZCexmz0Hf5pyWZz/S9QvyDu4WW2CVSf0y
 boO40ufYPFloitZjhCWsXjcgV1pjNJzjvv+PeGHU21N4Ep6RU+mEy5ANdXD7MIu7HiTe
 ovziWGqwNndJPnPPvGhIIIOtQ1RznQoHkWvjc/06pJP7e4MGC8xRsWAkYAWZWga8a9gS
 7i3A==
X-Gm-Message-State: AOAM531UH8WfiE4Yz40op+Fsq531vItfBiW8oxEWUWcHJdyDq8TlZMkA
 ZteCQc6AZFGGTMOVJGbYffS1AfJqAry9eYZjLiT4dLALcqlb2Q==
X-Google-Smtp-Source: ABdhPJzu6jlgcJwQxnRC0x0d3JSdeUzF1SRJinAVsnbMQozuzYicpbqqsW4tuioppT2NJi9dqBlYL/5e7cp/jE4/GfQ=
X-Received: by 2002:a17:906:16d6:: with SMTP id
 t22mr4022871ejd.376.1604696077032; 
 Fri, 06 Nov 2020 12:54:37 -0800 (PST)
MIME-Version: 1.0
References: <fa7f3fc5-c37a-ac49-e14a-45a1d2e0a942@gmail.com>
 <CAPDyKFq9vKOODDQEEE2W+Gsx69_R3XV_Hb-owMU-=qAMbv39kg@mail.gmail.com>
 <2ebdcb5c-1c52-08af-9233-16366c20820e@intel.com>
 <CAMdYzYoFCfVkz7zwbfQ=ZoirNTymRrRyg8FCabVVEQSKRnoOEA@mail.gmail.com>
In-Reply-To: <CAMdYzYoFCfVkz7zwbfQ=ZoirNTymRrRyg8FCabVVEQSKRnoOEA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 6 Nov 2020 15:54:25 -0500
Message-ID: <CAMdYzYqEhgO6q3iXNzzuZ3snW_Y1bYP8BOBkNC5=fCPc310BUA@mail.gmail.com>
Subject: Re: [BUG] cqe unable to handle buggy cards
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201106_155441_604608_299A914B 
X-CRM114-Status: GOOD (  26.86  )
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
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Manish Narani <manish.narani@xilinx.com>,
 Asutosh Das <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Nov 4, 2020 at 7:39 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Mon, Nov 2, 2020 at 11:32 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
> >
> > On 2/11/20 4:54 pm, Ulf Hansson wrote:
> > > + cqhci maintainers
> > >
> > > On Sat, 31 Oct 2020 at 13:54, Peter Geis <pgwipeout@gmail.com> wrote:
> > >>
> > >> Good Morning,
> > >>
> > >> We are seeing an issue on the rk3399 with certain Foresee emmc modules
> > >> where the module reports it supports command queuing but fails in actual
> > >> implementation.
> > >>
> > >> Unfortunately there doesn't seem to be any method for the mmc core code
> > >> to detect this situation and disable command queue automatically.
> > >> There also appears to be no way to disable it at runtime.
> >
> > Since v5.5, if you know how to use SDHCI debug quirks there is
> > SDHCI_QUIRK_BROKEN_CQE
> > e.g. kernel command line option sdhci.debug_quirks=0x0x2020000
>
> Thank you, we will test this.

This does resolve the issue of disabling cqe entirely for debugging, thanks!

>
> >
> > >>
> > >> Certain modified kernels have added a patch to enable runtime disable of
> > >> command queue entirely, but this will affect mmc core as a whole and not
> > >> just the buggy card.
> > >>
> > >> Does anyone have any insight into this issue?
> > >> Thank you for your time.
> > >
> > > Unfortunate, not me personally. I assume the issue is either be card
> > > specific or host specific. Before looking at a disable option, we need
> > > to know more about what goes wrong, I think.
> > >
> > > Kind regards
> > > Uffe
> > >
> > >>
> > >> Very Respectfully,
> > >> Peter Geis
> > >>
> > >> [   64.472882] mmc2: cqhci: timeout for tag 2
> > >> [   64.473349] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
> > >> [   64.474057] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
> > >> [   64.474763] mmc2: cqhci: Config:    0x00000000 | Control:  0x00000000
> > >> [   64.475468] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000000
> > >> [   64.476172] mmc2: cqhci: Int sig:   0x00000000 | Int Coal: 0x00000000
> > >> [   64.476875] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
> >
> > TDL base cannot be zero, so the register values have been lost.
> > Could be a reset issue like this one but for sdhci-of-arasan.c :
> >
> > https://lore.kernel.org/linux-mmc/20200819121848.16967-1-adrian.hunter@intel.com/
>
> Excellent, we will see if a similar implementation makes a difference
> here for us as well.

I wrote a patch to implement this in the arasan driver.
https://paste.ee/p/cl5SX
Nuumiofi tested it with the buggy card.

The good news, it solves the register clearing issue.
The bad news, the card still is broken, here is the kernel log:
https://paste.ubuntu.com/p/sF2yMwxpcV/

>
> >
> >
> > >> [   64.477578] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
> > >> [   64.478281] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
> > >> [   64.478984] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
> > >> [   64.479687] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
> > >> [   64.489785] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
> > >> [   64.499774] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
> > >> [   64.509687] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
> > >> [   64.519597] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
> > >> [   64.529521] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
> > >> [   64.539440] mmc2: sdhci: Argument:  0x00010000 | Trn mode: 0x00000010
> > >> [   64.549352] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
> > >> [   64.559277] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
> > >> [   64.569214] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
> > >> [   64.579061] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
> > >> [   64.588842] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
> > >> [   64.598671] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> > >> [   64.608446] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
> > >> [   64.618161] mmc2: sdhci: Cmd:       0x00000d1a | Max curr: 0x00000000
> > >> [   64.627801] mmc2: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x642017d7
> > >> [   64.637376] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
> > >> [   64.646855] mmc2: sdhci: Host ctl2: 0x00000083
> > >> [   64.656080] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
> > >> [   64.665445] mmc2: sdhci: ============================================
> > >> [   64.674998] mmc2: running CQE recovery
> > >>
> > >> [  125.912941] mmc2: cqhci: timeout for tag 3
> > >> [  125.921978] mmc2: cqhci: ============ CQHCI REGISTER DUMP ===========
> > >> [  125.931200] mmc2: cqhci: Caps:      0x00000000 | Version:  0x00000510
> > >> [  125.940389] mmc2: cqhci: Config:    0x00000001 | Control:  0x00000000
> > >> [  125.949499] mmc2: cqhci: Int stat:  0x00000000 | Int enab: 0x00000006
> > >> [  125.958527] mmc2: cqhci: Int sig:   0x00000006 | Int Coal: 0x00000000
> > >> [  125.967486] mmc2: cqhci: TDL base:  0x00000000 | TDL up32: 0x00000000
> > >> [  125.976260] mmc2: cqhci: Doorbell:  0x00000000 | TCN:      0x00000000
> > >> [  125.985065] mmc2: cqhci: Dev queue: 0x00000000 | Dev Pend: 0x00000000
> > >> [  125.993698] mmc2: cqhci: Task clr:  0x00000000 | SSC1:     0x00011000
> > >> [  126.002244] mmc2: cqhci: SSC2:      0x00000000 | DCMD rsp: 0x00000000
> > >> [  126.010716] mmc2: cqhci: RED mask:  0xfdf9a080 | TERRI:    0x00000000
> > >> [  126.019159] mmc2: cqhci: Resp idx:  0x00000000 | Resp arg: 0x00000000
> > >> [  126.027525] mmc2: sdhci: ============ SDHCI REGISTER DUMP ===========
> > >> [  126.035955] mmc2: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
> > >> [  126.044258] mmc2: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
> > >> [  126.052396] mmc2: sdhci: Argument:  0x00000001 | Trn mode: 0x00000010
> > >> [  126.060370] mmc2: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000034
> > >> [  126.068241] mmc2: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
> > >> [  126.075978] mmc2: sdhci: Wake-up:   0x00000000 | Clock:    0x00000007
> > >> [  126.083552] mmc2: sdhci: Timeout:   0x0000000e | Int stat: 0x00000000
> > >> [  126.090937] mmc2: sdhci: Int enab:  0x02ff4000 | Sig enab: 0x02ff4000
> > >> [  126.098219] mmc2: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> > >> [  126.105403] mmc2: sdhci: Caps:      0x44edc880 | Caps_1:   0x800020f7
> > >> [  126.112649] mmc2: sdhci: Cmd:       0x00003013 | Max curr: 0x00000000
> > >> [  126.119700] mmc2: sdhci: Resp[0]:   0x00400800 | Resp[1]:  0x642017d7
> > >> [  126.126594] mmc2: sdhci: Resp[2]:   0x4e436172 | Resp[3]:  0x00880103
> > >> [  126.133334] mmc2: sdhci: Host ctl2: 0x00000083
> > >> [  126.139652] mmc2: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf0628208
> > >> [  126.146008] mmc2: sdhci: ============================================
> > >> [  126.152361] mmc2: running CQE recovery
> > >>
> > >>
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
