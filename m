From: Cyrille Pitchen <cyrille.pitchen-yU5RGvR974pGWvitb5QawA@public.gmane.org>
Subject: Re: [PATCH v6 2/2] mtd: spi-nor: add rockchip serial flash controller
 driver
Date: Sun, 16 Apr 2017 19:40:35 +0200
Message-ID: <b743eaa7-b4fd-e5f7-ddba-38abd372d445@wedev4u.fr>
References: <1487732523-97390-1-git-send-email-shawn.lin@rock-chips.com>
 <1487732523-97390-3-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1487732523-97390-3-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Brian Norris <computersforpeace-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Cyrille Pitchen <cyrille.pitchen-AIFe0yeh4nAAvxtiuMwx3w@public.gmane.org>
Cc: Marek Vasut <marek.vasut-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

sorry but I won't take this version yet. I still need to do a proper
review but just having an overview at the whole patch I have some doubt
about the way you map buffers for DMA transfers depending on whether or
not those buffers were allocated with vmalloc().

bool force_prealloc =3D is_vmalloc_addr(buf);

Not allocated by vmalloc() does not imply allocated by kmalloc().
If not allocated by kmalloc() then not guaranteed to be inside some DMA
capable memory area.

You might have already pass many tests but likely not with buffers
allocated by something different from kmalloc() and vmalloc().
So this patch might work today but not in some future because the code
seems to make some implicit assumptions.

So some extra checks and review might be needed.

Best regards,

Cyrille


Le 22/02/2017 =E0 04:02, Shawn Lin a =E9crit :
> Add rockchip serial flash controller driver
> =

> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> =

> Acked-by: Marek Vasut <marek.vasut-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
> =

> Changes in v6:
> - fold in Andy's improvement for checking fifo level
>   before pio read
> - rename the controller to rv1108 since offically it's
>   renamed and acked by Rob.
> - use dma_coerce_mask_and_coherent suggested by Andy.
> =

> Changes in v5:
> - check if the buf is aligned to 32bit
> - check if the buf for dma comes from vmalloc
> - fix to use 1-1-n according to the current framework
> - avoid bytes cnt overflow
> =

> Changes in v4:
> - simplify the code of get_if_type
> - use dma_dir to simplify the code
> - simplify the rockchip_sfc_do_rd_wr
> - some minor improvements
> - add reset controller when doing resume
> =

> Changes in v3:
> - use io{read32,write32}_rep to simplify the corner cases
> - remove more unnecessary bit definitions
> - some minor comment fixes and improvement
> - fix wrong unregister function
> - unify more code
> - use nor to avoid constantly replicating the whole
>   sfc->flash[sfc->num_chip].nor
> - add email for MODULE_AUTHOR
> - remove #if 1 --- #endif
> - extract DMA code to imporve the code structure
> - reset all when failing to do dma
> - pass sfc to get_if_type
> - rename sfc-no-dma to sfc-no-DMA
> =

> Changes in v2:
> - fix typos
> - add some comment for buffer and others operations
> - rename SFC_MAX_CHIP_NUM to MAX_CHIPSELECT_NUM
> - use u8 for cs
> - return -EINVAL for default case of get_if_type
> - use readl_poll_*() to check timeout cases
> - simplify and clarify some condition checks
> - rework the bitshifts to simplify the code
> - define SFC_CMD_DUMMY(x)
> - fix ummap for dma read path and finish all the
>   cache maintenance.
> - rename to rockchip_sfc_chip_priv and embed struct spi_nor
>   in it.
> - add MODULE_AUTHOR
> - add runtime PM and general PM support.
> - Thanks for Marek's comments. Link:
>   http://lists.infradead.org/pipermail/linux-mtd/2016-November/070321.html
> =

>  MAINTAINERS                        |   8 +
>  drivers/mtd/spi-nor/Kconfig        |   7 +
>  drivers/mtd/spi-nor/Makefile       |   1 +
>  drivers/mtd/spi-nor/rockchip-sfc.c | 960 +++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 976 insertions(+)
>  create mode 100644 drivers/mtd/spi-nor/rockchip-sfc.c
> =

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1cd38a7..eb7e06d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10266,6 +10266,14 @@ L:	linux-serial-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>  S:	Odd Fixes
>  F:	drivers/tty/serial/rp2.*
>  =

> +ROCKCHIP SERIAL FLASH CONTROLLER DRIVER
> +M:	Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> +L:	linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> +L:	linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/mtd/rockchip-sfc.txt
> +F:	drivers/mtd/spi-nor/rockchip-sfc.c
> +
>  ROSE NETWORK LAYER
>  M:	Ralf Baechle <ralf-6z/3iImG2C8G8FEW9MqTrA@public.gmane.org>
>  L:	linux-hams-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> index 4a682ee..bf783a8 100644
> --- a/drivers/mtd/spi-nor/Kconfig
> +++ b/drivers/mtd/spi-nor/Kconfig
> @@ -76,4 +76,11 @@ config SPI_NXP_SPIFI
>  	  Flash. Enable this option if you have a device with a SPIFI
>  	  controller and want to access the Flash as a mtd device.
>  =

