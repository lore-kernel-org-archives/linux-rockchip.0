From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Make some regulators non-optional
Date: Wed, 20 Nov 2019 17:05:32 +0000
Message-ID: <20191120170532.GC3279@e121166-lin.cambridge.arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org, bhelgaas@google.com, andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Nov 16, 2019 at 12:54:19PM +0000, Robin Murphy wrote:
> The 0V9 and 1V8 supplies power the PCIe block in the SoC itself, and
> are thus fundamental to PCIe being usable at all. As such, it makes
> sense to treat them as non-optional and rely on dummy regulators if
> not explicitly described.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 69 ++++++++-------------
>  1 file changed, 25 insertions(+), 44 deletions(-)

Applied to pci/rockchip, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index ef8e677ce9d1..68525f8ac4d9 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -620,19 +620,13 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>  		dev_info(dev, "no vpcie3v3 regulator found\n");
>  	}
>  
> -	rockchip->vpcie1v8 = devm_regulator_get_optional(dev, "vpcie1v8");
> -	if (IS_ERR(rockchip->vpcie1v8)) {
> -		if (PTR_ERR(rockchip->vpcie1v8) != -ENODEV)
> -			return PTR_ERR(rockchip->vpcie1v8);
> -		dev_info(dev, "no vpcie1v8 regulator found\n");
> -	}
> +	rockchip->vpcie1v8 = devm_regulator_get(dev, "vpcie1v8");
> +	if (IS_ERR(rockchip->vpcie1v8))
> +		return PTR_ERR(rockchip->vpcie1v8);
>  
> -	rockchip->vpcie0v9 = devm_regulator_get_optional(dev, "vpcie0v9");
> -	if (IS_ERR(rockchip->vpcie0v9)) {
> -		if (PTR_ERR(rockchip->vpcie0v9) != -ENODEV)
> -			return PTR_ERR(rockchip->vpcie0v9);
> -		dev_info(dev, "no vpcie0v9 regulator found\n");
> -	}
> +	rockchip->vpcie0v9 = devm_regulator_get(dev, "vpcie0v9");
> +	if (IS_ERR(rockchip->vpcie0v9))
> +		return PTR_ERR(rockchip->vpcie0v9);
>  
>  	return 0;
>  }
> @@ -658,27 +652,22 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
>  		}
>  	}
>  
> -	if (!IS_ERR(rockchip->vpcie1v8)) {
> -		err = regulator_enable(rockchip->vpcie1v8);
> -		if (err) {
> -			dev_err(dev, "fail to enable vpcie1v8 regulator\n");
> -			goto err_disable_3v3;
> -		}
> +	err = regulator_enable(rockchip->vpcie1v8);
> +	if (err) {
> +		dev_err(dev, "fail to enable vpcie1v8 regulator\n");
> +		goto err_disable_3v3;
>  	}
>  
> -	if (!IS_ERR(rockchip->vpcie0v9)) {
> -		err = regulator_enable(rockchip->vpcie0v9);
> -		if (err) {
> -			dev_err(dev, "fail to enable vpcie0v9 regulator\n");
> -			goto err_disable_1v8;
> -		}
> +	err = regulator_enable(rockchip->vpcie0v9);
> +	if (err) {
> +		dev_err(dev, "fail to enable vpcie0v9 regulator\n");
> +		goto err_disable_1v8;
>  	}
>  
>  	return 0;
>  
>  err_disable_1v8:
> -	if (!IS_ERR(rockchip->vpcie1v8))
> -		regulator_disable(rockchip->vpcie1v8);
> +	regulator_disable(rockchip->vpcie1v8);
>  err_disable_3v3:
>  	if (!IS_ERR(rockchip->vpcie3v3))
>  		regulator_disable(rockchip->vpcie3v3);
> @@ -897,8 +886,7 @@ static int __maybe_unused rockchip_pcie_suspend_noirq(struct device *dev)
>  
>  	rockchip_pcie_disable_clocks(rockchip);
>  
> -	if (!IS_ERR(rockchip->vpcie0v9))
> -		regulator_disable(rockchip->vpcie0v9);
> +	regulator_disable(rockchip->vpcie0v9);
>  
>  	return ret;
>  }
> @@ -908,12 +896,10 @@ static int __maybe_unused rockchip_pcie_resume_noirq(struct device *dev)
>  	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
>  	int err;
>  
> -	if (!IS_ERR(rockchip->vpcie0v9)) {
> -		err = regulator_enable(rockchip->vpcie0v9);
> -		if (err) {
> -			dev_err(dev, "fail to enable vpcie0v9 regulator\n");
> -			return err;
> -		}
> +	err = regulator_enable(rockchip->vpcie0v9);
> +	if (err) {
> +		dev_err(dev, "fail to enable vpcie0v9 regulator\n");
> +		return err;
>  	}
>  
>  	err = rockchip_pcie_enable_clocks(rockchip);
> @@ -939,8 +925,7 @@ static int __maybe_unused rockchip_pcie_resume_noirq(struct device *dev)
>  err_pcie_resume:
>  	rockchip_pcie_disable_clocks(rockchip);
>  err_disable_0v9:
> -	if (!IS_ERR(rockchip->vpcie0v9))
> -		regulator_disable(rockchip->vpcie0v9);
> +	regulator_disable(rockchip->vpcie0v9);
>  	return err;
>  }
>  
> @@ -1081,10 +1066,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  		regulator_disable(rockchip->vpcie12v);
>  	if (!IS_ERR(rockchip->vpcie3v3))
>  		regulator_disable(rockchip->vpcie3v3);
> -	if (!IS_ERR(rockchip->vpcie1v8))
> -		regulator_disable(rockchip->vpcie1v8);
> -	if (!IS_ERR(rockchip->vpcie0v9))
> -		regulator_disable(rockchip->vpcie0v9);
> +	regulator_disable(rockchip->vpcie1v8);
> +	regulator_disable(rockchip->vpcie0v9);
>  err_set_vpcie:
>  	rockchip_pcie_disable_clocks(rockchip);
>  	return err;
> @@ -1108,10 +1091,8 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
>  		regulator_disable(rockchip->vpcie12v);
>  	if (!IS_ERR(rockchip->vpcie3v3))
>  		regulator_disable(rockchip->vpcie3v3);
> -	if (!IS_ERR(rockchip->vpcie1v8))
> -		regulator_disable(rockchip->vpcie1v8);
> -	if (!IS_ERR(rockchip->vpcie0v9))
> -		regulator_disable(rockchip->vpcie0v9);
> +	regulator_disable(rockchip->vpcie1v8);
> +	regulator_disable(rockchip->vpcie0v9);
>  
>  	return 0;
>  }
> -- 
> 2.17.1
> 
