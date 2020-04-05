From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 4/5] rockchip: Enable HDMI output on rk3399 board w/
 HDMI
Date: Sun, 5 Apr 2020 19:37:16 +0530
Message-ID: <20200405140716.GS8912@Mani-XPS-13-9360>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <20200402114125.2501-5-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Anatolij Gustschin <agust@denx.de>, Mark Kettenis <mark.kettenis@xs4all.nl>, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 02, 2020 at 05:11:24PM +0530, Jagan Teki wrote:
> Enable config options and console setting to respective
> rk3399 board for HDMI output.
> 
> Boards supported and tested on this patch are:
> - NanoPc T4
> - NanoPi M4
> - NanoPi Neo4
> - ROC-RK3399-PC
> - Rock960
> 
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

For Rock960,

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
> Changes for v3:
> - add rock960 hdmi out support
> 
>  configs/nanopc-t4-rk3399_defconfig   | 7 +++++++
>  configs/nanopi-m4-rk3399_defconfig   | 7 +++++++
>  configs/nanopi-neo4-rk3399_defconfig | 7 +++++++
>  configs/roc-pc-rk3399_defconfig      | 6 ++++++
>  configs/rock960-rk3399_defconfig     | 7 +++++++
>  include/configs/evb_rk3399.h         | 5 +++++
>  include/configs/rock960_rk3399.h     | 5 +++++
>  7 files changed, 44 insertions(+)
> 
> diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
> index 9ea9b11574..607a00dbf7 100644
> --- a/configs/nanopc-t4-rk3399_defconfig
> +++ b/configs/nanopc-t4-rk3399_defconfig
> @@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
> index ad0e808bf6..3fcb7ac2d7 100644
> --- a/configs/nanopi-m4-rk3399_defconfig
> +++ b/configs/nanopi-m4-rk3399_defconfig
> @@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
> index d038a8cab9..b9ea535e43 100644
> --- a/configs/nanopi-neo4-rk3399_defconfig
> +++ b/configs/nanopi-neo4-rk3399_defconfig
> @@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> index d540a17aeb..be76524cef 100644
> --- a/configs/roc-pc-rk3399_defconfig
> +++ b/configs/roc-pc-rk3399_defconfig
> @@ -59,3 +59,9 @@ CONFIG_USB_ETHER_SMSC95XX=y
>  CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index ba4226e173..c4e954731a 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -58,5 +58,12 @@ CONFIG_USB_ETHER_ASIX88179=y
>  CONFIG_USB_ETHER_MCS7830=y
>  CONFIG_USB_ETHER_RTL8152=y
>  CONFIG_USB_ETHER_SMSC95XX=y
> +CONFIG_USB_KEYBOARD=y
>  CONFIG_SPL_TINY_MEMSET=y
>  CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> index c0b0358893..2d3db22877 100644
> --- a/include/configs/evb_rk3399.h
> +++ b/include/configs/evb_rk3399.h
> @@ -6,6 +6,11 @@
>  #ifndef __EVB_RK3399_H
>  #define __EVB_RK3399_H
>  
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=serial,usbkbd\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>  
>  #if defined(CONFIG_ENV_IS_IN_MMC)
> diff --git a/include/configs/rock960_rk3399.h b/include/configs/rock960_rk3399.h
> index 746d24cbff..304ad2b7aa 100644
> --- a/include/configs/rock960_rk3399.h
> +++ b/include/configs/rock960_rk3399.h
> @@ -6,6 +6,11 @@
>  #ifndef __ROCK960_RK3399_H
>  #define __ROCK960_RK3399_H
>  
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=serial,usbkbd\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>  
>  #define CONFIG_SYS_MMC_ENV_DEV		1
> -- 
> 2.17.1
> 
