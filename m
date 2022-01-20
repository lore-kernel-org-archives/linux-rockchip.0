Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66BD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jan 2022 17:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbREYQWGSe857SpJUgkU9xUrGsCOgVVElXUS9UEgy+Y=; b=z6r8gA56U07UmU
	qGnnaAg5BbakRmNV/k+lWM55XjtNsnzfSwgw324PDqY9OCwbwqr1Kz6PRAriNXYUfFWpplLARFWGu
	ktN544o+puulkam3suqMOaoDQDuXepZ2p8041fZhaNhXxSAqViEF2oWlFVFVVPsM9ed1lQlROFV18
	qkdWt0QO7UpW60NC4gmrUEQcmCeUQCSDL4c1iI22r6CIwGlMoMrKs7oxUe39ryOTlQ3tTW7qdyIVa
	vmQJCzIc4FJVaWImIm5vZpHwKJTpsL28+LGelYWg09E4pzviu8BtPhMaT+oM/mv6YWmzHSi43jvE3
	JH253W9ak1vkxtpPLYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAb1w-00CWp5-Ew; Thu, 20 Jan 2022 17:15:24 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAb1k-00CWlr-0T; Thu, 20 Jan 2022 17:15:13 +0000
Received: by mail-yb1-xb36.google.com with SMTP id k31so18195269ybj.4;
 Thu, 20 Jan 2022 09:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yT9EWMbXP3RpUqS/+1Dk4Xv8nRloB/d7Q7cHoePCJnE=;
 b=fa3ZYN8+fz5YzTQKAWtvk7h1sj8oC1aulkN8mEFZ5sm3P0dELvjUg2NaNTA/i0nGxk
 +3N1pP2ksmeit0EXA5ESsz4LVeh5yKR3v7msZwIPNItK0RpUyNDuslOTVSOQ1NiGfCcR
 +/xttfAvjnmGUJS/KOMaL8vnSDfZI1v5sOQMFnUlxaW7E4k+7u2ZaYKyKyTXu/xtkBjT
 IyCaaFR+skv2ciOHLi4sHQjOnl6t7Z9537inBQ6nMRD/qCOZDPNGdTskI93atmJREE0R
 Ev2VQuda3siBav0PuCP3vgx3Rzxcdi7zjI1dStRpviLhEU4YVJtBCojJ1VpDTSChbuMu
 RSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yT9EWMbXP3RpUqS/+1Dk4Xv8nRloB/d7Q7cHoePCJnE=;
 b=coUqwIVA5mfSs6Q8S+X2n+9Uh8bCbEbHamnm8Q+ABS9B10pDTlxdYysU+GBOClDqmz
 Dmj6tYpuIAJ9W2dvr8f7IQ2sH0vOlqTDUq8LW2EIqzaT6ZpERko84VSk7Q3wmEsrYc0R
 nn7UHC/vhRrRAWdpMkfBOqQh5Uha5/RmO6hv6P735BrxO5+ZcCmhFGQNJIDUUNWFvDNf
 t8PAkItV9KPlY9YqgUz1yeYYURlN7tdY8kv5Tw98gbrokqhSN9M6PQqcQ7ie1Y3wn4b5
 kne8dGwYBAThbK7yhMvLRm4A+OU0RrVKYR5CDljhS7Z3Dr9kLaKn4IbcemEZu4uE7fmu
 cIKw==
X-Gm-Message-State: AOAM532q4dTZi+B5MLDJd7YthHCwSYiIX8jujLcbmkfKZe8nfMNb574Z
 2bVt3BeqNJM+rD6vmhuPM2IWfTuoKRa++X5YHEI=
X-Google-Smtp-Source: ABdhPJzc4Y20EzjdiZVWoekW5D9g0NzOEhOYrbRg+LeU73fGt2mL90R25QRXcjd6M0f/xvFFDRbW5Gv53WEBJUHY7hI=
X-Received: by 2002:a05:6902:150d:: with SMTP id
 q13mr24253821ybu.355.1642698908078; 
 Thu, 20 Jan 2022 09:15:08 -0800 (PST)
MIME-Version: 1.0
References: <20220119134948.1444965-1-quentin.schulz@theobroma-systems.com>
 <CAMdYzYr+UXU-x=OakdHnOzLe1e4Y0xdGR-rybsmpLCMGbsWwXg@mail.gmail.com>
 <3e87ed0a-8b79-006a-dce6-62becc9906ef@theobroma-systems.com>