> +config SPI_ROCKCHIP_SFC
> +	tristate "Rockchip Serial Flash Controller(SFC)"
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on HAS_IOMEM && HAS_DMA
> +	help
> +	  This enables support for rockchip serial flash controller.
> +
>  endif # MTD_SPI_NOR
> diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
> index 121695e..364d4c6 100644
> --- a/drivers/mtd/spi-nor/Makefile
> +++ b/drivers/mtd/spi-nor/Makefile
> @@ -5,3 +5,4 @@ obj-$(CONFIG_SPI_FSL_QUADSPI)	+=3D fsl-quadspi.o
>  obj-$(CONFIG_SPI_HISI_SFC)	+=3D hisi-sfc.o
>  obj-$(CONFIG_MTD_MT81xx_NOR)    +=3D mtk-quadspi.o
>  obj-$(CONFIG_SPI_NXP_SPIFI)	+=3D nxp-spifi.o
> +obj-$(CONFIG_SPI_ROCKCHIP_SFC)	+=3D rockchip-sfc.o
> diff --git a/drivers/mtd/spi-nor/rockchip-sfc.c b/drivers/mtd/spi-nor/roc=
kchip-sfc.c
> new file mode 100644
> index 0000000..011bac9
> --- /dev/null
> +++ b/drivers/mtd/spi-nor/rockchip-sfc.c
> @@ -0,0 +1,960 @@
> +/*
> + * Rockchip Serial Flash Controller Driver
> + *
> + * Copyright (c) 2017, Rockchip Inc.
> + * Author: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program. If not, see <http://www.gnu.org/licenses/>.
> + */
> +#include <linux/bitops.h>
> +#include <linux/clk.h>
> +#include <linux/completion.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/iopoll.h>
> +#include <linux/mm.h>
> +#include <linux/module.h>
> +#include <linux/mtd/mtd.h>
> +#include <linux/mtd/spi-nor.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/slab.h>
> +
> +/* System control */
> +#define SFC_CTRL			0x0
> +#define  SFC_CTRL_COMMON_BITS_1		0x0
> +#define  SFC_CTRL_COMMON_BITS_2		0x1
> +#define  SFC_CTRL_COMMON_BITS_4		0x2
> +#define  SFC_CTRL_DATA_BITS_SHIFT	12
> +#define  SFC_CTRL_ADDR_BITS_SHIFT	10
> +#define  SFC_CTRL_CMD_BITS_SHIFT	8
> +#define  SFC_CTRL_PHASE_SEL_NEGETIVE	BIT(1)
> +
> +/* Interrupt mask */
> +#define SFC_IMR				0x4
> +#define  SFC_IMR_RX_FULL		BIT(0)
> +#define  SFC_IMR_RX_UFLOW		BIT(1)
> +#define  SFC_IMR_TX_OFLOW		BIT(2)
> +#define  SFC_IMR_TX_EMPTY		BIT(3)
> +#define  SFC_IMR_TRAN_FINISH		BIT(4)
> +#define  SFC_IMR_BUS_ERR		BIT(5)
> +#define  SFC_IMR_NSPI_ERR		BIT(6)
> +#define  SFC_IMR_DMA			BIT(7)
> +/* Interrupt clear */
> +#define SFC_ICLR			0x8
> +#define  SFC_ICLR_RX_FULL		BIT(0)
> +#define  SFC_ICLR_RX_UFLOW		BIT(1)
> +#define  SFC_ICLR_TX_OFLOW		BIT(2)
> +#define  SFC_ICLR_TX_EMPTY		BIT(3)
> +#define  SFC_ICLR_TRAN_FINISH		BIT(4)
> +#define  SFC_ICLR_BUS_ERR		BIT(5)
> +#define  SFC_ICLR_NSPI_ERR		BIT(6)
> +#define  SFC_ICLR_DMA			BIT(7)
> +/* FIFO threshold level */
> +#define SFC_FTLR			0xc
> +#define  SFC_FTLR_TX_SHIFT		0
> +#define  SFC_FTLR_TX_MASK		0x1f
> +#define  SFC_FTLR_RX_SHIFT		8
> +#define  SFC_FTLR_RX_MASK		0x1f
> +/* Reset FSM and FIFO */
> +#define SFC_RCVR			0x10
> +#define  SFC_RCVR_RESET			BIT(0)
> +/* Enhanced mode */
> +#define SFC_AX				0x14
> +/* Address Bit number */
> +#define SFC_ABIT			0x18
> +/* Interrupt status */
> +#define SFC_ISR				0x1c
> +#define  SFC_ISR_RX_FULL_SHIFT		BIT(0)
> +#define  SFC_ISR_RX_UFLOW_SHIFT		BIT(1)
> +#define  SFC_ISR_TX_OFLOW_SHIFT		BIT(2)
> +#define  SFC_ISR_TX_EMPTY_SHIFT		BIT(3)
> +#define  SFC_ISR_TX_FINISH_SHIFT	BIT(4)
> +#define  SFC_ISR_BUS_ERR_SHIFT		BIT(5)
> +#define  SFC_ISR_NSPI_ERR_SHIFT		BIT(6)
> +#define  SFC_ISR_DMA_SHIFT		BIT(7)
> +/* FIFO status */
> +#define SFC_FSR				0x20
> +#define  SFC_FSR_TX_IS_FULL		BIT(0)
> +#define  SFC_FSR_TX_IS_EMPTY		BIT(1)
> +#define  SFC_FSR_RX_IS_EMPTY		BIT(2)
> +#define  SFC_FSR_RX_IS_FULL		BIT(3)
> +/* FSM status */
> +#define SFC_SR				0x24
> +#define  SFC_SR_IS_IDLE			0x0
> +#define  SFC_SR_IS_BUSY			0x1
> +/* Raw interrupt status */
> +#define SFC_RISR			0x28
> +#define  SFC_RISR_RX_FULL		BIT(0)
> +#define  SFC_RISR_RX_UNDERFLOW		BIT(1)
> +#define  SFC_RISR_TX_OVERFLOW		BIT(2)
> +#define  SFC_RISR_TX_EMPTY		BIT(3)
> +#define  SFC_RISR_TRAN_FINISH		BIT(4)
> +#define  SFC_RISR_BUS_ERR		BIT(5)
> +#define  SFC_RISR_NSPI_ERR		BIT(6)
> +#define  SFC_RISR_DMA			BIT(7)
> +/* Master trigger */
> +#define SFC_DMA_TRIGGER			0x80
> +/* Src or Dst addr for master */
> +#define SFC_DMA_ADDR			0x84
> +/* Command */
> +#define SFC_CMD				0x100
> +#define  SFC_CMD_IDX_SHIFT		0
> +#define  SFC_CMD_DUMMY_SHIFT		8
> +#define  SFC_CMD_DIR_RD			0
> +#define  SFC_CMD_DIR_WR			1
> +#define  SFC_CMD_DIR_SHIFT		12
> +#define  SFC_CMD_ADDR_ZERO		(0x0 << 14)
> +#define  SFC_CMD_ADDR_24BITS		(0x1 << 14)
> +#define  SFC_CMD_ADDR_32BITS		(0x2 << 14)
> +#define  SFC_CMD_ADDR_FRS		(0x3 << 14)
> +#define  SFC_CMD_TRAN_BYTES_SHIFT	16
> +#define  SFC_CMD_TRAN_BYTES_MASK	16
> +#define  SFC_CMD_CS_SHIFT		30
> +/* Address */
> +#define SFC_ADDR			0x104
> +/* Data */
> +#define SFC_DATA			0x108
> +
> +#define SFC_MAX_CHIPSELECT_NUM		4
> +#define SFC_DMA_MAX_LEN			0x4000
> +#define SFC_MAX_TRANS_BYTES		0x3fff
> +#define SFC_CMD_DUMMY(x) \
> +	((x) << SFC_CMD_DUMMY_SHIFT)
> +
> +enum rockchip_sfc_iftype {
> +	IF_TYPE_STD,
> +	IF_TYPE_DUAL,
> +	IF_TYPE_QUAD,
> +};
> +
> +struct rockchip_sfc;
> +struct rockchip_sfc_chip_priv {
> +	u8 cs;
> +	u32 clk_rate;
> +	struct spi_nor nor;
> +	struct rockchip_sfc *sfc;
> +};
> +
> +struct rockchip_sfc {
> +	struct device *dev;
> +	struct mutex lock;
> +	void __iomem *regbase;
> +	struct clk *hclk;
> +	struct clk *clk;
> +	/* virtual mapped addr for dma_buffer */
> +	void *buffer;
> +	dma_addr_t dma_buffer;
> +	struct completion cp;
> +	struct rockchip_sfc_chip_priv flash[SFC_MAX_CHIPSELECT_NUM];
> +	u32 num_chip;
> +	bool use_dma;
> +	/* use negative edge of hclk to latch data */
> +	bool negative_edge;
> +};
> +
> +static int get_if_type(struct rockchip_sfc *sfc, enum read_mode flash_re=
ad)
> +{
> +	if (flash_read =3D=3D SPI_NOR_DUAL)
> +		return IF_TYPE_DUAL;
> +	else if (flash_read =3D=3D SPI_NOR_QUAD)
> +		return IF_TYPE_QUAD;
> +	else if (flash_read =3D=3D SPI_NOR_NORMAL ||
> +		 flash_read =3D=3D SPI_NOR_FAST)
> +		return IF_TYPE_STD;
> +
> +	dev_err(sfc->dev, "unsupported SPI read mode\n");
> +	return -EINVAL;
> +}
> +
> +static int rockchip_sfc_reset(struct rockchip_sfc *sfc)
> +{
> +	int err;
> +	u32 status;
> +
> +	writel_relaxed(SFC_RCVR_RESET, sfc->regbase + SFC_RCVR);
> +
> +	err =3D readl_poll_timeout(sfc->regbase + SFC_RCVR, status,
> +				 !(status & SFC_RCVR_RESET), 20,
> +				 jiffies_to_usecs(HZ));
> +	if (err)
> +		dev_err(sfc->dev, "SFC reset never finished\n");
> +
> +	/* Still need to clear the masked interrupt from RISR */
> +	writel_relaxed(SFC_ICLR_RX_FULL | SFC_ICLR_RX_UFLOW |
> +		       SFC_ICLR_TX_OFLOW | SFC_ICLR_TX_EMPTY |
> +		       SFC_ICLR_TRAN_FINISH | SFC_ICLR_BUS_ERR |
> +		       SFC_ICLR_NSPI_ERR | SFC_ICLR_DMA,
> +		       sfc->regbase + SFC_ICLR);
> +	return err;
> +}
> +
> +static int rockchip_sfc_init(struct rockchip_sfc *sfc)
> +{
> +	int err;
> +
> +	err =3D rockchip_sfc_reset(sfc);
> +	if (err)
> +		return err;
> +
> +	/* Mask all eight interrupts */
> +	writel_relaxed(0xff, sfc->regbase + SFC_IMR);
> +
> +	/*
> +	 * Phase configure for sfc to latch data by using
> +	 * ahb clock, and this configuration should be Soc
> +	 * specific.
> +	 */
> +	if (sfc->negative_edge)
> +		writel_relaxed(SFC_CTRL_PHASE_SEL_NEGETIVE,
> +			       sfc->regbase + SFC_CTRL);
> +	else
> +		writel_relaxed(0, sfc->regbase + SFC_CTRL);
> +
> +	return 0;
> +}
> +
> +static int rockchip_sfc_prep(struct spi_nor *nor, enum spi_nor_ops ops)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	int ret;
> +
> +	mutex_lock(&sfc->lock);
> +	pm_runtime_get_sync(sfc->dev);
> +
> +	ret =3D clk_set_rate(sfc->clk, priv->clk_rate);
> +	if (ret)
> +		goto out;
> +
> +	ret =3D clk_prepare_enable(sfc->clk);
> +	if (ret)
> +		goto out;
> +
> +	return 0;
> +
> +out:
> +	mutex_unlock(&sfc->lock);
> +	return ret;
> +}
> +
> +static void rockchip_sfc_unprep(struct spi_nor *nor, enum spi_nor_ops op=
s)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +
> +	clk_disable_unprepare(sfc->clk);
> +	mutex_unlock(&sfc->lock);
> +	pm_runtime_mark_last_busy(sfc->dev);
> +	pm_runtime_put_autosuspend(sfc->dev);
> +}
> +
> +static int rockchip_sfc_wait_op_finish(struct rockchip_sfc *sfc)
> +{
> +	int err;
> +	u32 status;
> +
> +	/*
> +	 * Note: tx and rx share the same fifo, so the rx's water level
> +	 * is the same as rx's, which means this function could be reused
> +	 * for checking the read operations as well.
> +	 */
> +	err =3D readl_poll_timeout(sfc->regbase + SFC_FSR, status,
> +				 status & SFC_FSR_TX_IS_EMPTY,
> +				 20, jiffies_to_usecs(2 * HZ));
> +	if (err)
> +		dev_err(sfc->dev, "SFC fifo never empty\n");
> +
> +	return err;
> +}
> +
> +static int rockchip_sfc_op_reg(struct spi_nor *nor,
> +				u8 opcode, int len, u8 optype)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	u32 reg;
> +	bool tx_no_empty, rx_no_empty, is_busy;
> +	int err;
> +
> +	reg =3D readl_relaxed(sfc->regbase + SFC_FSR);
> +	tx_no_empty =3D !(reg & SFC_FSR_TX_IS_EMPTY);
> +	rx_no_empty =3D !(reg & SFC_FSR_RX_IS_EMPTY);
> +
> +	is_busy =3D readl_relaxed(sfc->regbase + SFC_SR);
> +
> +	if (tx_no_empty || rx_no_empty || is_busy) {
> +		err =3D rockchip_sfc_reset(sfc);
> +		if (err)
> +			return err;
> +	}
> +
> +	reg =3D opcode << SFC_CMD_IDX_SHIFT;
> +	reg |=3D len << SFC_CMD_TRAN_BYTES_SHIFT;
> +	reg |=3D priv->cs << SFC_CMD_CS_SHIFT;
> +	reg |=3D optype << SFC_CMD_DIR_SHIFT;
> +
> +	writel_relaxed(reg, sfc->regbase + SFC_CMD);
> +
> +	return rockchip_sfc_wait_op_finish(sfc);
> +}
> +
> +static void rockchip_sfc_read_fifo(struct rockchip_sfc *sfc, u8 *buf, in=
t len)
> +{
> +	u32 tmp =3D 0, i;
> +	int total_len =3D len;
> +
> +	/* 32-bit access only */
> +	if (len >=3D sizeof(u32) && IS_ALIGNED((u32)buf, sizeof(u32))) {
> +		ioread32_rep(sfc->regbase + SFC_DATA, buf, len >> 2);
> +		len %=3D 4;
> +		buf +=3D total_len - len;
> +	}
> +
> +	/* read the rest bytes */
> +	for (i =3D 0; i < len; i++) {
> +		if (!(i & 0x03))
> +			tmp =3D readl_relaxed(sfc->regbase + SFC_DATA);
> +		buf[i] =3D (tmp >> ((i & 0x03) * 8)) & 0xff;
> +	}
> +}
> +
> +static int rockchip_sfc_read_reg(struct spi_nor *nor, u8 opcode,
> +				 u8 *buf, int len)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	int ret;
> +	int trans;
> +
> +	while (len > 0) {
> +		trans =3D min_t(int, len, SFC_MAX_TRANS_BYTES);
> +		ret =3D rockchip_sfc_op_reg(nor, opcode, trans, SFC_CMD_DIR_RD);
> +		if (ret)
> +			return ret;
> +
> +		rockchip_sfc_read_fifo(sfc, buf, trans);
> +		buf +=3D trans;
> +		len -=3D trans;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_sfc_write_reg(struct spi_nor *nor, u8 opcode,
> +				  u8 *buf, int len)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	u32 dwords, trans;
> +	int ret;
> +	u8 *tmpbuf =3D NULL;
> +
> +	/* Align bytes to dwords */
> +	dwords =3D DIV_ROUND_UP(len, sizeof(u32));
> +	if (!IS_ALIGNED((u32)buf, sizeof(u32))) {
> +		dev_dbg(sfc->dev, "write_reg buf is not aligned to u32\n");
> +		tmpbuf =3D kmalloc(sizeof(*tmpbuf), len);
> +		if (!tmpbuf)
> +			return -ENOMEM;
> +		memcpy((u32 *)tmpbuf, (u32 *)buf, dwords);
> +	}
> +
> +	while (dwords > 0) {
> +		trans =3D min_t(u32, dwords, SFC_MAX_TRANS_BYTES >> 2);
> +		iowrite32_rep(sfc->regbase + SFC_DATA,
> +			      !IS_ALIGNED((u32)buf, sizeof(u32)) ? tmpbuf : buf,
> +			      dwords);
> +		ret =3D rockchip_sfc_op_reg(nor, opcode, trans, SFC_CMD_DIR_WR);
> +		if (ret)
> +			return ret;
> +
> +		if (!IS_ALIGNED((u32)buf, sizeof(u32)))
> +			tmpbuf +=3D trans << 2;
> +		else
> +			buf +=3D trans << 2;
> +
> +		dwords -=3D trans;
> +	}
> +
> +	if (!IS_ALIGNED((u32)buf, sizeof(u32)))
> +		kfree(tmpbuf);
> +
> +	return 0;
> +}
> +
> +static inline void rockchip_sfc_setup_transfer(struct spi_nor *nor,
> +					       loff_t from_to,
> +					       size_t len, u8 op_type)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	u32 reg;
> +	u8 if_type =3D 0;
> +
> +	if_type =3D get_if_type(sfc, nor->flash_read);
> +	writel_relaxed((if_type << SFC_CTRL_DATA_BITS_SHIFT) |
> +		       (IF_TYPE_STD << SFC_CTRL_ADDR_BITS_SHIFT) |
> +		       (IF_TYPE_STD << SFC_CTRL_CMD_BITS_SHIFT) |
> +		       (sfc->negative_edge ? SFC_CTRL_PHASE_SEL_NEGETIVE : 0),
> +		       sfc->regbase + SFC_CTRL);
> +
> +	if (op_type =3D=3D SFC_CMD_DIR_WR)
> +		reg =3D nor->program_opcode << SFC_CMD_IDX_SHIFT;
> +	else
> +		reg =3D nor->read_opcode << SFC_CMD_IDX_SHIFT;
> +
> +	reg |=3D op_type << SFC_CMD_DIR_SHIFT;
> +	reg |=3D (nor->addr_width =3D=3D 4) ?
> +		SFC_CMD_ADDR_32BITS : SFC_CMD_ADDR_24BITS;
> +
> +	reg |=3D priv->cs << SFC_CMD_CS_SHIFT;
> +	reg |=3D len << SFC_CMD_TRAN_BYTES_SHIFT;
> +
> +	if (op_type =3D=3D SFC_CMD_DIR_RD)
> +		reg |=3D SFC_CMD_DUMMY(nor->read_dummy);
> +
> +	/* Should minus one as 0x0 means 1 bit flash address */
> +	writel_relaxed(nor->addr_width * 8 - 1, sfc->regbase + SFC_ABIT);
> +	writel_relaxed(reg, sfc->regbase + SFC_CMD);
> +	writel_relaxed(from_to, sfc->regbase + SFC_ADDR);
> +}
> +
> +static int rockchip_sfc_do_dma_transfer(struct spi_nor *nor, loff_t from=
_to,
> +					dma_addr_t dma_buf, size_t len,
> +					u8 op_type)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	u32 reg;
> +	int err =3D 0;
> +
> +	init_completion(&sfc->cp);
> +
> +	writel_relaxed(SFC_ICLR_RX_FULL | SFC_ICLR_RX_UFLOW |
> +		       SFC_ICLR_TX_OFLOW | SFC_ICLR_TX_EMPTY |
> +		       SFC_ICLR_TRAN_FINISH | SFC_ICLR_BUS_ERR |
> +		       SFC_ICLR_NSPI_ERR | SFC_ICLR_DMA,
> +		       sfc->regbase + SFC_ICLR);
> +
> +	/* Enable transfer complete interrupt */
> +	reg =3D readl_relaxed(sfc->regbase + SFC_IMR);
> +	reg &=3D ~SFC_IMR_TRAN_FINISH;
> +	writel_relaxed(reg, sfc->regbase + SFC_IMR);
> +
> +	rockchip_sfc_setup_transfer(nor, from_to, len, op_type);
> +	writel_relaxed(dma_buf, sfc->regbase + SFC_DMA_ADDR);
> +
> +	/*
> +	 * Start dma but note that the sfc->dma_buffer is derived from
> +	 * dmam_alloc_coherent so we don't actually need any sync operations
> +	 * for coherent dma memory.
> +	 */
> +	writel_relaxed(0x1, sfc->regbase + SFC_DMA_TRIGGER);
> +
> +	/* Wait for the interrupt. */
> +	if (!wait_for_completion_timeout(&sfc->cp, msecs_to_jiffies(2000))) {
> +		dev_err(sfc->dev, "DMA wait for transfer finish timeout\n");
> +		err =3D -ETIMEDOUT;
> +	}
> +
> +	/* Disable transfer finish interrupt */
> +	reg =3D readl_relaxed(sfc->regbase + SFC_IMR);
> +	reg |=3D SFC_IMR_TRAN_FINISH;
> +	writel_relaxed(reg, sfc->regbase + SFC_IMR);
> +
> +	if (err) {
> +		rockchip_sfc_reset(sfc);
> +		return err;
> +	}
> +
> +	return rockchip_sfc_wait_op_finish(sfc);
> +}
> +
> +static inline int rockchip_sfc_pio_write(struct rockchip_sfc *sfc, u_cha=
r *buf,
> +					 size_t len)
> +{
> +	u32 dwords;
> +	u8 *tmpbuf;
> +
> +	/*
> +	 * Align bytes to dwords, although we will write some extra
> +	 * bytes to fifo but the transfer bytes number in SFC_CMD
> +	 * register will make sure we just send out the expected
> +	 * byte numbers and the extra bytes will be clean before
> +	 * setting up the next transfer. We should always round up
> +	 * to align to DWORD as the ahb for Rockchip Socs won't
> +	 * support non-aligned-to-DWORD transfer.
> +	 */
> +	dwords =3D DIV_ROUND_UP(len, sizeof(u32));
> +	if (!IS_ALIGNED((u32)buf, sizeof(u32))) {
> +		dev_dbg(sfc->dev, "pio_write buf is not aligned to u32\n");
> +		tmpbuf =3D kmalloc(sizeof(*tmpbuf), len);
> +		if (!tmpbuf)
> +			return -ENOMEM;
> +		memcpy((u32 *)tmpbuf, (u32 *)buf, dwords);
> +	}
> +
> +	iowrite32_rep(sfc->regbase + SFC_DATA,
> +		      !IS_ALIGNED((u32)buf, sizeof(u32)) ? tmpbuf : buf,
> +		      dwords);
> +
> +	if (!IS_ALIGNED((u32)buf, sizeof(u32)))
> +		kfree(tmpbuf);
> +
> +	return rockchip_sfc_wait_op_finish(sfc);
> +}
> +
> +static inline int rockchip_sfc_pio_read(struct rockchip_sfc *sfc, u_char=
 *buf,
> +					size_t len)
> +{
> +	int err;
> +	u32 status;
> +
> +	err =3D readl_poll_timeout(sfc->regbase + SFC_FSR, status,
> +				 !(status & SFC_FSR_RX_IS_EMPTY),
> +				 20, jiffies_to_usecs(2 * HZ));
> +	if (err) {
> +		dev_err(sfc->dev, "%s: fifo is empty\n", __func__);
> +		return err;
> +	}
> +
> +	rockchip_sfc_read_fifo(sfc, buf, len);
> +
> +	return rockchip_sfc_wait_op_finish(sfc);
> +}
> +
> +static int rockchip_sfc_pio_transfer(struct spi_nor *nor, loff_t from_to,
> +				     size_t len, u_char *buf, u8 op_type)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	size_t trans;
> +	int ret;
> +
> +	while (len > 0) {
> +		trans =3D min_t(size_t, SFC_MAX_TRANS_BYTES, len);
> +		rockchip_sfc_setup_transfer(nor, from_to, trans, op_type);
> +
> +		if (op_type =3D=3D SFC_CMD_DIR_WR) {
> +			ret =3D rockchip_sfc_pio_write(sfc, buf, trans);
> +			if (ret)
> +				return ret;
> +		} else {
> +			ret =3D rockchip_sfc_pio_read(sfc, buf, trans);
> +			if (ret)
> +				return ret;
> +		}
> +		len -=3D trans;
> +		buf +=3D trans;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_sfc_dma_transfer(struct spi_nor *nor, loff_t from_to,
> +				     size_t len, u_char *buf, u8 op_type)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	size_t offset;
> +	int ret;
> +	dma_addr_t dma_addr =3D 0;
> +	int dma_dir;
> +	bool force_prealloc;
> +
> +	dma_dir =3D (op_type =3D=3D SFC_CMD_DIR_RD) ?
> +		   DMA_FROM_DEVICE : DMA_TO_DEVICE;
> +
> +	force_prealloc =3D is_vmalloc_addr(buf);
> +
> +	for (offset =3D 0; offset < len; offset +=3D SFC_DMA_MAX_LEN) {
> +		size_t trans =3D min_t(size_t, SFC_DMA_MAX_LEN, len - offset);
> +
> +		if (force_prealloc) {
> +			if (op_type =3D=3D SFC_CMD_DIR_WR)
> +				memcpy(sfc->buffer, buf + offset, trans);
> +
> +			dma_addr =3D 0;
> +			goto use_prealloc;
> +		}
> +
> +		dma_addr =3D dma_map_single(sfc->dev, (void *)buf + offset,
> +					  trans, dma_dir);
> +
> +		if (dma_mapping_error(sfc->dev, dma_addr)) {
> +			/*
> +			 * If we use pre-allocated dma_buffer, we need to
> +			 * do a copy here.
> +			 */
> +			if (op_type =3D=3D SFC_CMD_DIR_WR)
> +				memcpy(sfc->buffer, buf + offset, trans);
> +
> +			dma_addr =3D 0;
> +		}
> +
> +		if (op_type =3D=3D SFC_CMD_DIR_WR)
> +			/*
> +			 * Flush the write data from write_buf to dma_addr
> +			 * if using dynamic allocated dma buffer before dma
> +			 * moves data from dma_addr to fifo.
> +			 */
> +			dma_sync_single_for_device(sfc->dev, dma_addr,
> +						   trans, DMA_TO_DEVICE);
> +
> +use_prealloc:
> +		/* If failing to map dma, use pre-allocated area instead */
> +		ret =3D rockchip_sfc_do_dma_transfer(nor, from_to + offset,
> +						dma_addr ? dma_addr :
> +						sfc->dma_buffer,
> +						trans, op_type);
> +
> +		if (dma_addr) {
> +			/*
> +			 * Invalidate the read data from dma_addr if using
> +			 * dynamic allocated dma buffer after dma moves data
> +			 * from fifo to dma_addr.
> +			 */
> +			if (op_type =3D=3D SFC_CMD_DIR_RD)
> +				dma_sync_single_for_cpu(sfc->dev, dma_addr,
> +							trans, DMA_FROM_DEVICE);
> +
> +			dma_unmap_single(sfc->dev, dma_addr,
> +					 trans, dma_dir);
> +		}
> +
> +		if (ret) {
> +			dev_warn(nor->dev, "DMA read timeout\n");
> +			return ret;
> +		}
> +		/*
> +		 * If we use pre-allocated dma_buffer for read, we need to
> +		 * do a copy here.
> +		 */
> +		if (!dma_addr && (op_type =3D=3D SFC_CMD_DIR_RD))
> +			memcpy(buf + offset, sfc->buffer, trans);
> +	}
> +
> +	return len;
> +}
> +
> +static ssize_t rockchip_sfc_do_rd_wr(struct spi_nor *nor, loff_t from_to,
> +				     size_t len, u_char *buf, u32 op_type)
> +{
> +	struct rockchip_sfc_chip_priv *priv =3D nor->priv;
> +	struct rockchip_sfc *sfc =3D priv->sfc;
> +	int ret;
> +
> +	if (likely(sfc->use_dma))
> +		return rockchip_sfc_dma_transfer(nor, from_to, len,
> +						 buf, op_type);
> +
> +	/* Fall back to PIO mode if DMA isn't present */
> +	ret =3D rockchip_sfc_pio_transfer(nor, from_to, len,
> +					(u_char *)buf, op_type);
> +	if (ret) {
> +		if (op_type =3D=3D SFC_CMD_DIR_RD)
> +			dev_warn(nor->dev, "PIO read timeout\n");
> +		else
> +			dev_warn(nor->dev, "PIO write timeout\n");
> +		return ret;
> +	}
> +
> +	return len;
> +}
> +
> +static ssize_t rockchip_sfc_read(struct spi_nor *nor, loff_t from,
> +				 size_t len, u_char *read_buf)
> +{
> +	return rockchip_sfc_do_rd_wr(nor, from, len,
> +				     read_buf, SFC_CMD_DIR_RD);
> +}
> +
> +static ssize_t rockchip_sfc_write(struct spi_nor *nor, loff_t to,
> +				  size_t len, const u_char *write_buf)
> +{
> +	return rockchip_sfc_do_rd_wr(nor, to, len,
> +				     (u_char *)write_buf,
> +				     SFC_CMD_DIR_WR);
> +}
> +
> +static int rockchip_sfc_register(struct device_node *np,
> +				 struct rockchip_sfc *sfc)
> +{
> +	struct device *dev =3D sfc->dev;
> +	struct mtd_info *mtd;
> +	struct spi_nor *nor;
> +	int ret;
> +
> +	nor =3D &sfc->flash[sfc->num_chip].nor;
> +	nor->dev =3D dev;
> +	spi_nor_set_flash_node(nor, np);
> +
> +	ret =3D of_property_read_u8(np, "reg", &sfc->flash[sfc->num_chip].cs);
> +	if (ret) {
> +		dev_err(dev, "No reg property for %s\n",
> +			np->full_name);
> +		return ret;
> +	}
> +
> +	ret =3D of_property_read_u32(np, "spi-max-frequency",
> +			&sfc->flash[sfc->num_chip].clk_rate);
> +	if (ret) {
> +		dev_err(dev, "No spi-max-frequency property for %s\n",
> +			np->full_name);
> +		return ret;
> +	}
> +
> +	sfc->flash[sfc->num_chip].sfc =3D sfc;
> +	nor->priv =3D &(sfc->flash[sfc->num_chip]);
> +
> +	nor->prepare =3D rockchip_sfc_prep;
> +	nor->unprepare =3D rockchip_sfc_unprep;
> +	nor->read_reg =3D rockchip_sfc_read_reg;
> +	nor->write_reg =3D rockchip_sfc_write_reg;
> +	nor->read =3D rockchip_sfc_read;
> +	nor->write =3D rockchip_sfc_write;
> +	nor->erase =3D NULL;
> +	ret =3D spi_nor_scan(nor, NULL, SPI_NOR_QUAD);
> +	if (ret)
> +		return ret;
> +
> +	mtd =3D &(nor->mtd);
> +	mtd->name =3D np->name;
> +	ret =3D mtd_device_register(mtd, NULL, 0);
> +	if (ret)
> +		return ret;
> +
> +	sfc->num_chip++;
> +	return 0;
> +}
> +
> +static void rockchip_sfc_unregister_all(struct rockchip_sfc *sfc)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < sfc->num_chip; i++)
> +		mtd_device_unregister(&sfc->flash[i].nor.mtd);
> +}
> +
> +static int rockchip_sfc_register_all(struct rockchip_sfc *sfc)
> +{
> +	struct device *dev =3D sfc->dev;
> +	struct device_node *np;
> +	int ret;
> +
> +	for_each_available_child_of_node(dev->of_node, np) {
> +		ret =3D rockchip_sfc_register(np, sfc);
> +		if (ret)
> +			goto fail;
> +
> +		if (sfc->num_chip =3D=3D SFC_MAX_CHIPSELECT_NUM) {
> +			dev_warn(dev, "Exceeds the max cs limitation\n");
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +
> +fail:
> +	dev_err(dev, "Failed to register all chips\n");
> +	/* Unregister all the _registered_ nor flash */
> +	rockchip_sfc_unregister_all(sfc);
> +	return ret;
> +}
> +
> +static irqreturn_t rockchip_sfc_irq_handler(int irq, void *dev_id)
> +{
> +	struct rockchip_sfc *sfc =3D dev_id;
> +	u32 reg;
> +
> +	reg =3D readl_relaxed(sfc->regbase + SFC_RISR);
> +	dev_dbg(sfc->dev, "Get irq: 0x%x\n", reg);
> +
> +	/* Clear interrupt */
> +	writel_relaxed(reg, sfc->regbase + SFC_ICLR);
> +
> +	if (reg & SFC_RISR_TRAN_FINISH)
> +		complete(&sfc->cp);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int rockchip_sfc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct resource *res;
> +	struct rockchip_sfc *sfc;
> +	int ret;
> +
> +	sfc =3D devm_kzalloc(dev, sizeof(*sfc), GFP_KERNEL);
> +	if (!sfc)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, sfc);
> +	sfc->dev =3D dev;
> +
> +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	sfc->regbase =3D devm_ioremap_resource(dev, res);
> +	if (IS_ERR(sfc->regbase))
> +		return PTR_ERR(sfc->regbase);
> +
> +	sfc->clk =3D devm_clk_get(&pdev->dev, "sfc");
> +	if (IS_ERR(sfc->clk)) {
> +		dev_err(&pdev->dev, "Failed to get sfc interface clk\n");
> +		return PTR_ERR(sfc->clk);
> +	}
> +
> +	sfc->hclk =3D devm_clk_get(&pdev->dev, "hsfc");
> +	if (IS_ERR(sfc->hclk)) {
> +		dev_err(&pdev->dev, "Failed to get sfc ahp clk\n");
> +		return PTR_ERR(sfc->hclk);
> +	}
> +
> +	ret =3D dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
> +	if (ret) {
> +		dev_warn(dev, "Unable to set dma mask\n");
> +		return ret;
> +	}
> +
> +	sfc->buffer =3D dmam_alloc_coherent(dev, SFC_DMA_MAX_LEN,
> +			&sfc->dma_buffer, GFP_KERNEL);
> +	if (!sfc->buffer)
> +		return -ENOMEM;
> +
> +	mutex_init(&sfc->lock);
> +
> +	ret =3D clk_prepare_enable(sfc->hclk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to enable hclk\n");
> +		goto err_hclk;
> +	}
> +
> +	ret =3D clk_prepare_enable(sfc->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to enable clk\n");
> +		goto err_clk;
> +	}
> +
> +	sfc->use_dma =3D !of_property_read_bool(sfc->dev->of_node,
> +					      "rockchip,sfc-no-dma");
> +
> +	sfc->negative_edge =3D of_device_is_compatible(sfc->dev->of_node,
> +						     "rockchip,rv1108-sfc");
> +	/* Find the irq */
> +	ret =3D platform_get_irq(pdev, 0);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to get the irq\n");
> +		goto err_irq;
> +	}
> +
> +	ret =3D devm_request_irq(dev, ret, rockchip_sfc_irq_handler,
> +			       0, pdev->name, sfc);
> +	if (ret) {
> +		dev_err(dev, "Failed to request irq\n");
> +		goto err_irq;
> +	}
> +
> +	sfc->num_chip =3D 0;
> +	ret =3D rockchip_sfc_init(sfc);
> +	if (ret)
> +		goto err_irq;
> +
> +	pm_runtime_get_noresume(&pdev->dev);
> +	pm_runtime_set_active(&pdev->dev);
> +	pm_runtime_enable(&pdev->dev);
> +	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
> +	pm_runtime_use_autosuspend(&pdev->dev);
> +
> +	ret =3D rockchip_sfc_register_all(sfc);
> +	if (ret)
> +		goto err_register;
> +
> +	clk_disable_unprepare(sfc->clk);
> +	pm_runtime_put_autosuspend(&pdev->dev);
> +	return 0;
> +
> +err_register:
> +	pm_runtime_disable(&pdev->dev);
> +	pm_runtime_set_suspended(&pdev->dev);
> +	pm_runtime_put_noidle(&pdev->dev);
> +err_irq:
> +	clk_disable_unprepare(sfc->clk);
> +err_clk:
> +	clk_disable_unprepare(sfc->hclk);
> +err_hclk:
> +	mutex_destroy(&sfc->lock);
> +	return ret;
> +}
> +
> +static int rockchip_sfc_remove(struct platform_device *pdev)
> +{
> +	struct rockchip_sfc *sfc =3D platform_get_drvdata(pdev);
> +
> +	pm_runtime_get_sync(&pdev->dev);
> +	pm_runtime_disable(&pdev->dev);
> +	pm_runtime_put_noidle(&pdev->dev);
> +
> +	rockchip_sfc_unregister_all(sfc);
> +	mutex_destroy(&sfc->lock);
> +	clk_disable_unprepare(sfc->clk);
> +	clk_disable_unprepare(sfc->hclk);
> +	return 0;
> +}
> +
> +#ifdef CONFIG_PM
> +int rockchip_sfc_runtime_suspend(struct device *dev)
> +{
> +	struct rockchip_sfc *sfc =3D dev_get_drvdata(dev);
> +
> +	clk_disable_unprepare(sfc->hclk);
> +	return 0;
> +}
> +
> +int rockchip_sfc_runtime_resume(struct device *dev)
> +{
> +	struct rockchip_sfc *sfc =3D dev_get_drvdata(dev);
> +
> +	clk_prepare_enable(sfc->hclk);
> +	return rockchip_sfc_reset(sfc);
> +}
> +#endif /* CONFIG_PM */
> +
> +static const struct of_device_id rockchip_sfc_dt_ids[] =3D {
> +	{ .compatible =3D "rockchip,sfc"},
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, rockchip_sfc_dt_ids);
> +
> +static const struct dev_pm_ops rockchip_sfc_dev_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +				pm_runtime_force_resume)
> +	SET_RUNTIME_PM_OPS(rockchip_sfc_runtime_suspend,
> +			   rockchip_sfc_runtime_resume, NULL)
> +};
> +
> +static struct platform_driver rockchip_sfc_driver =3D {
> +	.driver =3D {
> +		.name	=3D "rockchip-sfc",
> +		.of_match_table =3D rockchip_sfc_dt_ids,
> +		.pm =3D &rockchip_sfc_dev_pm_ops,
> +	},
> +	.probe	=3D rockchip_sfc_probe,
> +	.remove	=3D rockchip_sfc_remove,
> +};
> +module_platform_driver(rockchip_sfc_driver);
> +
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("Rockchip Serial Flash Controller Driver");
> +MODULE_AUTHOR("Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>");
> =
