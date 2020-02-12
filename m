From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v4 1/6] PCI: rcar: Preparation for adding endpoint support
Date: Wed, 12 Feb 2020 08:01:28 -0600
Message-ID: <20200212140127.GA127398@google.com>
References: <20200208183641.6674-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200208183641.6674-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-pci-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger
List-Id: linux-rockchip.vger.kernel.org

To make the changelog from "git log --oneline" read nicely, the
subject should begin with a verb, e.g.,

  PCI: rcar: Move shareable code to a common file

On Sat, Feb 08, 2020 at 06:36:36PM +0000, Lad Prabhakar wrote:
> Prepare for adding endpoint support to rcar controller, there are no
> functional changes with this patch, a common file is created so that
> it can be shared with endpoint driver.

This commit log doesn't tell us what this patch does.  "Prepare"
conveys no real information.  It's a giant patch and it's difficult
to verify that there's no functional change.

I *think* what you did was move most of the #defines from pcie-rcar.c
to pcie-rcar.h and most of the code from pcie-rcar.c to
pcie-rcar-host.c.  And in both case, these were strict *moves* without
any changes.  If that's the case, please say that explicitly in the
commit log.

That's good; thanks for making this a separate patch so it's not
mingled with real changes.

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/arm64/configs/defconfig            |    2 +-
>  drivers/pci/controller/Kconfig          |    4 +-
>  drivers/pci/controller/Makefile         |    2 +-
>  drivers/pci/controller/pcie-rcar-host.c | 1044 ++++++++++++++++++++++++++
>  drivers/pci/controller/pcie-rcar.c      | 1229 ++-----------------------------
>  drivers/pci/controller/pcie-rcar.h      |  126 ++++
>  6 files changed, 1227 insertions(+), 1180 deletions(-)
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index b2f6673..8a1f51d 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -182,7 +182,7 @@ CONFIG_HOTPLUG_PCI=y
>  CONFIG_HOTPLUG_PCI_ACPI=y
>  CONFIG_PCI_AARDVARK=y
>  CONFIG_PCI_TEGRA=y
> -CONFIG_PCIE_RCAR=y
> +CONFIG_PCIE_RCAR_HOST=y
>  CONFIG_PCI_HOST_GENERIC=y
>  CONFIG_PCI_XGENE=y
>  CONFIG_PCIE_ALTERA=y
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index f84e5ff..94bb5e9 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -54,12 +54,12 @@ config PCI_RCAR_GEN2
>  	  There are 3 internal PCI controllers available with a single
>  	  built-in EHCI/OHCI host controller present on each one.
>  
> -config PCIE_RCAR
> +config PCIE_RCAR_HOST

The config symbol change should be mentioned in the commit log.  In
general we try to avoid changing config symbols because it's likely to
confuse people who keep their .config and update their kernel.  But I
guess your audience is probably pretty small.

>  	bool "Renesas R-Car PCIe controller"

The description needs to be updated, too.  This is what people will
see in menuconfig.

>  	depends on ARCH_RENESAS || COMPILE_TEST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	help
> -	  Say Y here if you want PCIe controller support on R-Car SoCs.
> +	  Say Y here if you want PCIe controller support on R-Car SoCs in host mode.

Wrap this so it fits in 80 columns like the rest of the file.

Bjorn
