From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_PCI=3a_rockchip=3a_Properly_handle_opti?=
 =?UTF-8?B?b25hbCByZWd1bGF0b3Jz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9j?=
 =?UTF-8?Q?kchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfradead?=
 =?UTF-8?B?Lm9yZ+S7o+WPkeOAkQ==?=
Date: Thu, 29 Aug 2019 10:31:03 +0800
Message-ID: <c435244d-34e5-3ab8-d4df-5e08e7951e6f@rock-chips.com>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190828150737.30285-1-thierry.reding@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, Vidya Sagar <vidyas@nvidia.com>, linux-rockchip@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2019/8/28 23:07, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> regulator_get_optional() can fail for a number of reasons besides probe
> deferral. It can for example return -ENOMEM if it runs out of memory as
> it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> problematic because it results in these legitimately fatal errors being
> treated as "regulator not specified in DT".
> 
> What we really want is to ignore the optional regulators only if they
> have not been specified in DT. regulator_get_optional() returns -ENODEV
> in this case, so that's the special case that we need to handle. So we
> propagate all errors, except -ENODEV, so that real failures will still
> cause the driver to fail probe.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>

LGTM,
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

> ---
>   drivers/pci/controller/pcie-rockchip-host.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 8d20f1793a61..ef8e677ce9d1 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>   
>   	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
>   	if (IS_ERR(rockchip->vpcie12v)) {
> -		if (PTR_ERR(rockchip->vpcie12v) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie12v);
>   		dev_info(dev, "no vpcie12v regulator found\n");
>   	}
>   
>   	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
>   	if (IS_ERR(rockchip->vpcie3v3)) {
> -		if (PTR_ERR(rockchip->vpcie3v3) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie3v3);
>   		dev_info(dev, "no vpcie3v3 regulator found\n");
>   	}
>   
>   	rockchip->vpcie1v8 = devm_regulator_get_optional(dev, "vpcie1v8");
>   	if (IS_ERR(rockchip->vpcie1v8)) {
> -		if (PTR_ERR(rockchip->vpcie1v8) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie1v8) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie1v8);
>   		dev_info(dev, "no vpcie1v8 regulator found\n");
>   	}
>   
>   	rockchip->vpcie0v9 = devm_regulator_get_optional(dev, "vpcie0v9");
>   	if (IS_ERR(rockchip->vpcie0v9)) {
> -		if (PTR_ERR(rockchip->vpcie0v9) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie0v9) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie0v9);
>   		dev_info(dev, "no vpcie0v9 regulator found\n");
>   	}
>   
> 
