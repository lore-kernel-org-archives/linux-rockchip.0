From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v5 3/7] PCI: rcar: Fix calculating mask for PCIEPAMR
 register
Date: Tue, 17 Mar 2020 07:31:24 +0000
Message-ID: <TYAPR01MB454464006DE4D6547EB19443D8F60@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200228154122.14164-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200228154122.14164-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Language: ja-JP
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrew Murray <andrew.murray@arm.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenz>
List-Id: linux-rockchip.vger.kernel.org

Hi Prabhakar-san,

Thank you for the patch!

> From: Lad Prabhakar, Sent: Saturday, February 29, 2020 12:41 AM
>=20
> The mask value was calculated incorrectly for PCIEPAMR register if the
> size was less than 128 bytes. Fix this issue by adding a check on size.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pci/controller/pcie-rcar.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/=
pcie-rcar.c
> index 41275f9..90d47b21 100644
> --- a/drivers/pci/controller/pcie-rcar.c
> +++ b/drivers/pci/controller/pcie-rcar.c
> @@ -75,7 +75,10 @@ void rcar_pcie_set_outbound(int win, void __iomem *bas=
e,
>  	 * keeps things pretty simple.
>  	 */
>  	size =3D resource_size(res);
> -	mask =3D (roundup_pow_of_two(size) / SZ_128) - 1;
> +	if (size > 128)
> +		mask =3D (roundup_pow_of_two(size) / SZ_128) - 1;
> +	else
> +		mask =3D 0x0;
>  	rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));

This patch seems OK. I think rebasing is needed though. Anyway,

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda

>  	if (res->flags & IORESOURCE_IO)
> --
> 2.7.4
