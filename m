From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 08/12] rockchip: evb_rk3288: Add console settings
Date: Wed, 22 Jul 2020 20:30:28 +0800
Message-ID: <56948666-f468-b323-7014-dcf524c96a38@rock-chips.com>
References: <20200721152443.37602-1-jagan@amarulasolutions.com>
 <20200721152443.37602-9-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200721152443.37602-9-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 2020/7/21 下午11:24, Jagan Teki wrote:
> From: Suniel Mahesh <sunil@amarulasolutions.com>
>
> Add console settings like stdin, stdout and stderr as
> usbkbd and vidconsole respectively for evb-rk3288 targets.
>
> This would certainly help to detect the attached video
> devices (like HDMI) and print the console messages on display.
>
> Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - update commit messaage
>
>   include/configs/evb_rk3288.h | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/include/configs/evb_rk3288.h b/include/configs/evb_rk3288.h
> index ddd7012c8f..e19fa90212 100644
> --- a/include/configs/evb_rk3288.h
> +++ b/include/configs/evb_rk3288.h
> @@ -6,7 +6,11 @@
>   #ifndef __CONFIG_H
>   #define __CONFIG_H
>   
> -#define ROCKCHIP_DEVICE_SETTINGS
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=serial,usbkbd\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
> +
>   #include <configs/rk3288_common.h>
>   
>   #define CONFIG_SYS_MMC_ENV_DEV 0
