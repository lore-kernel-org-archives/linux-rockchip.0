Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA65C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 19:07:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 294182076E
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 19:07:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ASO1Ndfr";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="quvDvkQp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 294182076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GKz5VN/b7ONGbr/6LFzgTuV0pOdM4TQfjY2upnL742Q=; b=ASO1NdfrJjQV7MmEN0WEvHp+3
	PdGjzx2gPxudQvbSVH60aeOin7zruvbVQ4gIkWuMt2fB6ZPU6k6X5n9/n0DyvgLr0SVfD1tv4AE0G
	tsYxU0H0X2tjk9kwd4rXkD6XoOLdgsrcLdM6M/v0+tvxNeTHvq+C0RUhIIqgyWMst4rkn1ae+ef/T
	XoHS90zoMV8NB5BnImzYfY0hzuFxXAfOOF8NHy+eS1exo7JHKFJuDlABgDUsJaYQqrrZU6X/Y/ACa
	UrySKngzOsotrmW8izLT1UKOjKHuhcLCrNh4CGJ2O46caMUJmrNrDtjOpcsjPXmf/gOxx/Ee+eDFy
	xljIkoQvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k86ww-0007F9-9v; Tue, 18 Aug 2020 19:07:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k86wr-0007Di-Oe; Tue, 18 Aug 2020 19:07:06 +0000
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C1FE20882;
 Tue, 18 Aug 2020 19:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597777624;
 bh=55pVwpT0xEtPZVEROShTJ0Uc3arN8xwipdI+p/ChKAM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=quvDvkQpVKXStBOSmRMymOqkLwjWtVzNRoBo4xkbhmnR3elsXvxbmTGTA8NpwwlfS
 AbbVotQBwANhm/JVXvB5O2+9aGEBU8FJKQspBEEl88rUic9O2BlQY6SFLI1PRUq/Pr
 YNsu8AlgTVEui/hPehzU9/pe0Ye0hliUlPyxSUp4=
Received: by mail-oi1-f179.google.com with SMTP id j7so18876209oij.9;
 Tue, 18 Aug 2020 12:07:04 -0700 (PDT)
X-Gm-Message-State: AOAM533ujjEXUR2DMCYFp3oz8VQmGND9xs9dyZmsVg9yc6buchpSZmIw
 jATtQnt+jICpNWVml5DWFmfInPC3nbJB6AcKig==
X-Google-Smtp-Source: ABdhPJy0LflVo0MIWnhHUiGwo2npwXpKDh8efjVZ0OkgXzrN+b7fkI66kwoECSvpC/NEsckpFvqnjd3FkrDbH5HAa5Y=
X-Received: by 2002:aca:190c:: with SMTP id l12mr1083286oii.147.1597777623829; 
 Tue, 18 Aug 2020 12:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200815125112.462652-2-maz@kernel.org>
 <20200815232228.GA1325245@bjorn-Precision-5520>
 <87pn7qnabq.wl-maz@kernel.org>
 <CAL_Jsq+fDNa60+6+s9MwVjUFUPAuc43+uMx4Fm2nZhUgrV7LEg@mail.gmail.com>
 <e2cde177e82fbdf158732ad73ccdc6c5@kernel.org>
 <CAL_JsqL1_d2grS3Pz6NNeVAOMPbx_hAe+MrseQeQp=bHRQ7rfQ@mail.gmail.com>
 <72c10e43023289b9a4c36226fe3fd5d9@kernel.org>
 <CAGETcx-hkz8fyAHuhRi=JhBFu4YUmL2UpHfgs7doLHK-RdKA0A@mail.gmail.com>
 <d6f0894a81c645d66480310cd741a44e@kernel.org>
