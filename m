From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Date: Thu, 16 Jan 2020 08:14:55 +0800
Message-ID: <2facd747-2b42-c500-9c04-7fd06471415a@rock-chips.com>
References: <20200115172430.GA180494@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200115172430.GA180494-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


On 2020/1/16 1:24, Bjorn Helgaas wrote:
> Follow subject line convention.
> 
> On Tue, Jan 14, 2020 at 03:25:01PM +0800, Shawn Lin wrote:
>> From: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> Needs a commit log.  Please describe the relationship with the
> existing drivers/pci/controller/pcie-rockchip-host.c.  Are they for
> different devices?  Does this supercede the other?

Yes, this PCIe controller is based on dwc IP, however pcie-rockchip* in
drivers/pcie/controller is another IP. They are two different
controllers totally. pcie-rockchip-host is end-of-life due to some
defects, so AFAICT, it's *only* for RK3399 SoC. All the other follow-up
SoCs should use this controller.

> 
>> Signed-off-by: Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> ---
>>
>>   drivers/pci/controller/dwc/Kconfig            |   9 +
>>   drivers/pci/controller/dwc/Makefile           |   1 +
>>   drivers/pci/controller/dwc/pcie-dw-rockchip.c | 441 ++++++++++++++++++++++++++
>>   3 files changed, 451 insertions(+)
>>   create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
>>
>> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
>> index 0830dfc..9160264 100644
>> --- a/drivers/pci/controller/dwc/Kconfig
>> +++ b/drivers/pci/controller/dwc/Kconfig
>> @@ -82,6 +82,15 @@ config PCIE_DW_PLAT_EP
>>   	  order to enable device-specific features PCI_DW_PLAT_EP must be
>>   	  selected.
>>   
>> +config PCIE_DW_ROCKCHIP
>> +	bool "Rockchip DesignWare PCIe controller"
>> +	select PCIE_DW
>> +	select PCIE_DW_HOST
>> +	depends on ARCH_ROCKCHIP
>> +	depends on OF
>> +	help
>> +	  Enables support for the DW PCIe controller in the Rockchip SoC.
> 
> A user needs to be able to tell whether to enable
> CONFIG_PCIE_ROCKCHIP_HOST or CONFIG_PCIE_DW_ROCKCHIP.  Is there an
> endpoint driver coming?  Should this be named PCIE_DW_ROCKCHIP_HOST?

Will add a description to tell users CONFIG_PCIE_ROCKCHIP_HOST is only
for RK3399, so all other Rockchip platforms should use
CONFIG_PCIE_DW_ROCKCHIP.

There is no plan to develop endponit driver recently, but
PCIE_DW_ROCKCHIP_HOST looks sane.


> 
>> +	ret = rockchip_pcie_reset_grant_ctrl(rockchip, true);
>> +	if (ret)
>> +		goto deinit_clk;
>> +
>> +//	if (rockchip->mode == DW_PCIE_RC_TYPE)
>> +//		ret = rk_add_pcie_port(rockchip);
> 
> Remove commented-out code.  I do like an "if" statement better than
> the complicated assignment/ternary thing below, though.
> 

My bad. Will fix it in V2.

>> +	ret = rockchip->mode == DW_PCIE_RC_TYPE ?
>> +		rk_add_pcie_port(rockchip) : -EINVAL;
>> +
>> +	if (ret)
>> +		goto deinit_clk;
> 
> 
