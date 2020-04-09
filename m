From: "Lad, Prabhakar" <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Date: Thu, 9 Apr 2020 11:04:52 +0100
Message-ID: <CA+V-a8s1E_kq_GENBTw3zGxKSPFnVKNY-ta9+c8W8nV4JFyEEw@mail.gmail.com>
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com> <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e3f5fa77-f78e-edbf-9efc-53b5ea620460-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Sergei Shtylyov <sergei.shtylyov-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Murray <amurray-tUaQ5FxYRYX4aQPF92CzsNBc4/FLrbF6@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, linux-pci <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LAK <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XcXa4x6EXUF0@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Sergei and Bjorn,

On Thu, Apr 9, 2020 at 10:36 AM Sergei Shtylyov
<sergei.shtylyov-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org> wrote:
>
> Hello!
>
> On 08.04.2020 18:37, Lad Prabhakar wrote:
>
> > Add R8A774C0 device ID so that this can be used by
> > pci_endpoint_test driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
> > Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
> > ---
> >   include/linux/pci_ids.h | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> > index 1dfc4e1dcb94..9e957c18abeb 100644
> > --- a/include/linux/pci_ids.h
> > +++ b/include/linux/pci_ids.h
> > @@ -2460,6 +2460,7 @@
> >   #define PCI_DEVICE_ID_RENESAS_SH7763        0x0004
> >   #define PCI_DEVICE_ID_RENESAS_SH7785        0x0007
> >   #define PCI_DEVICE_ID_RENESAS_SH7786        0x0010
> > +#define PCI_DEVICE_ID_RENESAS_R8A774C0       0x002d
>
>     We don't add the device IDs in this file, unless used in several places.
> Is it?
>
My bad I should have checked it before making this change actually it
was suggested in my previous version of the series but anyway atm this
was planned to be  used only in pci_endpoint_test driver, so in that
case Ill drop this patch.

Cheers,
--Prabhakar

> [...]
>
> MBR, Sergei
