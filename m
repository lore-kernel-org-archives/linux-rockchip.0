From: Zanella Francesco <Francesco.Zanella-NG0QodRFT4YAvxtiuMwx3w@public.gmane.org>
Subject: spi-rockchip issue with receive only mode
Date: Mon, 25 May 2020 08:42:15 +0000
Message-ID: <DB8PR08MB503622ECEC5FD7F9847B9232E9B30@DB8PR08MB5036.eurprd08.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: it-IT
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Cc: Valotto Lorenzo <Lorenzo.Valotto-NG0QodRFT4YAvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi all,

We found an issue on RK SPI controller driver spi-rockchip.c on kernel 5.4.0 with a PX30 chip.
In our driver which use it, we use this mode

spi->bits_per_word = 8;
spi->mode = SPI_MODE_3;
status = spi_setup(spi);

The issue triggers when we use APIs spi_read() or spi_write_then_read() with tx_buf = NULL
In these situations rockchip_spi_config() sets the SPI controller in receive only mode:

if (xfer->rx_buf && xfer->tx_buf)
cr0 |= CR0_XFM_TR << CR0_XFM_OFFSET;
else if (xfer->rx_buf)
cr0 |= CR0_XFM_RO << CR0_XFM_OFFSET;

and here comes the problem: we see that in this mode the controller receives 1 Byte more than expected (8 more clock cycles on the oscilloscope). The big problem is when rockchip_spi_isr() is triggered, because it finalizes the transfer only when rx_left is 0, but in rockchip_spi_pio_reader() we have:

u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
u32 rx_left = rs->rx_left - words;

but words is rs->rx_left + 1 for the issue, so we have -1 which is wrapped around, causing a lot of troubles and however not = 0.

We temporary solved the issue adding a check:

u32 words = readl_relaxed(rs->regs + ROCKCHIP_SPI_RXFLR);
u32 rx_left;
if(words > rs->rx_left) // ADDED CHECK
     words = rs->rx_left;
rx_left = rs->rx_left - words;

Using simultaneus tx and rx it doesn't happen.

Another way to solve our specific problem (not sure if it solves the problem with other configurations) is in rockchip_spi_config (this also removes the extra clock cycles):

case 8:
     cr0 |= CR0_DFS_8BIT << CR0_DFS_OFFSET;
     cr1 = xfer->len - 2;
break;

Instead of

case 8:
     cr0 |= CR0_DFS_8BIT << CR0_DFS_OFFSET;
     cr1 = xfer->len - 1;
break;

But in the documentation, for example
http://rockchip.fr/RK3288%20TRM/rk3288-chapter-42-serial-peripheral-interface-(spi).pdf
it seems correct len - 1:

[quotation]
NDM
Number of Data Frames
When Transfer Mode is receive only, this register field sets the number of data frames to be continuously received by the SPI. The SPI continues to receive serial data until the number of data frames received is equal to this register value plus 1, which enables you to receive up to 64 KB of data in a continuous transfer.

Has anyone experienced this issue?

Please keep us on CC in this thread.

Thanks, best regards,

Francesco Zanella
