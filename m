Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A7CF33801
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 06:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/Opna0D4OUy+e47LTxXLV1MEgdN4tZPYtqtoSaB8tg=; b=NIPU+92WrDMaLx
	5ktXVMQaKtFchIvi6G6KARXRV8AkOpesxRWIqG1UyXu0Hy7uwTbgc1Psn0TVpD5j/DtsxG3UUnM7N
	mFQE4HSw7TDINggFMGOCe22BV0v2I4kWP7Eb/zBaXPlo1IvkhoiOxasR6gga9hHEvPeTatj+yyuNv
	DFyh/E3sx+8Oo/fsLeGDMjtLMIYTuMHsLFL67eLQKrsAawy1j3OGrfk5ujrrUy+pMwKysWquaGc01
	r2J3vF91R9gTDAZ10aDt60oguxPvX4TtN2a7KLCkQI4nW3KkIo6zoUr6KLjml/0HwX3OxgMl7M7F4
	zLHRLmV6LMaGArfiWHfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Nra-00000005Uqq-1E4y;
	Tue, 17 Mar 2026 06:25:10 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2NrX-00000005Uq2-0Dmj
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 06:25:09 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b97e6e48b24so6512966b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Mar 2026 23:25:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773728705; cv=none;
        d=google.com; s=arc-20240605;
        b=fpcE35cAUcAbTTw0RhzVGWELvXysH+b8OVQcrg2yw4I8vihEmkcJhxZJ3i32/ef4zj
         ysBBKy3QVNAkBqRmaqEGtwt+2/t0b9voGnFINbyP9DlaC+a4NM5tFWGSuy6jlOCi9hfZ
         zho2zoqc16NyrH9FjnrUV7S1NcDyT6pf5Bmr0V1j7xcwh1zwJi44zLlCntWvBoxe37qs
         rwPbHMVQkbY0vPFY6G6fG3OKiYexNNPR3iSOhzDpLKPkI919lwairn19DlTFhSdJTffz
         KCSGh39+q4QT55bVu4P9fdR2/T1QYksZzlI704QVSSXSQnnA9I0ESeQiPFcblqPh4MBg
         XJpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=grG6esplvyUewgvA3Y3jc/bN8nKq9yVtK9UsxaYqAWg=;
        fh=/aT6DsZAsRxycW4f+Yd1dWsoNVbcKCFBLLBSwkIiJIw=;
        b=F6Rowqc+JO7VseyUllSrM8yu932TwfRWrHUWHrLCc6puQwpw5bBq4voK0biKZ3X5kD
         nCTLFo9tbNXOBQE1JxNEQT7yphBlXMhHLEAh2wf5Z1NH2qqi5CWBb9hcWWnbt1djTo2C
         zRGhb46KBhMMUSeO1GjirHsJHys9OtcfYf9qmePciYQ77eJv6GQN5KAvRAGVjhzbXE2t
         bVqtfTzHJvWOfsyqd3Jx7jBYRG1bxZap+EWAumawU4fwggK8S/3FBFvvVgyxdf7WgxJK
         rFdgfP3ZqA8/cESBhjCvMRqfbfGXJJgHiIE8yFWyqJWxb1ge/Sv6/XWvAEGkWNfsTC3w
         0FjA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773728705; x=1774333505; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=grG6esplvyUewgvA3Y3jc/bN8nKq9yVtK9UsxaYqAWg=;
        b=MxEJH+Z2oXov2MOa0qJeOIGXDkfN2Wd3y+libUGQksNLqW35IuJ6wKJU/208v6em9P
         ZnmxbgLjJjbEQEh7FjwOrELHkV73Iz9/JgLD594R4BVCSWz0eciDsQoQpsjdx+AZVkja
         FukjhSpEu8WCisGlH3vB/RCIAJN/pxrkhwg4+sXUGNPZV3ZUeblUA/75/fyTQYSMNfzZ
         p8wEXIkJe4HPWvrKZEuHZoZCHenGOWenKYjzqTZpTD2uiu+wX3kw5i/68cTadxzK7Tnl
         pUlAeyIbnAXw7kqAuv8AkkX5IOgmf9j1CteVM9jkgzOuU7qGu7cWUXLkFVg5DK1F0kNv
         1Onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773728705; x=1774333505;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=grG6esplvyUewgvA3Y3jc/bN8nKq9yVtK9UsxaYqAWg=;
        b=fbELi/dYsi6o9udbqREQGOgMQj6PJlEkaLUOQbgdYPBNIcqXa/y96solnxzXBVQnJS
         2C3lmHI7rWBI9tOBkHrZtumNATkIAM0SIZ8WuQirxRnW0cUYKn+eLl9/0jmtKiZTiRYK
         +b2+XeUhtHRJ+YYi5ZY1Cf9OwbW/AbXFjJPFwTZOmpukJ/hIAFdOshlEVU8alR6Ng4Ne
         LcY16wOivjWj2RKsDyehLMwpAM8c7c/aipTnuL6Sg1oWG2MUgRpTbBPu5LZMbR8x9dIG
         1/IVQ0nNbf41wpofMref4UorIM20d3RWaJMxrns4gZs+HJddcK1zqW3AIy+4nrCaORbS
         6NFg==
