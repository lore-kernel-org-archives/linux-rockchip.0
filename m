From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 4/4] rk3288: vyasa: Add console settings
Date: Thu, 30 Jan 2020 11:56:42 +0800
Message-ID: <6eb8f374-309c-86d1-1a16-90b6fc5a0d40@rock-chips.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
 <20200123141222.486-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200123141222.486-4-jagan@amarulasolutions.com>
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2020/1/23 下午10:12, Jagan Teki wrote:
> Add console settings like stdin, stdout and stderr as
> cros-ec-keyb and vidconsole respectively for Vyasa Rk3288
> board.
>
> This would certainly help to detect the attached video
> devices (like HDMI) and print the console message on display.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   include/configs/vyasa-rk3288.h | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/include/configs/vyasa-rk3288.h b/include/configs/vyasa-rk3288.h
> index 3574a3b5a5..e31dc77720 100644
> --- a/include/configs/vyasa-rk3288.h
> +++ b/include/configs/vyasa-rk3288.h
> @@ -8,7 +8,11 @@
>   #ifndef __CONFIG_H
>   #define __CONFIG_H
>   
> -#define ROCKCHIP_DEVICE_SETTINGS
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=serial,cros-ec-keyb\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
> +
>   #include <configs/rk3288_common.h>
>   
>   #undef BOOT_TARGET_DEVICES
