From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Date: Fri, 3 Apr 2020 10:28:13 +0200
Message-ID: <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com> <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Frank Rowand <frowand.list@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Simon Horman <horm>
List-Id: linux-rockchip.vger.kernel.org

Hi Shimoda-san,

On Fri, Apr 3, 2020 at 10:03 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> > From: Lad Prabhakar, Sent: Friday, April 3, 2020 4:39 AM
> >
> > config option PCIE_RCAR internally selects PCIE_RCAR_HOST which builds the
> > same driver. So this patch renames CONFIG_PCIE_RCAR to
> > CONFIG_PCIE_RCAR_HOST so that PCIE_RCAR can be safely dropped from Kconfig
> > file.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thank you for the patch!
>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>
> But, I'm thinking this patch (and patch 03/11) should be separated
> from this patch series for arm64 subsystem to ease maintenance.
> My scenario is:
>  1) patch series 1: R-Car PCIe endpoint support.
>  -- This means: patch 1, 4 - 9, 11
>
>  2) After the patch series 1 is merged, submit this patch 2/11 to arm subsystem
>    and submit the patch 10/11 to misc subsystem.
>
>  3) At last, submit patch 3/11 after the patch 2/11 is merged.
>
> Geert-san, what do you think?

Thanks, I agree with your summary.

I can take patch 2/11 through renesas-devel.
Probably it's best if I submit it to arm-soc as a fix for v5.8, after
the driver part
has been merged into v5.8-rc1, so 3/11 can be submitted for v5.9.

BTW, I'm wondering about "[PATCH v6 05/11] PCI: rcar: Fix calculating
mask for PCIEPAMR register". Can the issue fixed by this patch happen with
the current driver in host mode, or is that limited to ep mode?
In case of the former, please submit it to the PCI maintainer as a separate
fix.

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
