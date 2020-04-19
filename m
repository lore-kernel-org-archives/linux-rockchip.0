From: "Lad, Prabhakar" <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v8 8/8] MAINTAINERS: Add file patterns for rcar PCI device
 tree bindings
Date: Sun, 19 Apr 2020 20:10:22 +0100
Message-ID: <CA+V-a8uADgccR7sr_Jc0t6gcwGSX5aOANF4NZeNY6ZoSaJJ4Xg@mail.gmail.com>
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com> <975f3a73bb272b8276687af609cd7e592d6ba9ac.camel@perches.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <975f3a73bb272b8276687af609cd7e592d6ba9ac.camel-6d6DIl74uiNBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Joe Perches <joe-6d6DIl74uiNBDgjK7y7TUQ@public.gmane.org>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Andrew Murray <amurray-tUaQ5FxYRYX4aQPF92CzsNBc4/FLrbF6@public.gmane.org>, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, linux-pci <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Joe,

On Sun, Apr 19, 2020 at 5:38 PM Joe Perches <joe-6d6DIl74uiNBDgjK7y7TUQ@public.gmane.org> wrote:
>
> On Sun, 2020-04-19 at 14:27 +0100, Lad Prabhakar wrote:
> > Add file pattern entry for rcar PCI devicetree binding, so that when
> > people run ./scripts/get_maintainer.pl the rcar PCI maintainers could also
> > be listed.
> []
> > diff --git a/MAINTAINERS b/MAINTAINERS
> []
> > @@ -12933,6 +12933,7 @@ L:    linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> >  L:   linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> >  S:   Maintained
> >  F:   drivers/pci/controller/*rcar*
> > +F:   Documentation/devicetree/bindings/pci/*rcar*
>
> MAINTAINERS was recently sorted for consistency.
>
> Please move this new line above drivers/ to keep alphabetic ordering.
>
Sure I will rebase this patch on -next and post this patch independently.

Cheers,
--Prabhakar
