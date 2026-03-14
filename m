Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3406FD88ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Mar 2026 05:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j6aJyYQsQQ6P/T15ALSNuVlTnD45aT5lMRo2fsM8ak=; b=VpF5HRuzsbZy7Z
	7pd62NqZ/8dzF++nmzdtEX1d16vf//k4RYqeeyOSWK6gUH0N1UXuLBL8zzI1YhV9OXuEq6G1EG9fi
	C7r3ip5BKn3vRC26lmoOcIq36B5+yRUQg2oO5Gy1UJ9b3oydH9Co0t5bDaQcbz3wbnJm7V9chI3oB
	tI2Yyc6LBI03KULLoypF9LtKPUDBLWCPFhzz/qfoqjrRWuT9rXgayjL0/+f1StLRcsSzy3oTsL7WS
	aLxwwJo5yXCukxpgyJO6lnBwwj5W4xLzeaHUk8Bfstte33InIC2MMz7OO+VrA7GWnx0Q8zqoThHc7
	b5bDZi4kO3l2cu3RY4ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HJf-00000001Vk8-2GPo;
	Sat, 14 Mar 2026 05:13:35 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HJN-00000001Vhc-2fsM
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Mar 2026 05:13:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-6630858b4ceso4043265a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 22:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773465195; cv=none;
        d=google.com; s=arc-20240605;
        b=EmWWoq4uy+AZ51VxWI9D1kYe/3UZIGJU44GigXj1RVDD9IVvFS2i0RTKFlxNvueoy4
         +vCcEKNdH1IwB9/bTWQJ0lFdSwbfM7UAO4HtP5NfvAonTO6f2j0xjNb5gnzHqXRhFt1g
         CoPMXZvKtFNFelxIm9Sx3oUnjNu/8ajq6BKBbP2hiegxRnrzAt5dGoZJWRIQhWNbch5O
         lIOddUnfxUYSuub6HGxgfZmSym/nqfbip9WEsq+oVBs4BOY9IcBoj8Tivj0UneP+K/hB
         sfh3hVFc4qPTPl8y3i1G/As/s3zR4Du98GQwh7i/uzG9JjuAqYA4okVuofJOCJRt4EbG
         GquA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IM7Q6oOyb5nhIw60KEs5pEzxBNhlQ40PGDtJzVWEr0o=;
        fh=YFe9JPltPmr9BrB/uRLUQMXdKMux7s3PHH5U3W9rg9g=;
        b=VWPBoCe+DnvR32O3DvnnUAFvskaWVqm7jR0wj2PIaH0zkVw1fbPM0XmQfUZo7D8vOS
         KREe6RCWu6/MKv7Y9TPtyWXRI+wQH00o2mwsqXHtMB8nNRARQi8atylxSu+tCFynO1vn
         rIMPavN3uZ1yUIX1k04xU8PU9d4t9kePgoB9dcrVV8/I7Oey5E1v5QpDjhFmaauPr9IR
         yIdLVGWC6P4QomxkYnU1iFOGJK2SKP+1TA6s5hjH3e/I7iUSxTTgg6HcEN0hcSsWHXkt
         Qq5EFIisigapNGKOmJYRiXNpS83ld2m7yqs8RiRZyxgQrfSj63dn8lKPZnVURHLIWt8n
         7tUw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773465195; x=1774069995; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IM7Q6oOyb5nhIw60KEs5pEzxBNhlQ40PGDtJzVWEr0o=;
        b=WF/5c5QZSRBwOzrZ0mkjgMKig3Y4k/2i+lGqVxJ/ghkW/FE+ItUOLMhBbQvoDto60W
         9KhariFMTsEjiQzlpgUkKo0RYyZH8nVilOTK0IzLbNu2EGjlqwcqbKlKqzfMyqx5V0qq
         PSPzQ5fGXAOINIBrwRUpd1hNAdyAV4x3q8298Dx74CSVl+EIWo5Rcw4Y+LUwYZRJZh3S
         6vjvVBBSOz5Q3FTVBSm0Mb++Wpu7khxhwNmsr4tVL41YAaXuLi7PspMfvZyhjmdY0JI/
         occiceEyO9U9qKjAbUsCcAz2/P0IvdTumXZdcZ8WvbwHyKQjJVpEL+RWpFU/ofROyeq+
         2MkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465195; x=1774069995;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IM7Q6oOyb5nhIw60KEs5pEzxBNhlQ40PGDtJzVWEr0o=;
        b=AavtjdOFonexJxJ1s26kv1aXkEmgczr4ltgxHwYNQgywHTpNEKv8nGaoS1kSBVeUFp
         HJvezIbxCgyGGiWP2tKZJ5ps8mv/i0WmgnEETIiXr1hc9pfMi9fPLeHVGRJ0vxNUFYNL
         aHAcz/FCxh7tL4k9DDJlUrKp0YUNgkECOxFD8PIauplZB41NEZP8/FqQLdPqrJDuPW01
         nqxeqbmr9uYkz0XmUfRqbcE+Qaf5PdBSDO+eXAmtzbcisnBC9ikq3fRVWmfHUJdO22Zg
         e2vMzaIKBeyyi69JeWXCYvrFFhSVXICfjLwUgc0pqGaSLiCTgor5aOe+crhXkttPXtQ0
         7VWw==
