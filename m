From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/3] doc: rockchip: Document eMMC program steps
Date: Mon, 25 May 2020 10:53:16 +0800
Message-ID: <9d3497a8-10b6-8968-0a80-29bdfa3837cd@rock-chips.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
 <20200524173213.201123-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200524173213.201123-3-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/25 上午1:32, Jagan Teki wrote:
> Document eMMC partition creation and program steps for
> rockchip platforms.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   doc/board/rockchip/rockchip.rst | 32 ++++++++++++++++++++++++++++++--
>   1 file changed, 30 insertions(+), 2 deletions(-)
>
> diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
> index cd9c8d6dc4..1faa675aa8 100644
> --- a/doc/board/rockchip/rockchip.rst
> +++ b/doc/board/rockchip/rockchip.rst
> @@ -117,14 +117,42 @@ To write an image that boots from an SD card (assumed to be /dev/sda)::
>           sudo dd if=u-boot-rockchip.bin of=/dev/sda seek=64
>           sync
>   
> +eMMC
> +^^^^
> +
> +eMMC flash would probe on mmc0 in most of the rockchip platforms.
> +
> +Create GPT partition layout as defined in configurations::
> +
> +        mmc dev 0
> +        gpt write mmc 0 $partitions
> +
> +Connect the USB-OTG cable between host and target device.
> +
> +Launch fastboot at target::
> +
> +        fastboot 0
> +
> +Upon successful gadget connection,host show the USB device like::
> +
> +        lsusb
> +        Bus 001 Device 020: ID 2207:330c Fuzhou Rockchip Electronics Company RK3399 in Mask ROM mode
> +
> +Program the flash::
> +
> +        sudo fastboot -i 0x2207 flash loader1 idbloader.img
> +        sudo fastboot -i 0x2207 flash loader2 u-boot.itb
> +
> +Note: for rockchip 32-bit platforms the U-Boot proper image
> +is u-boot-dtb.img
> +
>   TODO
>   ----
>   
>   - Add rockchip idbloader image building
>   - Add rockchip TPL image building
>   - Document SPI flash boot
> -- Describe steps for eMMC flashing
>   - Add missing SoC's with it boards list
>   
>   .. Jagan Teki <jagan@amarulasolutions.com>
> -.. Fri Jan 10 00:08:40 IST 2020
> +.. Sunday 24 May 2020 10:08:41 PM IST
