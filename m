From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
Date: Mon, 20 Jan 2020 08:55:26 +0800
Message-ID: <9458895c-9e1a-ad97-ba5d-e1c4e56dad2b@rock-chips.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
 <0975b4e4-4bee-3f8e-5276-2bc78e6dabc0@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <0975b4e4-4bee-3f8e-5276-2bc78e6dabc0-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Francesco Lavra <francescolavra.fl-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


On 2020/1/19 0:36, Francesco Lavra wrote:
> On 1/14/20 8:25 AM, Shawn Lin wrote:
>> +static int rockchip_pcie_reset_control_release(struct rockchip_pcie 
>> *rockchip)
>> +{
>> +    struct device *dev = rockchip->pci->dev;
>> +    struct property *prop;
>> +    const char *name;
>> +    int ret, count, i = 0;
>> +
>> +    count = of_property_count_strings(dev->of_node, "reset-names");
>> +    if (count < 1)
>> +        return -ENODEV;
>> +
>> +    rockchip->rsts = devm_kcalloc(dev, count,
>> +                     sizeof(struct reset_bulk_data),
>> +                     GFP_KERNEL);
>> +    if (!rockchip->rsts)
>> +        return -ENOMEM;
>> +
>> +    of_property_for_each_string(dev->of_node, "reset-names",
>> +                    prop, name) {
>> +        rockchip->rsts[i].id = name;
>> +        if (!rockchip->rsts[i].id)
>> +            return -ENOMEM;
>> +        i++;
>> +    }
>> +
>> +    for (i = 0; i < count; i++) {
>> +        rockchip->rsts[i].rst = devm_reset_control_get_exclusive(dev,
>> +                        rockchip->rsts[i].id);
>> +        if (IS_ERR_OR_NULL(rockchip->rsts[i].rst)) {
>> +            dev_err(dev, "failed to get %s\n",
>> +                rockchip->clks[i].id);
>> +            return -PTR_ERR(rockchip->rsts[i].rst);
> 
> IS_ERR_OR_NULL() should be replaced with IS_ERR(), because 
> devm_reset_control_get_exclusive() never returns a NULL value.
> Also, in case of error you should return the value from PTR_ERR(), 
> without the minus sign.

Thanks, Francesco. Will fix in v2.

> 
> 