X-Forwarded-Encrypted: i=1; AJvYcCVjyRsD3vU1xaG4uWRA+/W5zrUSi0JJvYUsqskzePsejczljsX+/1UFG5WYY4tSJxDKOjxbGZEEFq7dBFx5ug==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMw2oDRlibEAEOpFEp8u0lHO373Ar1x8nCui//eoZDjGNHNEmu
	eivNoipMc1EJ+IHtn1JZwiscCtnfu/qYbBTVPmaK183ov3HpARyOTnMvkQeBMCDYylrCK7r7HER
	5dZbfj22XNP4TT3p4fUJe9DJR0ODGwqfSYYkJ
X-Gm-Gg: ATEYQzwCOVa+G4jy9dL//J/zvdAnGXYhvjCL6yKyOdD/v/f8u7altdO2TTcRGwnx0uK
	iKfGliYBT5COAddc9q+TsOXbVyg1PUsyw5d/MmNWUySfQlCDCNKL37y0595LASA7BNC2ErYCKa1
	LSpOxqgGpbZfxrIXTR5KpcZoqu6mjbixBYshdNkwZHctu0IDbCm/+p3A+wAhVhXtQJ05oUg3lp9
	+sm8xOClQzVhtlZjg+LpsAq8YGb30SkvG4YCfNk9l+FcRErESP4EsRynqKp1XGYF0oV3SNIOVup
	j6yldQ==
X-Received: by 2002:a17:906:208f:b0:b8e:796a:fd5c with SMTP id
 a640c23a62f3a-b976506440amr202919666b.27.1773465195027; Fri, 13 Mar 2026
 22:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260226101032.1042-1-linux.amoon@gmail.com> <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com> <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com> <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org> <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org> <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <DH0TM60TVX5D.20W4O1X696ALA@kernel.org> <6cfe4bda-036f-4bb9-8a08-ed75f61cae24@arm.com>
 <DH1QCLS89ADR.3H0XABP0GEFQT@kernel.org> <4f9fdfc9-f2ad-49b1-a6b9-ae64aaa47cfd@arm.com>
In-Reply-To: <4f9fdfc9-f2ad-49b1-a6b9-ae64aaa47cfd@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 14 Mar 2026 10:42:58 +0530
X-Gm-Features: AaiRm52yI10E6vLq92rcORMoPK2tRdzWpVlxX3dbSjvIMnFFuSiMh3dLe0uhnRo
Message-ID: <CANAwSgQ6eaM=Z=MBmS0=HrLfBxOh+vqnRSkEge_q6y+oe7AU5w@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260313_221332_235537_F8348560 
X-CRM114-Status: GOOD (  52.09  )
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

