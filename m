From: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v5 2/7] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Date: Wed, 29 Apr 2020 19:04:28 +0200
Message-ID: <20200429190428.33ca0523@xps13>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
        <20200426100250.14678-3-yifeng.zhao@rock-chips.com>
        <4dbe907c-a6c2-a163-0cab-234b08336b5c@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4dbe907c-a6c2-a163-0cab-234b08336b5c-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote on Wed, 29 Apr 2020 17:55:56
+0200:

> Hi Yifeng,
> 
> A few more comments below for now (part 2).
> 
> On 4/26/20 12:02 PM, Yifeng Zhao wrote:
> 
> [..]
> 
> > +#define	THIS_NAME		"rk-nand"  
> 
> > +static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
> > +				 struct device_node *np)
> > +{
> > +	struct rk_nfc_nand_chip *nand;
> > +	struct nand_chip *chip;
> > +	struct mtd_info *mtd;
> > +	int nsels;
> > +	u32 tmp;
> > +	int ret;
> > +	int i;
> > +
> > +	if (!of_get_property(np, "reg", &nsels))
> > +		return -ENODEV;
> > +	nsels /= sizeof(u32);
> > +	if (!nsels || nsels > NFC_MAX_NSELS) {
> > +		dev_err(dev, "invalid reg property size %d\n", nsels);
> > +		return -EINVAL;
> > +	}
> > +
> > +	nand = devm_kzalloc(dev, sizeof(*nand) + nsels * sizeof(u8),
> > +			    GFP_KERNEL);
> > +	if (!nand)
> > +		return -ENOMEM;
> > +
> > +	nand->nsels = nsels;
> > +	for (i = 0; i < nsels; i++) {
> > +		ret = of_property_read_u32_index(np, "reg", i, &tmp);
> > +		if (ret) {
> > +			dev_err(dev, "reg property failure : %d\n", ret);
> > +			return ret;
> > +		}
> > +
> > +		if (tmp >= NFC_MAX_NSELS) {
> > +			dev_err(dev, "invalid CS: %u\n", tmp);
> > +			return -EINVAL;
> > +		}
> > +
> > +		if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
> > +			dev_err(dev, "CS %u already assigned\n", tmp);
> > +			return -EINVAL;
> > +		}
> > +
> > +		nand->sels[i] = tmp;
> > +	}
> > +
> > +	chip = &nand->chip;
> > +	chip->controller = &nfc->controller;
> > +
> > +	nand_set_flash_node(chip, np);
> > +	nand_set_controller_data(chip, nfc);
> > +
> > +	chip->options |= NAND_USE_BOUNCE_BUFFER | NAND_NO_SUBPAGE_WRITE;
> > +	chip->bbt_options = NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
> > +
> > +	/* set default mode in case dt entry is missing */
> > +	chip->ecc.mode = NAND_ECC_HW;
> > +
> > +	mtd = nand_to_mtd(chip);
> > +	mtd->owner = THIS_MODULE;
> > +	mtd->dev.parent = dev;  
> 
> > +	mtd->name = THIS_NAME;  
> 
> The 'mtd->name' shows up somewhere in file tree.

Good catch.

> The rk3288 has 2 nfc's. In theory 2 probes and also 2 device names, so I
> think that we shouldn't use a fixed define for 'mtd->name'.
> Maybe use something like this:

Yifeng, please use the NAND chip "label" DT property, which is parsed
by the core automatically and will give you meaningful names for every
chip:

nand_set_flash_node(chip, np);
if (!mtd->name) {
	dev_err(nfc->dev, "NAND label property is mandatory\n");
	return -EINVAL;
}


Thanks,
Miquèl
