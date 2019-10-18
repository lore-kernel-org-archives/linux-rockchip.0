From: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 02/25] PCI: Export pci_parse_request_of_pci_ranges()
Date: Fri, 18 Oct 2019 13:06:07 +0100
Message-ID: <20191018120607.GD47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-3-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-3-robh@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org, Tom Joseph <tjos>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 16, 2019 at 03:06:24PM -0500, Rob Herring wrote:
> pci_parse_request_of_pci_ranges() is missing a module export, so add it.
> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch
> 
>  drivers/pci/of.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 36891e7deee3..f3da49a31db4 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -530,6 +530,7 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
>  	pci_free_resource_list(resources);
>  	return err;
>  }
> +EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);
> 

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  #endif /* CONFIG_PCI */
> 
> --
> 2.20.1