In-Reply-To: <d6f0894a81c645d66480310cd741a44e@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Aug 2020 13:06:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLMqbGBKsh=0BuTUxhf5g6qC0TsOWK+xX8DdxpEGAbG5w@mail.gmail.com>
Message-ID: <CAL_JsqLMqbGBKsh=0BuTUxhf5g6qC0TsOWK+xX8DdxpEGAbG5w@mail.gmail.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Work around missing device_type
 property in DT
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_150706_009732_6BBF6826 
X-CRM114-Status: GOOD (  30.54  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Saravana Kannan <saravanak@google.com>,
 PCI <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Aug 18, 2020 at 1:03 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-08-18 18:48, Saravana Kannan wrote:
> > On Tue, Aug 18, 2020 at 10:34 AM Marc Zyngier <maz@kernel.org> wrote:
>
> [...]
>
> >> OK. So how about something like this?
> >>
> >> diff --git a/drivers/of/address.c b/drivers/of/address.c
> >> index 590493e04b01..a7a6ee599b14 100644
> >> --- a/drivers/of/address.c
> >> +++ b/drivers/of/address.c
> >> @@ -134,9 +134,13 @@ static int of_bus_pci_match(struct device_node
> >> *np)
> >>          * "pciex" is PCI Express
> >>          * "vci" is for the /chaos bridge on 1st-gen PCI powermacs
> >>          * "ht" is hypertransport
> >> +        *
> >> +        * If none of the device_type match, and that the node name is
> >> +        * "pcie", accept the device as PCI (with a warning).
> >>          */
> >>         return of_node_is_type(np, "pci") || of_node_is_type(np,
> >> "pciex") ||
> >> -               of_node_is_type(np, "vci") || of_node_is_type(np,
> >> "ht");
> >> +               of_node_is_type(np, "vci") || of_node_is_type(np,
> >> "ht") ||
> >> +               WARN_ON_ONCE(of_node_name_eq(np, "pcie"));
> >
> > I don't think we need the _ONCE. Otherwise, it'd warn only for the
> > first device that has this problem.
>
> Because probing devices doesn't necessarily occur once. Case in point,
> it takes *10 to 15* attempts for a rk3399 system such as mine to finally
> probe its PCIe device, thanks to the wonderful -EPROBE_DEFER.
>
> Do I want to see the same stack trace 10 (or more) times? No.
>
> > How about?
> > WARN(of_node_name_eq(np, "pcie"), "Missing device type in %pOF", np)
> >
> > That'll even tell them which node is bad.
>
> I explained my objections above. Spitting out the device node is
> useful, but there is no need to be exhaustive (if you're in a
> position to fix the DT, you can track all the broken instances
> for your device easily).
>
> I'm actually minded to tone it down even more, because the stack
> trace is meaningless to most users. See below for a revised patch.

LGTM.

>          M.
>
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 590493e04b01..b37bd9cc2810 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -128,15 +128,29 @@ static unsigned int of_bus_pci_get_flags(const
> __be32 *addr)
>    * PCI bus specific translator
>    */
>
> +static bool of_node_is_pcie(struct device_node *np)
> +{
> +       bool is_pcie = of_node_name_eq(np, "pcie");
> +
> +       if (is_pcie)
> +               pr_warn_once("%pOF: Missing device_type\n", np);
> +
> +       return is_pcie;
> +}
> +
>   static int of_bus_pci_match(struct device_node *np)
>   {
>         /*
>          * "pciex" is PCI Express
>          * "vci" is for the /chaos bridge on 1st-gen PCI powermacs
>          * "ht" is hypertransport
> +        *
> +        * If none of the device_type match, and that the node name is
> +        * "pcie", accept the device as PCI (with a warning).
>          */
>         return of_node_is_type(np, "pci") || of_node_is_type(np, "pciex") ||
> -               of_node_is_type(np, "vci") || of_node_is_type(np, "ht");
> +               of_node_is_type(np, "vci") || of_node_is_type(np, "ht") ||
> +               of_node_is_pcie(np);
>   }
>
>   static void of_bus_pci_count_cells(struct device_node *np,
>
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
