From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Date: Tue, 9 Jun 2020 22:18:15 +0200
Message-ID: <0b83ca45-3218-aaff-1462-7e08ae1e3afd@gmail.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
 <7eb89126-9d4b-9cdf-0f77-3242df36e090@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7eb89126-9d4b-9cdf-0f77-3242df36e090-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 6/9/20 6:10 PM, Johan Jonker wrote:

> On 6/9/20 9:40 AM, Yifeng Zhao wrote:

[..]

>> +static int rk_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
>> +			     const u8 *buf, int page, int raw)
>> +{
>> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
>> +	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
>> +	struct nand_ecc_ctrl *ecc = &chip->ecc;
>> +	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
>> +			NFC_MIN_OOB_PER_STEP;
>> +	int pages_per_blk = mtd->erasesize / mtd->writesize;
>> +	int ret = 0, i, boot_rom_mode = 0;
>> +	dma_addr_t dma_data, dma_oob;
>> +	u32 reg;
>> +	u8 *oob;
>> +
>> +	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
>> +
>> +	if (!raw) {
>> +		memcpy(nfc->page_buf, buf, mtd->writesize);
>> +		memset(nfc->oob_buf, 0xff, oob_step * ecc->steps);
>> +
> 
>> +		/*
>> +		 * The first 8(some devices are 4 or 16) blocks in use by
> 
> are in use by
> 
>> +		 * the boot ROM and the first 32 bits of oob need to link
>> +		 * to the next page address in the same block.
>> +		 * Config the ECC algorithm supported by the boot ROM.
>> +		 */
>> +		if (page < pages_per_blk * rk_nand->boot_blks &&
>> +		    chip->options & NAND_IS_BOOT_MEDIUM) {
>> +			boot_rom_mode = 1;
>> +			if (rk_nand->boot_ecc != ecc->strength)
>> +				rk_nfc_hw_ecc_setup(chip, ecc,
>> +						    rk_nand->boot_ecc);
>> +		}
> 
> Helper?
> 
>> +
>> +		/*
> 


>> +		 * Swap the first oob with the seventh oob and bad block
> 
> 
> Swap the first oob byte with the seventh oob byte.
> 
>> +		 * mask is saved at the seventh oob.
> 
> The bad block mask is stored at the seventh oob byte.

Just wondering bit or byte?
seventh or eight?

> 
>> +		 */
>> +		swap(chip->oob_poi[0], chip->oob_poi[7]);

uint8_t *oob_poi;

1: oob_poi points to a byte I think?

What was the swap puspose? A bit or a byte?
There's 4 bytes oob per step.
Could you explain?

2: oob_poi[7] counting starts at [0] #1, [7] is then #8 ?
Is that correct?

>> +
>> +		for (i = 0; i < ecc->steps; i++) {
>> +			oob = chip->oob_poi + i * NFC_SYS_DATA_SIZE;
>> +			reg = oob[0] | oob[1] << 8 | oob[2] << 16 |
>> +			      oob[3] << 24;
>> +			if (!i && boot_rom_mode)
>> +				reg = (page & (pages_per_blk - 1)) * 4;
>> +
>> +			if (nfc->cfg->type == NFC_V6 ||
>> +			    nfc->cfg->type == NFC_V8)
>> +				nfc->oob_buf[i * oob_step / 4] = reg;
>> +			else
>> +				nfc->oob_buf[i] = reg;
>> +		}
>> +
>> +		dma_data = dma_map_single(nfc->dev, (void *)nfc->page_buf,
>> +					  mtd->writesize, DMA_TO_DEVICE);
>> +		dma_oob = dma_map_single(nfc->dev, nfc->oob_buf,
>> +					 ecc->steps * oob_step,
>> +					 DMA_TO_DEVICE);
>> +
>> +		reinit_completion(&nfc->done);
>> +		writel(INT_DMA, nfc->regs + nfc->cfg->int_en_off);
>> +
>> +		rk_nfc_xfer_start(nfc, NFC_WRITE, ecc->steps, dma_data,
>> +				  dma_oob);
>> +		ret = wait_for_completion_timeout(&nfc->done,
>> +						  msecs_to_jiffies(100));
>> +		if (!ret)
>> +			dev_warn(nfc->dev, "write: wait dma done timeout.\n");
>> +		/*
>> +		 * Whether the DMA transfer is completed or not. The driver
>> +		 * needs to check the NFC`s status register to see if the data
>> +		 * transfer was completed.
>> +		 */
>> +		ret = rk_nfc_wait_for_xfer_done(nfc);
>> +
>> +		dma_unmap_single(nfc->dev, dma_data, mtd->writesize,
>> +				 DMA_TO_DEVICE);
>> +		dma_unmap_single(nfc->dev, dma_oob, ecc->steps * oob_step,
>> +				 DMA_TO_DEVICE);
>> +
> 
>> +		if (boot_rom_mode && rk_nand->boot_ecc != ecc->strength)
>> +			rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
> 
> Helper?
> 
>> +
>> +		if (ret) {
>> +			ret = -EIO;
> 
>> +			dev_err(nfc->dev,
>> +				 "write: wait transfer done timeout.\n");
> 
> align
> 
>> +		}
>> +	} else {

>> +		rk_nfc_write_buf(chip, buf, mtd->writesize + + mtd->oobsize);

Too many +++ here?                                         ^ ^

>> +	}
>> +
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = nand_prog_page_end_op(chip);
>> +
>> +	/* Deselect the currently selected target. */
>> +	rk_nfc_select_chip(chip, -1);
>> +
>> +	return ret;
>> +}
