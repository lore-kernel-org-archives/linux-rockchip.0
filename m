From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v5 5/7] dt-bindings: PCI: rcar: Add bindings for R-Car
 PCIe endpoint controller
Date: Tue, 17 Mar 2020 11:11:28 +0000
Message-ID: <TYAPR01MB454402897EA1C1334A7EF5C9D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454466B8451E3115D8A7DFB7D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <OSBPR01MB3590F13134F6E9BD106EC506AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <OSBPR01MB3590F13134F6E9BD106EC506AAF60@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Content-Language: ja-JP
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrew Murray <andrew.murray@arm.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

> From: Prabhakar Mahadev Lad, Sent: Tuesday, March 17, 2020 7:18 PM
<snip>
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-
> > lad.rj@bp.renesas.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> >
> Thank you for the review. Shall I add this file under "PCI DRIVER FOR REN=
ESAS R-CAR"
> In MAINTAINERS file as a separate patch ?

That's a nice idea! I think we should add the following like for dt-binding=
:

F:	Documentation/devicetree/bindings/pci/*rcar*

Best regards,
Yoshihiro Shimoda

> Cheers,
> --Prabhakar
>=20
> > Best regards,
> > Yoshihiro Shimoda
