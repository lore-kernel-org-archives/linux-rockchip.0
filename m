From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Date: Tue, 17 Mar 2020 10:18:10 +0000
Message-ID: <OSBPR01MB3590F13134F6E9BD106EC506AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454466B8451E3115D8A7DFB7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <TYAPR01MB454466B8451E3115D8A7DFB7D8F60-0qPFe2CvyVQpBNo+t84M2ncolHNk5qUtvxpqHgZTriW3zl9H0oFU5g@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Lad Prabhakar <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, "linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Arnd
List-Id: linux-rockchip.vger.kernel.org

Hi Yoshihiro-san,

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
> Sent: 17 March 2020 08:26
> To: Lad Prabhakar <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Cc: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>; linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org;
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org; linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org;
> linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org; linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org;
> devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; Prabhakar Mahadev Lad <prabhakar.mahadev-
> lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>; Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>; Bjorn Helgaas
> <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>; Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>; Mark Rutland
> <mark.rutland-5wv7dgnIgG8@public.gmane.org>; Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>; Will
> Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>; Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>;
> Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>; Arnd Bergmann
> <arnd-r2nGTMty4D4@public.gmane.org>; Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>;
> Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; Gustavo Pimentel
> <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>; Marek Vasut
> <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Ca=
r PCIe
> endpoint controller
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> >
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
> > Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>
>
Thank you for the review. Shall I add this file under "PCI DRIVER FOR RENES=
AS R-CAR"
In MAINTAINERS file as a separate patch ?

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch=
, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, =
40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldor=
f, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WE=
EE reg. no.: DE 14978647
