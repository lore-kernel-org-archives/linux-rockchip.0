From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 1/4] Makefile: Drop to handle rkspi image type
Date: Thu, 4 Jun 2020 11:13:57 +0800
Message-ID: <5b699185-38e4-4251-8013-cd4db066370e@rock-chips.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
 <20200601204213.466120-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200601204213.466120-2-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/6/2 上午4:42, Jagan Teki wrote:
> On rockchip platforms, SPI boot image creation is not
> straightforward like MMC boot image creation where former
> requires to specify tpl, spl in multimage format in mkimage,
> and later simply do a concatenate mkimaged-tpl with spl.
>
> On this note, let drop rkspi image type creation via kbuild
> and let inform via rockchip.rst
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   Makefile | 11 ++---------
>   1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 3851dd9fa0..db3b6b9991 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1438,22 +1438,15 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
>   
>   ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
>   
> -# rockchip image type
> -ifeq ($(CONFIG_SPL_SPI_LOAD),y)
> -ROCKCHIP_IMG_TYPE := rkspi
> -else
> -ROCKCHIP_IMG_TYPE := rksd
> -endif
> -
>   # TPL + SPL
>   ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
> -MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
> +MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T rksd
>   tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
>   	$(call if_changed,mkimage)
>   idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
>   	$(call if_changed,cat)
>   else
> -MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
> +MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T rksd
>   idbloader.img: spl/u-boot-spl.bin FORCE
>   	$(call if_changed,mkimage)
>   endif
