From: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v3 4/5] rockchip: Enable HDMI output on rk3399 board w/
 HDMI
Date: Thu, 2 Apr 2020 13:38:01 +0100
Message-ID: <CALeDE9Ph_iwaGd+z7bWOgBpHE9hDkg6G74rNeKxcbDgOrSVXRQ@mail.gmail.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200402114125.2501-5-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Anatolij Gustschin <agust-ynQEQJNshbs@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

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
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Tested-by: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Tested on the Rock960 rev 1.2, I'm guessing the firefly-rk3399 should
be able to be enabled in a similar manner, will try and test that as
well when I get a moment.

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
> +               "stdin=serial,usbkbd\0" \
> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
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
> +               "stdin=serial,usbkbd\0" \
> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>
>  #define CONFIG_SYS_MMC_ENV_DEV         1
> --
> 2.17.1
>
