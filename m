From: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: RE: [PATCH v5 7/7] misc: pci_endpoint_test: Add Device ID for RZ/G2E
 PCIe controller
Date: Tue, 17 Mar 2020 10:36:12 +0000
Message-ID: <OSBPR01MB3590DA5CDC8DF1B618B0AA34AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB45441E4766FD57506A5B9F98D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <TYAPR01MB45441E4766FD57506A5B9F98D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrew Murray <andrew.murray@arm.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg
List-Id: linux-rockchip.vger.kernel.org

Hi Yoshihiro,

Thank you for the review.

> -----Original Message-----
> From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Sent: 17 March 2020 10:32
> To: Lad Prabhakar <prabhakar.csengg@gmail.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-renesas-soc@vger.kernel.org;
> linux-rockchip@lists.infradead.org; linux-kernel@vger.kernel.org;
> devicetree@vger.kernel.org; Prabhakar Mahadev Lad <prabhakar.mahadev-
> lad.rj@bp.renesas.com>; Bjorn Helgaas <bhelgaas@google.com>; Rob
> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>;
> Catalin Marinas <catalin.marinas@arm.com>; Will Deacon <will@kernel.org>;
> Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>; Greg
> Kroah-Hartman <gregkh@linuxfoundation.org>; Jingoo Han
> <jingoohan1@gmail.com>; Gustavo Pimentel
> <gustavo.pimentel@synopsys.com>; Marek Vasut
> <marek.vasut+renesas@gmail.com>; Shawn Lin <shawn.lin@rock-
> chips.com>; Heiko Stuebner <heiko@sntech.de>
> Subject: RE: [PATCH v5 7/7] misc: pci_endpoint_test: Add Device ID for
> RZ/G2E PCIe controller
>
> Hi Prabhakar-san,
>
> Thank you for the patch!
>
> > From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
> >
> > Add RZ/G2E in pci_device_id table so that pci-epf-test can be used for
> > testing PCIe EP in RZ/G2E.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> lad.rj@bp.renesas.com>
> > ---
> >  drivers/misc/pci_endpoint_test.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/misc/pci_endpoint_test.c
> > b/drivers/misc/pci_endpoint_test.c
> > index a5e3170..3c84e9a 100644
> > --- a/drivers/misc/pci_endpoint_test.c
> > +++ b/drivers/misc/pci_endpoint_test.c
> > @@ -66,6 +66,8 @@
> >
> >  #define PCI_DEVICE_ID_TI_AM6540xb00c
> >
> > +#define PCI_DEVICE_ID_RENESAS_RZG2E0x002d
>
> This define should be in include/linux/pci_ids.h, and adding the define
> should be separated.
> Also, I think "R8A774C0" is better than "RZG2E".
>
Agreed will add it under PCI_VENDOR_ID_RENESAS.

Cheers,
--Prabhakar

> Best regards,
> Yoshihiro Shimoda
>
> >  #define is_am654_pci_dev(pdev)\
> >  ((pdev)->device =3D=3D PCI_DEVICE_ID_TI_AM654)
> >
> > @@ -797,6 +799,7 @@ static const struct pci_device_id
> pci_endpoint_test_tbl[] =3D {
> >  { PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
> >    .driver_data =3D (kernel_ulong_t)&am654_data
> >  },
> > +{ PCI_DEVICE(PCI_VENDOR_ID_RENESAS,
> PCI_DEVICE_ID_RENESAS_RZG2E) },
> >  { }
> >  };
> >  MODULE_DEVICE_TABLE(pci, pci_endpoint_test_tbl);
> > --
> > 2.7.4



Renesas Electronics Europe GmbH, Geschaeftsfuehrer/President: Carsten Jauch=
, Sitz der Gesellschaft/Registered office: Duesseldorf, Arcadiastrasse 10, =
40472 Duesseldorf, Germany, Handelsregister/Commercial Register: Duesseldor=
f, HRB 3708 USt-IDNr./Tax identification no.: DE 119353406 WEEE-Reg.-Nr./WE=
EE reg. no.: DE 14978647