In-Reply-To: <3e87ed0a-8b79-006a-dce6-62becc9906ef@theobroma-systems.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 20 Jan 2022 12:14:56 -0500
Message-ID: <CAMdYzYpT8BUrukUozRSQDHgiQHMPbS5GtV7huL4xFFRsdxw0qQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399-puma eMMC HS400 signal
 integrity
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_091512_089684_8E8C6142 
X-CRM114-Status: GOOD (  33.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 20, 2022 at 11:03 AM Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> Hi Peter,
>
> On 1/20/22 16:06, Peter Geis wrote:
> > On Wed, Jan 19, 2022 at 8:52 AM <quentin.schulz@theobroma-systems.com> wrote:
> >>
> >> From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> >>
> >> There are signal integrity issues running the eMMC at 200MHz on Puma
> >> RK3399-Q7.
> >>
> >> Similar to the work-around found for RK3399 Gru boards, lowering the
> >> frequency to 100MHz made the eMMC much more stable, so let's lower the
> >> frequency to 100MHz.
> >>
> >> It might be possible to run at 150MHz as on RK3399 Gru boards but only
> >> 100MHz was extensively tested.
> >>
> >> Cc: Quentin Schulz <foss+kernel@0leil.net>
> >> Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
> >> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >> ---
> >>
> >> Note/RFC: as opposed to gru DTSI, max-frequency is used here instead of
> >> assigned-clock-rates.
> >>
> >> AFAIU, max-frequency applies to the SD bus rate, while
> >> assigned-clock-rates applies to the clock fed to the SD host controller
> >> inside the SoC. max-frequency does not interact with the clock subsystem
> >> AFAICT. assigned-clock-rates sets the clock rate at probe, regardless of
> >> eMMC tuning.
> >> Technically, the Arasan SDHC IP supports silicon-hardcoded clock
> >> multiplier so I think setting assigned-clock-rates as a way of rate
> >> limiting the eMMC block is incorrect and max-frequency should be used
> >> instead (as done in this patch). Otherwise the SDHC could still potentially
> >> derive a 200MHz clock from a lower rate clock thanks to its multiplier.
> >>
> >>   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 6 ++++++
> >>   1 file changed, 6 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> >> index fb67db4619ea..a6108578aae0 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> >> @@ -425,6 +425,12 @@ vcc5v0_host_en: vcc5v0-host-en {
> >>   };
> >>
> >>   &sdhci {
> >> +       /*
> >> +        * Signal integrity isn't great at 200MHz but 100MHz has proven stable
> >> +        * enough.
> >> +        */
> >> +       max-frequency = <100000000>;
> >> +
> >>          bus-width = <8>;
> >>          mmc-hs400-1_8v;
> >>          mmc-hs400-enhanced-strobe;
> >
> > I don't have these boards nor the schematics handy for them, but
> > wouldn't it be better to simply switch to mmc-hs200-1_8v?
>
> Thanks for the suggestion, I just tested, by removing mmc-hs400-1_8v;
> and mmc-hs400-enhanced-strobe; but keeping the clock rate at 200MHz and
> adding mmc-hs200-1_8v; failed a basic dd test.

Quite understandable.
I more meant it may permit you to reach a higher clock rate than
100mhz and thus possibly a higher data rate, for example perhaps
150mhz would be reachable.
For example I would do a bandwidth test for hs400-es at 100mhz, then
test at hs200 and find the maximum stable clock rate.
If 200mhz is stable enough to probe and /sys/kernel/debug/mmc<x>/ios
shows you are in 8bit hs200, you can adjust the clock rate through
/sys/kernel/debug/mmc<x>/clock without needing to reboot.
It will speed up testing.

If hs200 permits a higher overall data rate than hs400-es, it would be
worth making that switch.

Always,
Peter

>
> Cheers,
> Quentin
>
> > Other rk3399 boards don't have issues with hs200 at full 200mhz, and
> > as I understand it hs400-es exhibits stability issues on most rk3399
> > boards.
> >
> > Feel free to disregard my comments if you've already tested this.
> >
> >> --
> >> 2.34.1
> >>
> >>
> >> _______________________________________________
> >> Linux-rockchip mailing list
> >> Linux-rockchip@lists.infradead.org
> >> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_linux-2Drockchip&d=DwIBaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=OTusi9XARCbef1Ba5t1gv4_LqRkOaxFY3UtvYky6NVLpeiziqqmdOJ8-R5WXWFNr&s=xBnqhBu20rxvu_V-5EhXyA_yNxcJpa4Dq6HO2Ow3Gk8&e=

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