X-Forwarded-Encrypted: i=1; AJvYcCWEftLIS5FMKvYUOVrL6T1ifOdSgEx6HrOYYVdzHKQBrvjPH50EDBeUqQtQeEzx9oWE9/hUB/0ft5Lv/UA9kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwNBdG0DeLAUGiXjqpv0rbvgGKPd/2MH+olWO0q/atxC2IUCyHR
	VzGfT9gQecgIhAc3LqpdGGyxPe5ONnIKpFXmyn0OpRMuUyTKRAPcVQZVgA1i6OZ5m2uExGHfwsd
	Hd/ZJLTCK+uPXexCuo0SHML2IgIyFVNU=
X-Gm-Gg: ATEYQzwXL2qPoFaw+vssEVbZu3UgvshVVbvPXaQU6W55TAijFJL29XivMUz9Z6IOkPv
	zf0GRZMX+kOZ/GkDo+QdzJGIuQHZEaLExXppsxDsUjW+5SE7NtZrEHFfSa824LdYRdeISDYgvxH
	AV93X0jhyhKgu1aYpOKM934OLczG/wFm+DJmTxOnQ7zi8FpSu6k+o51Snq9L0SHJ6atgmxTaeNj
	6eIIO/07H1csGa5Sun6+WjyUgx0rmxf5KQXPM3UuA9oXdT0UzlLYkdPNAlJ5gZpU46uRaUztbnl
	MBSWAg==
X-Received: by 2002:a17:907:a42:b0:b97:17b7:d8eb with SMTP id
 a640c23a62f3a-b9765392026mr1010186466b.38.1773728704481; Mon, 16 Mar 2026
 23:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260226101032.1042-1-linux.amoon@gmail.com> <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com> <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com> <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org> <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org> <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <DH0TM60TVX5D.20W4O1X696ALA@kernel.org> <6cfe4bda-036f-4bb9-8a08-ed75f61cae24@arm.com>
 <DH1QCLS89ADR.3H0XABP0GEFQT@kernel.org> <4f9fdfc9-f2ad-49b1-a6b9-ae64aaa47cfd@arm.com>
 <CANAwSgQ6eaM=Z=MBmS0=HrLfBxOh+vqnRSkEge_q6y+oe7AU5w@mail.gmail.com>
