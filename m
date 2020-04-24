From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v9 4/8] PCI: endpoint: Pass page size as argument to
 pci_epc_mem_init()
Date: Fri, 24 Apr 2020 05:59:19 +0000
Message-ID: <TYAPR01MB4544F40FDAFF814BCDAD8FEBD8D00@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587666159-6035-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <1587666159-6035-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: ja-JP
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>, Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

> From: Lad Prabhakar, Sent: Friday, April 24, 2020 3:23 AM
>=20
> pci_epc_mem_init() internally used page size equal to *PAGE_SIZE* to
> manage the address space so instead just pass the page size as a
> argument to pci_epc_mem_init().
>=20
> Also make pci_epc_mem_init() as a C function instead of a macro function
> in preparation for adding support for pci-epc-mem core to handle multiple
> windows.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda
