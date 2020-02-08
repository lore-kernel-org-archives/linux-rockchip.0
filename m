From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR register
Date: Sat, 8 Feb 2020 19:16:44 +0000
Message-ID: <CA+V-a8skgpMqCRhVERiiEECyb30s8eGvaC+oY=F21oXZ7DJ-Vg@mail.gmail.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <374e26ca-cd3d-fd12-edad-5f24622b9d3d@cogentembedded.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <374e26ca-cd3d-fd12-edad-5f24622b9d3d@cogentembedded.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Andrew Murray <andrew.murray@arm.com>, linux-pci <linux-pci@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Linux-Renesas <linux-rene>
List-Id: linux-rockchip.vger.kernel.org

Hi Sergei,

Thank you for the review.

On Sat, Feb 8, 2020 at 7:07 PM Sergei Shtylyov
<sergei.shtylyov@cogentembedded.com> wrote:
>
> Hello!
>
> On 02/08/2020 09:36 PM, Lad Prabhakar wrote:
>
> > The mask value was calculated incorrectly for PCIEPAMR register if the
> > size was less the 128bytes, this patch fixes the above by adding a check
>
>    Less than, perhaps?
>
Oops shall fix that.

Cheers,
--Prabhakar Lad

> > on size.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> [...]
>
> MBR, Sergei