In-Reply-To: <CANAwSgQ6eaM=Z=MBmS0=HrLfBxOh+vqnRSkEge_q6y+oe7AU5w@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 17 Mar 2026 11:54:47 +0530
X-Gm-Features: AaiRm52xTModvcS_wCghjufMEmds7Entym6jtUGNfqUcYmHWBvki21yZ4UCg2r0
Message-ID: <CANAwSgTVw7Tn7ZHFBqdHkZHbuTDSgbt5L_rhrVVtRwQu7ZS+tw@mail.gmail.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Robin Murphy <robin.murphy@arm.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Grimmauld <grimmauld@grimmauld.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_232507_204750_250171A8 
X-CRM114-Status: GOOD (  61.01  )
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

Hi Robin,

On Sat, 14 Mar 2026 at 10:42, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Hi Robin,
>
> On Fri, 13 Mar 2026 at 23:07, Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2026-03-13 2:39 pm, Danilo Krummrich wrote:
> > > On Fri Mar 13, 2026 at 2:15 PM CET, Robin Murphy wrote:
> > >> On 2026-03-12 12:59 pm, Danilo Krummrich wrote:
> > >>> On Thu Mar 12, 2026 at 1:48 PM CET, Robin Murphy wrote:
> > >>>> On 2026-03-11 9:09 pm, Danilo Krummrich wrote:
> > >>>>>    From a driver-core perspective I think we're rather limited on what we can do;
> > >>>>> we are already in async context at this point and can't magically go back to
> > >>>>> initcall context.
> > >>>>>
> > >>>>> So, the only thing I can think of is to kick off work on a workqueue, which in
> > >>>>> the end would be the same as the deferred probe handling.
> > >>>>
> > >>>> Hmm, in fact, isn't the deferred probe mechanism itself actually quite
> > >>>> appropriate?
> > >>>
> > >>> Yes, I've also mentioned this in [1], including the fact that it technically
> > >>> even complies with the guarantees given by PROBE_FORCE_SYNCHRONOUS. I.e. the
> > >>> documentation says:
> > >>>
> > >>>     Use this to annotate drivers that need their probe routines to run
> > >>>     synchronously with driver and device registration (with the exception of
> > >>>     -EPROBE_DEFER handling - re-probing always ends up being done
> > >>>     asynchronously).
> > >>>
> > >>> However, I'm still not sure how I feel about this, since I consider this to be
> > >>> more like a workaround that just moves things to a "more approprite" async
> > >>> context.
> > >>
> > >> I guess the underlying problem there is that there are at least 3
> > >> different significant aspects to what "synchronous" can mean:
> > >>
> > >> - literally in the context or device/driver registration as documented.
> > >> Off-hand I'm not really sure what useful property may be *specific* to
> > >> those conditions that a driver might rely on, other than for
> > >> super-special cases like platform_driver_probe().
> > >
> > > I'm not worried about this one, as it is already special by not being compatible
> > > with deferred probe. I.e. the caller already has to promise that the
> > > corresponding probe() call will never return -EPROBE_DEFER.
> > >
> > > This is a much more error prone requirement than just "don't call this from
> > > async" already.
> > >
> > >> - serialised, i.e. probes of multiple devices won't happen concurrently
> > >> on multiple threads. This is probably the one hiding the most driver
> > >> bugs, e.g. internal shared/global state without sufficient
> > >> synchronisation. I guess this falls out as a side-effect of the first
> > >> condition, but AFAICS it *can* also still provided by deferred probe
> > >> (given that it's a single work item iterating a list one-by-one)
> > >>
> > >> - in some regular thread context that isn't liable to have issues
> > >> synchronising against other async_func workers (i.e. the request_module
> > >> case). Again, deferred can't have a problem here, or it wouldn't have
> > >> worked properly in general for the last decade.
> > >>
> > >> So it's not that we'd be relying on some dubious "deferred is always
> > >> synchronous" assumption - AFAICS deferred *can* launch async if the
> > >> driver permits it - more just ratifying that deferred is still able to
> > >> effectively honour all the useful properties of PROBE_FORCE_SYNCHRONOUS
> > >> other than "during registration of the thing".
> > >
> > > Yes, and as mentioned above, EPROBE_DEFER has always been a valid path for
> > > PROBE_FORCE_SYNCHRONOUS, which is why I brought it up as a a workaround in the
> > > first place.
> > >
> > > (The reason why I still say "workaround" is because nothing actually needs to be
> > > deferred.)
> > >
> > > Anyways, as I mentioned...
> > >
> > >>> On the other hand, eventually we want everything to work with
> > >>> PROBE_PREFER_ASYNCHRONOUS, so maybe it's also good enough for the time being.
> > >
> > > ...plus there are not a lot of PROBE_FORCE_SYNCHRONOUS left anyways.
> > >
> > > Do you want to send a patch?
> >
> > Sure, I just wanted to check that you didn't see anything obviously
> > wrong with my reasoning-by-inspection - if you're sufficiently happy
> > then I'll write this up as a proper commit message and post the patch
> > (likely on Monday now) so we can all nit-pick the details :)
> >
> I believe the issue lies in the r8169 module, which currently has the
> PHY address hardcoded to zero in mdiobus_get_phy. I have modified the
> implementation to scan the MDIO bus for all possible addresses to improve
> hardware compatibility.
>
> Can you check this at your end.
>
> ----->8-----
> $ git diff drivers/net/ethernet/realtek/r8169_main.c
> diff --git a/drivers/net/ethernet/realtek/r8169_main.c
> b/drivers/net/ethernet/realtek/r8169_main.c
> index 58788d196c57..fa99e33eccfe 100644
> --- a/drivers/net/ethernet/realtek/r8169_main.c
> +++ b/drivers/net/ethernet/realtek/r8169_main.c
> @@ -5420,7 +5420,8 @@ static int r8169_mdio_register(struct rtl8169_private *tp)
>  {
>         struct pci_dev *pdev = tp->pci_dev;
>         struct mii_bus *new_bus;
> -       int ret;
> +       struct phy_device *phydev;
> +       int ret, addr;
>
>         /* On some boards with this chip version the BIOS is buggy and misses
>          * to reset the PHY page selector. This results in the PHY ID read
> @@ -5455,18 +5456,30 @@ static int r8169_mdio_register(struct
> rtl8169_private *tp)
>         if (ret)
>                 return ret;
>
> -       tp->phydev = mdiobus_get_phy(new_bus, 0);
> -       if (!tp->phydev) {
> +       /* find the first (lowest address) PHY on the current MAC's MII bus */
> +       for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
> +               struct phy_device *tmp = mdiobus_get_phy(new_bus, addr);
> +               if (tmp) {
> +                       phydev = tmp;
> +                       break;
> +               }
> +       }
> +
> +       if (!phydev) {
> +               dev_err(&pdev->dev, "no PHY found on bus\n");
>                 return -ENODEV;
> -       } else if (!tp->phydev->drv) {
> -               /* Most chip versions fail with the genphy driver.
> -                * Therefore ensure that the dedicated PHY driver is loaded.
> -                */
> +       }
> +
> +       /* Most chip versions fail with the genphy driver.
> +        * Therefore ensure that the dedicated PHY driver is loaded.
> +        */
> +       if (!phydev->drv || phy_driver_is_genphy(phydev)) {
>                 dev_err(&pdev->dev, "no dedicated PHY driver found for
> PHY ID 0x%08x, maybe realtek.ko needs to be added to initramfs?\n",
>                         tp->phydev->phy_id);
>                 return -EUNATCH;
>         }
>
> +       tp->phydev = phydev;
>         tp->phydev->mac_managed_pm = true;
>         if (rtl_supports_eee(tp))
>                 phy_support_eee(tp->phydev);
>
> > Cheers,
> > Robin.
>
I've submitted a patch to address the issue you reported.
Could you please verify if this resolves it on your side?

[1] https://lore.kernel.org/all/20260317061700.7734-1-linux.amoon@gmail.com/

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
