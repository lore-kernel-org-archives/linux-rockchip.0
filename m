From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Date: Wed, 8 Apr 2020 18:53:24 -0500
Message-ID: <20200408235324.GA153524@google.com>
References: <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-pci-owner@vger.kernel.org
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>, linux-rockchip@lists.infradead.org, Lad Prabhakar <pr>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 08, 2020 at 04:37:59PM +0100, Lad Prabhakar wrote:
> Add R8A774C0 device ID so that this can be used by
> pci_endpoint_test driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  include/linux/pci_ids.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> index 1dfc4e1dcb94..9e957c18abeb 100644
> --- a/include/linux/pci_ids.h
> +++ b/include/linux/pci_ids.h
> @@ -2460,6 +2460,7 @@
>  #define PCI_DEVICE_ID_RENESAS_SH7763	0x0004
>  #define PCI_DEVICE_ID_RENESAS_SH7785	0x0007
>  #define PCI_DEVICE_ID_RENESAS_SH7786	0x0010
> +#define PCI_DEVICE_ID_RENESAS_R8A774C0	0x002d

We don't add device IDs here anymore unless they're used in more than
one place (see the comment at the top of the file).  This series
doesn't use it at all, so please move this patch to the series that
adds multiple uses of this ID.

>  #define PCI_VENDOR_ID_SOLARFLARE	0x1924
>  #define PCI_DEVICE_ID_SOLARFLARE_SFC4000A_0	0x0703
> -- 
> 2.20.1
> 
