From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] PCI: rockchip: fix uninitialized variable use
Date: Fri, 23 Sep 2016 08:15:05 +0800
Message-ID: <440300d4-1d96-4f38-870b-c026b8fb5b2c@rock-chips.com>
References: <20160922094018.2138640-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160922094018.2138640-1-arnd@arndb.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>, Bjorn Helgaas <bhelgaas@google.com>
Cc: shawn.lin@rock-chips.com, Wenrui Li <wenrui.li@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd,

ÔÚ 2016/9/22 17:39, Arnd Bergmann Ð´µÀ:
> The newly added pcie-rockchip driver fails to initialize the
> io_size variable if the DT doesn't provide ranges for the PCI
> I/O space, as found by building it with -Wmaybe-uninitialized:
>
> drivers/pci/host/pcie-rockchip.c: In function 'rockchip_pcie_probe':
> drivers/pci/host/pcie-rockchip.c:1007:6: warning: 'io_size' may be used uninitialized in this function [-Wmaybe-uninitialized]
>

Seems like we miss this when refactoring the code a bit.
Thanks for fixing it.

Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

> This adds an appropriate initialization immediately in front of
> the loop, so the io_size is zero as expected afterwards for that
> case.
>
> Fixes: abe17181b16f ("PCI: rockchip: Add Rockchip PCIe controller support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/pci/host/pcie-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
> index c3593e633ccd..8bedc1e1ef80 100644
> --- a/drivers/pci/host/pcie-rockchip.c
> +++ b/drivers/pci/host/pcie-rockchip.c
> @@ -1078,6 +1078,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  		goto err_vpcie;
>
>  	/* Get the I/O and memory ranges from DT */
> +	io_size = 0;
>  	resource_list_for_each_entry(win, &res) {
>  		switch (resource_type(win->res)) {
>  		case IORESOURCE_IO:
>


-- 
Best Regards
Shawn Lin
