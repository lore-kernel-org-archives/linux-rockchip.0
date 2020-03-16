From: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v3 1/3] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Date: Mon, 16 Mar 2020 11:06:58 +0100
Message-ID: <20200316110658.43aea94a@xps13>
References: <20200303094736.7490-1-yifeng.zhao@rock-chips.com>
        <20200303094736.7490-2-yifeng.zhao@rock-chips.com>
        <20200309121645.1fca069d@xps13>
        <2020031617554207432140@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2020031617554207432140-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: richard <richard-/L3Ra7n9ekc@public.gmane.org>, vigneshr <vigneshr-l0cyMroinI0@public.gmane.org>, robh+dt <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-mtd <linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

赵仪峰 <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote on Mon, 16 Mar 2020 17:59:26
+0800:

> Hi miquel，
> 
> 1.
> >A comment here explaining what the next function does and why would be
> >nice.
> >  
> >> +static void rk_nfc_format_page(struct mtd_info *mtd, const u8 *buf)
> >> +{
> >> +	struct nand_chip *chip = mtd_to_nand(mtd);
> >> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> >> +	u32 i;
> >> +   
> 
> The data layout is different between NFC and nand  driver

you probably mean between the NAND flash controller and whét the NAND
core expects, but ok

> This code is designed with reference to mtk_nand.c
> There is a description of the data layout at the beginning of the file:
>  * NFC Page Data Layout:
>  *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
>  *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
>  *	......
>  * NAND Page Data Layout:
>  *	1024 * n Data + m Bytes oob
>  * Original Bad Block Mask Location:
>  *	first byte of oob(spare)
>  * nand_chip->oob_poi data layout:
>  *	4Bytes sys data + .... + 4Bytes sys data + ecc data
> 
> 2. 
> >> +	dma_reg = DMA_ST | ((!rw) << DMA_WR)  | DMA_EN | (2 << DMA_AHB_SIZE) |
> >> +	     (7 << DMA_BURST_SIZE) | (16 << DMA_INC_NUM);
> >> +
> >> +	fl_reg = (rw << FLCTL_WR) | FLCTL_XFER_EN | FLCTL_ACORRECT |
> >> +	(n_KB << FLCTL_XFER_SECTOR) | FLCTL_TOG_FIX;
> >> +
> >> +	if (nfc->nfc_version == 6) {  
> >
> >I would prefer using switch statements any time you check the version.
> >The version should be an enum.
> >
> >You can also define a platform data structure for the register offsets
> >that have the same name, but not necessarily the same offset. Then you
> >can reference the right value directly.
> >eg.
> >
> >	struct rk_nfc_plat_data {
> >	u32 nfc_bchctl_off;
> >	...
> >	};
> >
> >	struct rk_nfc_plat_data rk_nfc_v6_plat_data = {
> >	nfc_bchctl_off = ...;
> >	...
> >	};
> >
> >	bch_reg = readl(pdata->nfc_bchctl_off);  
> 
> I will modify the code with switch and enum, but it is difficult to use platform data structure, 
> because the bit offset inside the register is also different.

it works the same with bitfields actually, if the bitfields have close
names and behave the same (no matter where they are in registers), you
should probably define them in a platform data structure as well.

> #define	NFC_BCH_ST_V6	(0x20)
> #define	NFC_BCH_ST_V9	(0x150)
> #define	BCH_ST_ERR0_V6	BIT(2)
> #define	BCH_ST_ERR1_V6	BIT(15)
> #define	BCH_ST_ERR0_V9	BIT(2)
> #define	BCH_ST_ERR1_V9	BIT(18)
> #define	ECC_ERR_CNT0_V6(x) (((((x) & (0x1F << 3)) >> 3) \
> | (((x) & (1 << 27)) >> 22)) & 0x3F)
> #define	ECC_ERR_CNT1_V6(x) (((((x) & (0x1F << 16)) >> 16) \
> | (((x) & (1 << 29)) >> 24)) & 0x3F)
> #define	ECC_ERR_CNT0_V9(x) (((x) & (0x7F << 3)) >> 3)
> #define	ECC_ERR_CNT1_V9(x) (((x) & (0x7F << 19)) >> 19)
> 
> 3.
> >> +static int rk_nfc_write_page_raw(struct nand_chip *chip, const u8 *buf,
> >> +	 int oob_on, int page)
> >> +{
> >> +	struct mtd_info *mtd = nand_to_mtd(chip);
> >> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> >> +
> >> +	rk_nfc_format_page(mtd, buf);
> >> +	return rk_nfc_write_page(mtd, chip, nfc->buffer, page, 1);  
> >
> >I think you should avoid calling ->write_page. You will avoid an
> >indentation level in this function and clarify what write_page_raw do.
> >Same for read, and the _oob alternative. Also, I'm sure write_buf does
> >not need to be exported and you can just move the actual code in this
> >function.  
> 
> The code  is designed with reference to mtk_nand.c.
> The function rk_nfc_format_page will copy data from extern buffer to nfc->buffer.
> I will move the code in the function rk_nfc_format_page to rk_nfc_write_page_raw.
> 
> 4.
> >> +static int rk_nfc_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
> >> +	   int oob_on, int page)
> >> +{
> >> +	return rk_nfc_write_page(nand_to_mtd(chip), chip, buf, page, 0);
> >> +}  
> >
> >What is the purpose of this indirection?
> >  
> 
> The function  rk_nfc_write_page also call by rk_nfc_write_page_raw, a parameter(raw)
> is required to confirm whether ECC is used or not.

Ok.

Thanks,
Miquèl
