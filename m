From: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Date: Mon, 15 Jun 2020 12:18:41 +0200
Message-ID: <20200615121841.566b81f5@xps13>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
        <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
        <7e4ce8b1-73c4-8b9a-5726-b121f53de8df@gmail.com>
        <2020061517300662418531@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2020061517300662418531-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, richard <richard-/L3Ra7n9ekc@public.gmane.org>, vigneshr <vigneshr-l0cyMroinI0@public.gmane.org>, robh+dt <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-rockchip <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-mtd <linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi 赵仪峰,

赵仪峰 <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote on Mon, 15 Jun 2020 17:34:14
+0800:

> Hi Johan,
> 
> Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote on Sat, 13 Jun 2020 15:31:52
> +0200:
> >Hi Yifeng, Miquel,
> >
> >Some more comments about swap();
> >
> >On 6/9/20 9:40 AM, Yifeng Zhao wrote:
> >
> >[..]
> >  
> >> +static int rk_nfc_ooblayout_free(struct mtd_info *mtd, int section,
> >> +	struct mtd_oob_region *oob_region)
> >> +{
> >> +	struct nand_chip *chip = mtd_to_nand(mtd);
> >> +  
> >  
> >> +	if (section >= chip->ecc.steps)
> >> +	return -ERANGE;  
> >
> >Given:
> >
> >NFC_SYS_DATA_SIZE = 4
> >chip->ecc.steps = 8
> >section [0..7]
> >
> >Total free OOB size advertised to the MTD framework is:
> >
> >ecc.steps * NFC_SYS_DATA_SIZE - 1 BBM
> >8 * 4 - 1 = 31 bytes
> >
> >With link address in OOB byte [0..3] this become:
> >31 - 4 = 27 bytes
> >
> >Does that give data lost?
> >Should we limit the number of free OOB bytes by 4 more to be save?
> >Is my calculation correct?
> >See further questions about this below.
> >  
> >> +
> >> +	if (!section) {
> >> +	/* The first byte is bad block mask flag. */
> >> +	oob_region->length = NFC_SYS_DATA_SIZE - 1;
> >> +	oob_region->offset = 1;
> >> +	} else {
> >> +	oob_region->length = NFC_SYS_DATA_SIZE;
> >> +	oob_region->offset = section * NFC_SYS_DATA_SIZE;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int rk_nfc_ooblayout_ecc(struct mtd_info *mtd, int section,
> >> +	struct mtd_oob_region *oob_region)
> >> +{
> >> +	struct nand_chip *chip = mtd_to_nand(mtd);
> >> +  
> >  
> >> +	if (section)
> >> +	return -ERANGE;  
> >
> >With the formule above a section > 0 does not alow ECC.
> >
> >Just a question about the MTD inner working for Miquel:
> >
> >With ooblayout_free using 8 steps and this just 1 does it still generate
> >the correct ECC? Does it calculate ECC over 1024B or over 8*1024B ?
> >
> >Should we move the text that explains the layout closer to these
> >functions and add a little more text to explain why we choose this
> >particular layout?
> >
> >/*
> > * NFC Page Data Layout:
> > *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
> > *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
> > *	......
> > * NAND Page Data Layout:
> > *	1024 * n Data + m Bytes oob
> > * Original Bad Block Mask Location:
> > *	First byte of oob(spare).
> > * nand_chip->oob_poi data layout:
> > *	4Bytes sys data + .... + 4Bytes sys data + ecc data.
> > */
> >
> >We expect now ECC data after n steps * 4 OOB bytes,
> >but are we still using it with HW ECC or only for raw?
> >  
> >> +
> >> +	oob_region->offset = NFC_SYS_DATA_SIZE * chip->ecc.steps;
> >> +	oob_region->length = mtd->oobsize - oob_region->offset;
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static const struct mtd_ooblayout_ops rk_nfc_ooblayout_ops = {
> >> +	.free = rk_nfc_ooblayout_free,
> >> +	.ecc = rk_nfc_ooblayout_ecc,
> >> +};  
> >
> >[..]
> >  
> >> +static int rk_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
> >> +	     const u8 *buf, int page, int raw)
> >> +{
> >> +	struct rk_nfc *nfc = nand_get_controller_data(chip);
> >> +	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
> >> +	struct nand_ecc_ctrl *ecc = &chip->ecc;
> >> +	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
> >> +	NFC_MIN_OOB_PER_STEP;
> >> +	int pages_per_blk = mtd->erasesize / mtd->writesize;
> >> +	int ret = 0, i, boot_rom_mode = 0;
> >> +	dma_addr_t dma_data, dma_oob;
> >> +	u32 reg;
> >> +	u8 *oob;
> >> +
> >> +	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
> >> +
> >> +	if (!raw) {
> >> +	memcpy(nfc->page_buf, buf, mtd->writesize);
> >> +	memset(nfc->oob_buf, 0xff, oob_step * ecc->steps);
> >> +
> >> +	/*
> >> +	* The first 8(some devices are 4 or 16) blocks in use by
> >> +	* the boot ROM and the first 32 bits of oob need to link
> >> +	* to the next page address in the same block.
> >> +	* Config the ECC algorithm supported by the boot ROM.
> >> +	*/
> >> +	if (page < pages_per_blk * rk_nand->boot_blks &&
> >> +	    chip->options & NAND_IS_BOOT_MEDIUM) {
> >> +	boot_rom_mode = 1;
> >> +	if (rk_nand->boot_ecc != ecc->strength)
> >> +	rk_nfc_hw_ecc_setup(chip, ecc,
> >> +	    rk_nand->boot_ecc);
> >> +	}
> >> +
> >> +	/*
> >> +	* Swap the first oob with the seventh oob and bad block
> >> +	* mask is saved at the seventh oob.
> >> +	*/
> >> +	swap(chip->oob_poi[0], chip->oob_poi[7]);  
> >
> >Add more info on why this is swapped.
> >
> >LA[0..3] is a link address that the BBM shouldn't over write.
> >For Yifeng: Is there an other reason?  
> 
> No other reason，this swap ops only for the link address.
> 
> >Before swap:
> >
> >BBM  OOB1 OOB2 OOB3, OOB4 OOB5 OOB6 OOB7, OOB8 ....
> >
> >After swap:
> >
> >OOB7 OOB1 OOB2 OOB3, OOB4 OOB5 OOB6 BBM , OOB8 ....
> >
> >If (!i && boot_rom_mode):
> >
> >LA0  LA1  LA2  LA3 , OOB4 OOB5 OOB6 BBM , OOB8 ....
> >
> >Read back after swap again:
> >
> >BBM  LA1  LA2  LA3 , OOB4 OOB5 OOB6 LA0 , OOB8 ....
> >
> >Question:
> >Are data OOB7 OOB1 OOB2 OOB3 lost now?
> >Is this correct?  
> 
> Yes, the data OOB7 OOB1 OOB2 OOB3 will lost in the blocks which used for the boot ROM.
> 
> >#################################################
> >Proposal:
> >Should we reduce the free OOB size by 4
> >and shift everything 4 bytes to recover all bytes?
> >Replace the first 4 bytes with 0XFF or LA[0..3].
> >
> >Normal:
> >0xFF 0XFF 0XFF 0xFF, BBM  OOB1 OOB2 OOB3, OOB4
> >
> >If (!i && boot_rom_mode):
> >LA0  LA1  LA2  LA3 , BBM  OOB1 OOB2 OOB3, OOB4
> >
> >Question for Miquel and Yifeng:
> >Does this work? Could you test?  
> 
> I want to modify the drivers in next version:
> The data swap ops only done for the blocks which used for the boot ROM，In this way,
> the specially processed code will not affect the rest blocks.
> For Miquel and Yifeng:
> Is this OK？

So I guess this linking property is only for the BootROM? I am not sure
what is best but I guess keeping the same layout everywhere is better.
Johan proposal would be good to try.

Thanks,
Miquèl
