From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 1/6] pci: pcie-rcar: preparation for adding endpoint support
Date: Mon, 16 Dec 2019 07:52:20 +0000
Message-ID: <CA+V-a8u7RO1L1ExPXwHuSpKrCA47iRPFySUn1royEGoOxy0=2A@mail.gmail.com>
References: <20191213084748.11210-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <20191213185011.GA170447@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191213185011.GA170447@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

On Fri, Dec 13, 2019 at 9:06 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:43AM +0000, Lad Prabhakar wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > this patch prepares for adding endpoint support to rcar controller,
> > there are no functional changes with this patch, a common file is
> > created so that it can be shared with endpoint driver. Alongside
> > this patch fixes checkpatch reported issues.
>
> Can you please split this into:
>
>   - a patch that moves code only, with no other changes except any
>     necessary Kconfig and Makefile changes
>   - another patch that fixes the checkpatch things
>
> When the checkpatch fixes are buried in the code move, it's impossible
> to review them.
>
thank you for the review.sure I'll split up the patches and resend.

Cheers,
--Prabhakar

> > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  arch/arm64/configs/defconfig            |    2 +-
> >  drivers/pci/controller/Kconfig          |    4 +-
> >  drivers/pci/controller/Makefile         |    2 +-
> >  drivers/pci/controller/pcie-rcar-host.c | 1056 ++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.c      | 1229 ++-----------------------------
> >  drivers/pci/controller/pcie-rcar.h      |  129 ++++
> >  6 files changed, 1242 insertions(+), 1180 deletions(-)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
> >  create mode 100644 drivers/pci/controller/pcie-rcar.h