On Fri, 13 Mar 2026 at 23:07, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2026-03-13 2:39 pm, Danilo Krummrich wrote:
> > On Fri Mar 13, 2026 at 2:15 PM CET, Robin Murphy wrote:
> >> On 2026-03-12 12:59 pm, Danilo Krummrich wrote:
> >>> On Thu Mar 12, 2026 at 1:48 PM CET, Robin Murphy wrote:
> >>>> On 2026-03-11 9:09 pm, Danilo Krummrich wrote:
> >>>>>    From a driver-core perspective I think we're rather limited on what we can do;
> >>>>> we are already in async context at this point and can't magically go back to
> >>>>> initcall context.
> >>>>>
> >>>>> So, the only thing I can think of is to kick off work on a workqueue, which in
> >>>>> the end would be the same as the deferred probe handling.
> >>>>
> >>>> Hmm, in fact, isn't the deferred probe mechanism itself actually quite
> >>>> appropriate?
> >>>
> >>> Yes, I've also mentioned this in [1], including the fact that it technically
> >>> even complies with the guarantees given by PROBE_FORCE_SYNCHRONOUS. I.e. the
> >>> documentation says:
> >>>
> >>>     Use this to annotate drivers that need their probe routines to run
> >>>     synchronously with driver and device registration (with the exception of
> >>>     -EPROBE_DEFER handling - re-probing always ends up being done
> >>>     asynchronously).
> >>>
> >>> However, I'm still not sure how I feel about this, since I consider this to be
> >>> more like a workaround that just moves things to a "more approprite" async
> >>> context.
> >>
> >> I guess the underlying problem there is that there are at least 3
> >> different significant aspects to what "synchronous" can mean:
> >>
> >> - literally in the context or device/driver registration as documented.
> >> Off-hand I'm not really sure what useful property may be *specific* to
> >> those conditions that a driver might rely on, other than for
> >> super-special cases like platform_driver_probe().
> >
> > I'm not worried about this one, as it is already special by not being compatible
> > with deferred probe. I.e. the caller already has to promise that the
> > corresponding probe() call will never return -EPROBE_DEFER.
> >
> > This is a much more error prone requirement than just "don't call this from
> > async" already.
> >
> >> - serialised, i.e. probes of multiple devices won't happen concurrently
> >> on multiple threads. This is probably the one hiding the most driver
> >> bugs, e.g. internal shared/global state without sufficient
> >> synchronisation. I guess this falls out as a side-effect of the first
> >> condition, but AFAICS it *can* also still provided by deferred probe
> >> (given that it's a single work item iterating a list one-by-one)
> >>
> >> - in some regular thread context that isn't liable to have issues
> >> synchronising against other async_func workers (i.e. the request_module
> >> case). Again, deferred can't have a problem here, or it wouldn't have
> >> worked properly in general for the last decade.
> >>
> >> So it's not that we'd be relying on some dubious "deferred is always
> >> synchronous" assumption - AFAICS deferred *can* launch async if the
> >> driver permits it - more just ratifying that deferred is still able to
> >> effectively honour all the useful properties of PROBE_FORCE_SYNCHRONOUS
> >> other than "during registration of the thing".
> >
> > Yes, and as mentioned above, EPROBE_DEFER has always been a valid path for
> > PROBE_FORCE_SYNCHRONOUS, which is why I brought it up as a a workaround in the
> > first place.
> >
> > (The reason why I still say "workaround" is because nothing actually needs to be
> > deferred.)
> >
> > Anyways, as I mentioned...
> >
> >>> On the other hand, eventually we want everything to work with
> >>> PROBE_PREFER_ASYNCHRONOUS, so maybe it's also good enough for the time being.
> >
> > ...plus there are not a lot of PROBE_FORCE_SYNCHRONOUS left anyways.
> >
> > Do you want to send a patch?
>
> Sure, I just wanted to check that you didn't see anything obviously
> wrong with my reasoning-by-inspection - if you're sufficiently happy
> then I'll write this up as a proper commit message and post the patch
> (likely on Monday now) so we can all nit-pick the details :)
>
I believe the issue lies in the r8169 module, which currently has the
PHY address hardcoded to zero in mdiobus_get_phy. I have modified the
implementation to scan the MDIO bus for all possible addresses to improve
hardware compatibility.

Can you check this at your end.

----->8-----
$ git diff drivers/net/ethernet/realtek/r8169_main.c
diff --git a/drivers/net/ethernet/realtek/r8169_main.c
b/drivers/net/ethernet/realtek/r8169_main.c
index 58788d196c57..fa99e33eccfe 100644
--- a/drivers/net/ethernet/realtek/r8169_main.c
+++ b/drivers/net/ethernet/realtek/r8169_main.c
@@ -5420,7 +5420,8 @@ static int r8169_mdio_register(struct rtl8169_private *tp)
 {
        struct pci_dev *pdev = tp->pci_dev;
        struct mii_bus *new_bus;
-       int ret;
+       struct phy_device *phydev;
+       int ret, addr;

        /* On some boards with this chip version the BIOS is buggy and misses
         * to reset the PHY page selector. This results in the PHY ID read
@@ -5455,18 +5456,30 @@ static int r8169_mdio_register(struct
rtl8169_private *tp)
        if (ret)
                return ret;

-       tp->phydev = mdiobus_get_phy(new_bus, 0);
-       if (!tp->phydev) {
+       /* find the first (lowest address) PHY on the current MAC's MII bus */
+       for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
+               struct phy_device *tmp = mdiobus_get_phy(new_bus, addr);
+               if (tmp) {
+                       phydev = tmp;
+                       break;
+               }
+       }
+
+       if (!phydev) {
+               dev_err(&pdev->dev, "no PHY found on bus\n");
                return -ENODEV;
-       } else if (!tp->phydev->drv) {
-               /* Most chip versions fail with the genphy driver.
-                * Therefore ensure that the dedicated PHY driver is loaded.
-                */
+       }
+
+       /* Most chip versions fail with the genphy driver.
+        * Therefore ensure that the dedicated PHY driver is loaded.
+        */
+       if (!phydev->drv || phy_driver_is_genphy(phydev)) {
                dev_err(&pdev->dev, "no dedicated PHY driver found for
PHY ID 0x%08x, maybe realtek.ko needs to be added to initramfs?\n",
                        tp->phydev->phy_id);
                return -EUNATCH;
        }

+       tp->phydev = phydev;
        tp->phydev->mac_managed_pm = true;
        if (rtl_supports_eee(tp))
                phy_support_eee(tp->phydev);

> Cheers,
> Robin.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
